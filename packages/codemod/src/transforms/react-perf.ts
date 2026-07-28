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

const supportedReactPerfTypeExports = new Set(['Icon', 'IconProps'])

interface Edit {
    end: number
    start: number
    text: string
}

function addIconSuffix(name: string): string {
    return name.endsWith('Icon') ? name : `${name}Icon`
}

function styleFromSpecifier(specifier: string): string | undefined {
    const segment = specifier.split('/').at(-1)?.replace(/[-_]/g, '').toLowerCase()
    return segment ? styles[segment] : undefined
}

function iconNameForStyle(name: string, style: string): string {
    const styleSuffix = Object.entries(styles).find(([, value]) => value === style)?.[0]
    const withoutStyle =
        styleSuffix && name.toLowerCase().endsWith(styleSuffix)
            ? name.slice(0, -styleSuffix.length)
            : name
    return addIconSuffix(renameIcon(withoutStyle))
}

function iconNameForRoot(name: string): string {
    const suffixes = ['BoldDuotone', 'LineDuotone', 'Outline', 'Broken', 'Linear', 'Bold']
    const suffix = suffixes.find(candidate => name.endsWith(candidate))
    return addIconSuffix(
        suffix ? `${renameIcon(name.slice(0, -suffix.length))}${suffix}` : renameIcon(name)
    )
}

function importedName(specifier: ts.ImportSpecifier): string {
    return (specifier.propertyName ?? specifier.name).text
}

function replacementForSpecifier(specifier: ts.ImportSpecifier, targetName: string): string {
    const localName = specifier.name.text
    return localName === targetName ? targetName : `${targetName} as ${localName}`
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

/** Migrates deterministic `@solar-icons/react-perf` imports without changing local bindings. */
export function transformReactPerf(source: string, fileName = 'source.tsx'): TransformResult {
    const sourceFile = ts.createSourceFile(fileName, source, ts.ScriptTarget.Latest, true)
    const edits: Edit[] = []
    const diagnostics: Diagnostic[] = []

    for (const statement of sourceFile.statements) {
        if (!ts.isImportDeclaration(statement) || !ts.isStringLiteral(statement.moduleSpecifier))
            continue

        const moduleSpecifier = statement.moduleSpecifier.text
        if (!moduleSpecifier.startsWith('@solar-icons/react-perf')) continue

        const remainder = moduleSpecifier.slice('@solar-icons/react-perf'.length)
        const style = remainder ? styleFromSpecifier(moduleSpecifier) : undefined

        if (remainder === '/lib/types') {
            const namedBindings = statement.importClause?.namedBindings
            if (!namedBindings || !ts.isNamedImports(namedBindings)) {
                diagnostics.push({
                    code: 'UNSUPPORTED_REACT_PERF_IMPORT',
                    ...diagnosticLocation(sourceFile, statement.moduleSpecifier),
                    message: `Skipped non-named import from ${moduleSpecifier}.`,
                    file: fileName,
                })
                continue
            }

            const unsupportedType = namedBindings.elements.find(
                specifier => !supportedReactPerfTypeExports.has(importedName(specifier))
            )
            if (unsupportedType) {
                diagnostics.push({
                    code: 'UNSUPPORTED_REACT_PERF_TYPE_EXPORT',
                    ...diagnosticLocation(sourceFile, unsupportedType),
                    message: `Skipped unsupported react-perf type export: ${importedName(unsupportedType)}.`,
                    file: fileName,
                })
                continue
            }

            edits.push({
                start: statement.moduleSpecifier.getStart(sourceFile) + 1,
                end: statement.moduleSpecifier.getEnd() - 1,
                text: '@solar-icons/react/lib/index',
            })
            continue
        }

        if (remainder && !style) {
            diagnostics.push({
                code: 'UNSUPPORTED_REACT_PERF_SUBPATH',
                ...diagnosticLocation(sourceFile, statement.moduleSpecifier),
                message: `Skipped unsupported react-perf subpath: ${moduleSpecifier}.`,
                file: fileName,
            })
            continue
        }

        const namedBindings = statement.importClause?.namedBindings
        if (!namedBindings || !ts.isNamedImports(namedBindings)) {
            diagnostics.push({
                code: 'UNSUPPORTED_REACT_PERF_IMPORT',
                ...diagnosticLocation(sourceFile, statement.moduleSpecifier),
                message: `Skipped non-named import from ${moduleSpecifier}.`,
                file: fileName,
            })
            continue
        }

        edits.push({
            start: statement.moduleSpecifier.getStart(sourceFile) + 1,
            end: statement.moduleSpecifier.getEnd() - 1,
            text: style ? `@solar-icons/react/${style}` : '@solar-icons/react',
        })

        for (const specifier of namedBindings.elements) {
            const sourceName = importedName(specifier)
            const targetName = style
                ? iconNameForStyle(sourceName, style)
                : iconNameForRoot(sourceName)
            edits.push({
                start: specifier.getStart(sourceFile),
                end: specifier.getEnd(),
                text: replacementForSpecifier(specifier, targetName),
            })
        }

        const importedNames = new Set(namedBindings.elements.map(specifier => specifier.name.text))
        const visit = (node: ts.Node) => {
            if (ts.isJsxOpeningLikeElement(node) && ts.isIdentifier(node.tagName)) {
                if (importedNames.has(node.tagName.text)) {
                    for (const attribute of node.attributes.properties) {
                        if (
                            !ts.isJsxAttribute(attribute) ||
                            attribute.name.getText() !== 'mirrored'
                        )
                            continue
                        diagnostics.push({
                            code: 'REACT_MIRRORED_REQUIRES_MANUAL_MIGRATION',
                            file: fileName,
                            ...diagnosticLocation(sourceFile, attribute),
                            message: `${node.tagName.text} uses the removed mirrored prop. Replace it with style={{ transform: 'scaleX(-1)' }}.`,
                            severity: 'warning',
                        })
                    }
                }
            }
            ts.forEachChild(node, visit)
        }
        ts.forEachChild(sourceFile, visit)
    }

    const visitPackageReferences = (node: ts.Node) => {
        if (
            ts.isStringLiteral(node) &&
            node.text === '@solar-icons/react-perf' &&
            !ts.isImportDeclaration(node.parent)
        ) {
            edits.push({
                start: node.getStart(sourceFile) + 1,
                end: node.getEnd() - 1,
                text: '@solar-icons/react',
            })
        }
        ts.forEachChild(node, visitPackageReferences)
    }
    ts.forEachChild(sourceFile, visitPackageReferences)

    const code = applyEdits(source, edits)
    return { code, changed: code !== source, diagnostics }
}
