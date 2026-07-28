import ts from 'typescript'

import { renameIcon } from '../icon-renames.js'
import { renameImportedBindingReferences } from '../import-bindings.js'
import type { Diagnostic, ReactV1Mode, TransformResult } from '../types.js'

const weightToStyle: Record<string, string> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}

interface ImportUse {
    dynamic: boolean
    dynamicWeightAttributes: ts.JsxAttribute[]
    mirroredAttributes: ts.JsxAttribute[]
    styles: Set<string>
    tagNames: ts.Identifier[]
    weightAttributes: ts.JsxAttribute[]
}

interface Edit {
    end: number
    start: number
    text: string
}

function addIconSuffix(name: string): string {
    return name.endsWith('Icon') ? name : `${name}Icon`
}

function getWeightAttribute(element: ts.JsxOpeningLikeElement): ts.JsxAttribute | undefined {
    return element.attributes.properties.find(
        attribute => ts.isJsxAttribute(attribute) && attribute.name.getText() === 'weight'
    ) as ts.JsxAttribute | undefined
}

function getStaticWeight(attribute: ts.JsxAttribute | undefined): string | undefined {
    if (!attribute) return 'Linear'
    const initializer = attribute.initializer
    if (initializer && ts.isStringLiteral(initializer)) return initializer.text
    if (initializer && ts.isJsxExpression(initializer)) {
        const expression = initializer.expression
        if (expression && ts.isStringLiteral(expression)) return expression.text
    }
    return undefined
}

function applyEdits(source: string, edits: Edit[]): string {
    return edits
        .sort((left, right) => right.start - left.start)
        .reduce(
            (result, edit) => result.slice(0, edit.start) + edit.text + result.slice(edit.end),
            source
        )
}

function diagnosticLocation(sourceFile: ts.SourceFile, node: ts.Node) {
    const location = sourceFile.getLineAndCharacterOfPosition(node.getStart(sourceFile))
    return { column: location.character + 1, line: location.line + 1 }
}

function removeGeneratedV2Aliases(source: string, sourceFile: ts.SourceFile): Edit[] {
    const edits: Edit[] = []
    const bindingRenames = new Map<string, string>()

    for (const statement of sourceFile.statements) {
        if (!ts.isImportDeclaration(statement) || !ts.isStringLiteral(statement.moduleSpecifier))
            continue
        if (!statement.moduleSpecifier.text.startsWith('@solar-icons/react')) continue
        const bindings = statement.importClause?.namedBindings
        if (!bindings || !ts.isNamedImports(bindings)) continue

        for (const specifier of bindings.elements) {
            if (!specifier.propertyName) continue
            const importedName = specifier.propertyName.text
            const localName = specifier.name.text
            const baseName = importedName.slice(0, -4)
            if (
                !importedName.endsWith('Icon') ||
                (localName !== baseName && renameIcon(localName) !== baseName)
            )
                continue

            edits.push({
                end: specifier.getEnd(),
                start: specifier.getStart(sourceFile),
                text: importedName,
            })
            bindingRenames.set(localName, importedName)
        }
    }

    return [
        ...edits,
        ...renameImportedBindingReferences(source, sourceFile.fileName, bindingRenames),
    ]
}

/**
 * Migrates React v1 imports when every imported icon has a determinable style.
 * Dynamic or mixed weight usage moves to the v2 dynamic entry point.
 */
export function transformReact(
    source: string,
    fileName = 'source.tsx',
    mode: ReactV1Mode = 'static'
): TransformResult {
    const sourceFile = ts.createSourceFile(fileName, source, ts.ScriptTarget.Latest, true)
    const diagnostics: Diagnostic[] = []
    const edits: Edit[] = []
    const bindingRenames = new Map<string, string>()

    for (const statement of sourceFile.statements) {
        if (!ts.isImportDeclaration(statement) || !ts.isStringLiteral(statement.moduleSpecifier)) {
            continue
        }
        const moduleSpecifier = statement.moduleSpecifier.text
        if (moduleSpecifier === '@solar-icons/react/category') {
            diagnostics.push({
                code: 'REACT_CATEGORY_IMPORT_REQUIRES_MANUAL_MIGRATION',
                ...diagnosticLocation(sourceFile, statement.moduleSpecifier),
                message:
                    'Skipped a React category import. Replace each category member with an individual v2 icon import.',
                file: fileName,
            })
            continue
        }
        if (
            moduleSpecifier !== '@solar-icons/react' &&
            moduleSpecifier !== '@solar-icons/react/ssr'
        )
            continue
        const namedBindings = statement.importClause?.namedBindings
        const hasDefaultImport = Boolean(statement.importClause?.name)
        if (hasDefaultImport) {
            diagnostics.push({
                code: 'UNSUPPORTED_REACT_IMPORT',
                ...diagnosticLocation(sourceFile, statement.moduleSpecifier),
                message:
                    'Skipped a default React namespace import. Convert it to individual icon imports manually.',
                file: fileName,
            })
        }
        if (!namedBindings || !ts.isNamedImports(namedBindings)) {
            if (!hasDefaultImport) {
                diagnostics.push({
                    code: 'UNSUPPORTED_REACT_IMPORT',
                    ...diagnosticLocation(sourceFile, statement.moduleSpecifier),
                    message:
                        'Skipped a default or namespace React import. Convert it to individual icon imports manually.',
                    file: fileName,
                })
            }
            continue
        }

        const legacyContextImports = namedBindings.elements.filter(specifier => {
            const name = (specifier.propertyName ?? specifier.name).text
            return name === 'SolarProvider' || name === 'useSolar'
        })
        if (legacyContextImports.length > 0) {
            diagnostics.push({
                code: 'REACT_PROVIDER_REQUIRES_MANUAL_MIGRATION',
                ...diagnosticLocation(sourceFile, statement.moduleSpecifier),
                message:
                    'Skipped a legacy SolarProvider or useSolar import. Its v1 context API and weight inheritance require manual migration.',
                file: fileName,
            })
            continue
        }

        // Imports already using the v2 Icon suffix can have just been emitted by
        // the react-perf transform in the same migration run.
        if (
            namedBindings.elements.every(specifier =>
                (specifier.propertyName ?? specifier.name).text.endsWith('Icon')
            )
        ) {
            continue
        }

        const uses = new Map<string, ImportUse>()
        for (const specifier of namedBindings.elements) {
            uses.set(specifier.name.text, {
                dynamic: false,
                dynamicWeightAttributes: [],
                mirroredAttributes: [],
                styles: new Set(),
                tagNames: [],
                weightAttributes: [],
            })
        }

        const visit = (node: ts.Node) => {
            if (ts.isJsxOpeningLikeElement(node) && ts.isIdentifier(node.tagName)) {
                const usage = uses.get(node.tagName.text)
                if (usage) {
                    usage.tagNames.push(node.tagName)
                    const weightAttribute = getWeightAttribute(node)
                    const mirroredAttribute = node.attributes.properties.find(
                        attribute =>
                            ts.isJsxAttribute(attribute) && attribute.name.getText() === 'mirrored'
                    ) as ts.JsxAttribute | undefined
                    if (mirroredAttribute) usage.mirroredAttributes.push(mirroredAttribute)
                    const weight = getStaticWeight(weightAttribute)
                    const style = weight && weightToStyle[weight]
                    if (!style) {
                        usage.dynamic = true
                        if (weightAttribute) usage.dynamicWeightAttributes.push(weightAttribute)
                    } else {
                        usage.styles.add(style)
                        if (weightAttribute) usage.weightAttributes.push(weightAttribute)
                    }
                }
            }
            if (ts.isJsxClosingElement(node) && ts.isIdentifier(node.tagName)) {
                uses.get(node.tagName.text)?.tagNames.push(node.tagName)
            }
            ts.forEachChild(node, visit)
        }
        ts.forEachChild(sourceFile, visit)

        const unused = [...uses.entries()].filter(
            ([, usage]) => usage.styles.size === 0 && !usage.dynamic
        )
        if (unused.length > 0) {
            diagnostics.push({
                code: 'REACT_IMPORT_REQUIRES_REVIEW',
                ...diagnosticLocation(sourceFile, statement.moduleSpecifier),
                message: `Skipped React import because ${unused.map(([name]) => name).join(', ')} is not used as JSX in this file.`,
                file: fileName,
            })
            continue
        }

        const imports: string[] = []
        for (const specifier of namedBindings.elements) {
            const localName = specifier.name.text
            const importedName = (specifier.propertyName ?? specifier.name).text
            const usage = uses.get(localName)!
            const style =
                mode === 'dynamic' || usage.dynamic || usage.styles.size !== 1
                    ? 'dynamic'
                    : [...usage.styles][0]
            const targetName = addIconSuffix(renameIcon(importedName))
            const hasExplicitAlias = Boolean(specifier.propertyName)
            const outputLocalName = hasExplicitAlias ? localName : targetName
            const binding =
                outputLocalName === targetName ? targetName : `${targetName} as ${outputLocalName}`
            imports.push(`import { ${binding} } from '@solar-icons/react/${style}'`)

            if (!hasExplicitAlias && localName !== targetName)
                bindingRenames.set(localName, targetName)

            if (mode === 'static' && usage.dynamicWeightAttributes.length > 0) {
                const attribute = usage.dynamicWeightAttributes[0]
                if (!attribute) continue
                diagnostics.push({
                    code: 'REACT_DYNAMIC_WEIGHT_FALLBACK',
                    file: fileName,
                    ...diagnosticLocation(sourceFile, attribute),
                    message: `${localName} has a dynamic weight, so it was migrated to @solar-icons/react/dynamic instead of a static style path.`,
                    severity: 'warning',
                })
            }

            for (const attribute of usage.mirroredAttributes) {
                diagnostics.push({
                    code: 'REACT_MIRRORED_REQUIRES_MANUAL_MIGRATION',
                    file: fileName,
                    ...diagnosticLocation(sourceFile, attribute),
                    message: `${localName} uses the removed mirrored prop. Replace it with style={{ transform: 'scaleX(-1)' }}.`,
                    severity: 'warning',
                })
            }

            if (style !== 'dynamic') {
                for (const attribute of usage.weightAttributes) {
                    const attributeStart = attribute.getStart(sourceFile)
                    edits.push({
                        start: /\s/.test(source[attributeStart - 1] ?? '')
                            ? attributeStart - 1
                            : attributeStart,
                        end: attribute.getEnd(),
                        text: '',
                    })
                }
            }
        }

        edits.push({
            start: statement.getStart(sourceFile),
            end: statement.getEnd(),
            text: imports.join('\n'),
        })
    }

    edits.push(...renameImportedBindingReferences(source, fileName, bindingRenames))
    edits.push(...removeGeneratedV2Aliases(source, sourceFile))

    const code = applyEdits(source, edits)
    return { code, changed: code !== source, diagnostics }
}
