import ts from 'typescript'

import { renameIcon } from '../icon-renames.js'
import type { Diagnostic, TransformResult } from '../types.js'

const styles: Record<string, string> = {
    bold: 'bold',
    boldduotone: 'bold-duotone',
    broken: 'broken',
    linear: 'linear',
    lineduotone: 'line-duotone',
    outline: 'outline',
}

interface Edit {
    end: number
    start: number
    text: string
}

function addIconSuffix(name: string): string {
    return name.endsWith('Icon') ? name : `${name}Icon`
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

function styleFromSpecifier(specifier: string): string | undefined {
    const segment = specifier.split('/').at(-1)?.replace(/[-_]/g, '').toLowerCase()
    return segment ? styles[segment] : undefined
}

function toKebabCase(name: string): string {
    return name
        .replace(/([a-z\d])([A-Z])/g, '$1-$2')
        .replace(/([A-Z])([A-Z][a-z])/g, '$1-$2')
        .replace(/(\D)(\d+)/g, '$1-$2')
        .toLowerCase()
}

function jsxTagEdits(sourceFile: ts.SourceFile, localName: string, targetName: string): Edit[] {
    if (localName === targetName) return []
    const edits: Edit[] = []
    const visit = (node: ts.Node) => {
        if (
            (ts.isJsxOpeningLikeElement(node) || ts.isJsxClosingElement(node)) &&
            ts.isIdentifier(node.tagName) &&
            node.tagName.text === localName
        ) {
            edits.push({
                start: node.tagName.getStart(sourceFile),
                end: node.tagName.getEnd(),
                text: targetName,
            })
        }
        ts.forEachChild(node, visit)
    }
    ts.forEachChild(sourceFile, visit)
    return edits
}

/** Migrates Solid v1 style and category imports. */
export function transformSolid(source: string, fileName = 'source.tsx'): TransformResult {
    const sourceFile = ts.createSourceFile(fileName, source, ts.ScriptTarget.Latest, true)
    const edits: Edit[] = []
    const diagnostics: Diagnostic[] = []

    for (const statement of sourceFile.statements) {
        if (!ts.isImportDeclaration(statement) || !ts.isStringLiteral(statement.moduleSpecifier))
            continue
        const moduleSpecifier = statement.moduleSpecifier.text
        if (!moduleSpecifier.startsWith('@solar-icons/solid')) continue
        const namedBindings = statement.importClause?.namedBindings
        if (!namedBindings || !ts.isNamedImports(namedBindings)) continue

        const directCategory = moduleSpecifier.match(
            /^@solar-icons\/solid\/category\/[^/]+\/([^/]+)$/
        )
        const style = directCategory?.[1]
            ? styleFromSpecifier(directCategory[1])
            : styleFromSpecifier(moduleSpecifier)
        if (directCategory && style) {
            const imports = namedBindings.elements.map(specifier => {
                const importedName = renameIcon((specifier.propertyName ?? specifier.name).text)
                const targetName = addIconSuffix(importedName)
                const localName = specifier.name.text
                return `import { ${localName === targetName ? targetName : `${targetName} as ${localName}`} } from '@solar-icons/solid/${style}/${toKebabCase(importedName)}'`
            })
            edits.push({
                start: statement.getStart(sourceFile),
                end: statement.getEnd(),
                text: imports.join('\n'),
            })
            continue
        }

        if (moduleSpecifier.startsWith('@solar-icons/solid/category/')) {
            const namespaceStyles = new Map<string, string>()
            for (const specifier of namedBindings.elements) {
                const imported = (specifier.propertyName ?? specifier.name).text
                const categoryStyle = styleFromSpecifier(imported)
                if (categoryStyle) namespaceStyles.set(specifier.name.text, categoryStyle)
            }
            const memberUses: Array<{
                iconName: string
                node: ts.PropertyAccessExpression
                style: string
            }> = []
            const visit = (node: ts.Node) => {
                if (
                    (ts.isJsxOpeningLikeElement(node) || ts.isJsxClosingElement(node)) &&
                    ts.isPropertyAccessExpression(node.tagName)
                ) {
                    const tagName = node.tagName
                    const object = tagName.expression
                    if (ts.isIdentifier(object)) {
                        const categoryStyle = namespaceStyles.get(object.text)
                        if (categoryStyle) {
                            memberUses.push({
                                iconName: renameIcon(tagName.name.text),
                                node: tagName,
                                style: categoryStyle,
                            })
                        }
                    }
                }
                ts.forEachChild(node, visit)
            }
            ts.forEachChild(sourceFile, visit)
            if (memberUses.length === 0) {
                diagnostics.push({
                    code: 'SOLID_CATEGORY_IMPORT_REQUIRES_MANUAL_MIGRATION',
                    file: fileName,
                    ...diagnosticLocation(sourceFile, statement.moduleSpecifier),
                    message:
                        'Skipped a Solid category import because no deterministic JSX members were found.',
                })
                continue
            }
            const seen = new Set<string>()
            const imports: string[] = []
            for (const use of memberUses) {
                const targetName = addIconSuffix(use.iconName)
                const key = `${use.style}:${use.iconName}`
                if (!seen.has(key)) {
                    seen.add(key)
                    imports.push(
                        `import { ${targetName} } from '@solar-icons/solid/${use.style}/${toKebabCase(use.iconName)}'`
                    )
                }
                edits.push({
                    start: use.node.getStart(sourceFile),
                    end: use.node.getEnd(),
                    text: targetName,
                })
            }
            edits.push({
                start: statement.getStart(sourceFile),
                end: statement.getEnd(),
                text: imports.join('\n'),
            })
            continue
        }

        if (!style) continue
        const imports: string[] = []
        for (const specifier of namedBindings.elements) {
            const importedName = renameIcon((specifier.propertyName ?? specifier.name).text)
            const targetName = addIconSuffix(importedName)
            const localName = specifier.name.text
            const outputLocalName = specifier.propertyName ? localName : targetName
            imports.push(
                `import { ${outputLocalName === targetName ? targetName : `${targetName} as ${outputLocalName}`} } from '@solar-icons/solid/${style}'`
            )
            if (!specifier.propertyName)
                edits.push(...jsxTagEdits(sourceFile, localName, targetName))
        }
        edits.push({
            start: statement.getStart(sourceFile),
            end: statement.getEnd(),
            text: imports.join('\n'),
        })
    }

    const code = applyEdits(source, edits)
    return { code, changed: code !== source, diagnostics }
}
