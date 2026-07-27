import ts from 'typescript'

import { renameIcon } from '../icon-renames.js'
import type { TransformResult } from '../types.js'

const styles: Record<string, string> = {
    bold: 'bold',
    boldduotone: 'bold-duotone',
    broken: 'broken',
    linear: 'linear',
    lineduotone: 'line-duotone',
    outline: 'outline',
}
const styleSuffixes = ['BoldDuotone', 'LineDuotone', 'Outline', 'Broken', 'Linear', 'Bold']

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

function toKebabCase(name: string): string {
    return name
        .replace(/([a-z\d])([A-Z])/g, '$1-$2')
        .replace(/([A-Z])([A-Z][a-z])/g, '$1-$2')
        .replace(/(\D)(\d+)/g, '$1-$2')
        .toLowerCase()
}

function rootExportName(name: string): string {
    const suffix = styleSuffixes.find(candidate => name.endsWith(candidate))
    return addIconSuffix(
        suffix ? `${renameIcon(name.slice(0, -suffix.length))}${suffix}` : renameIcon(name)
    )
}

function binding(specifier: ts.ImportSpecifier, targetName: string): string {
    return specifier.name.text === targetName
        ? targetName
        : `${targetName} as ${specifier.name.text}`
}

function applyEdits(source: string, edits: Edit[]): string {
    return edits
        .sort((a, b) => b.start - a.start)
        .reduce(
            (result, edit) => result.slice(0, edit.start) + edit.text + result.slice(edit.end),
            source
        )
}

/** Migrates the v1 React Native root, style, and category imports. */
export function transformReactNative(source: string, fileName = 'source.tsx'): TransformResult {
    const sourceFile = ts.createSourceFile(fileName, source, ts.ScriptTarget.Latest, true)
    const edits: Edit[] = []

    for (const statement of sourceFile.statements) {
        if (!ts.isImportDeclaration(statement) || !ts.isStringLiteral(statement.moduleSpecifier))
            continue
        const moduleSpecifier = statement.moduleSpecifier.text
        if (!moduleSpecifier.startsWith('@solar-icons/react-native')) continue
        const namedBindings = statement.importClause?.namedBindings
        if (!namedBindings || !ts.isNamedImports(namedBindings)) continue

        const remainder = moduleSpecifier.slice('@solar-icons/react-native'.length)
        if (!remainder) {
            for (const specifier of namedBindings.elements) {
                edits.push({
                    start: specifier.getStart(sourceFile),
                    end: specifier.getEnd(),
                    text: binding(
                        specifier,
                        rootExportName((specifier.propertyName ?? specifier.name).text)
                    ),
                })
            }
            continue
        }

        const categoryMatch = remainder.match(/^\/category\/[^/]+\/([^/]+)$/)
        const style = categoryMatch?.[1]
            ? styleFromSpecifier(categoryMatch[1])
            : styleFromSpecifier(moduleSpecifier)
        if (!style) continue

        if (categoryMatch) {
            const imports = namedBindings.elements.map(specifier => {
                const iconName = renameIcon((specifier.propertyName ?? specifier.name).text)
                return `import { ${binding(specifier, addIconSuffix(iconName))} } from '@solar-icons/react-native/${style}/${toKebabCase(iconName)}'`
            })
            edits.push({
                start: statement.getStart(sourceFile),
                end: statement.getEnd(),
                text: imports.join('\n'),
            })
            continue
        }

        edits.push({
            start: statement.moduleSpecifier.getStart(sourceFile) + 1,
            end: statement.moduleSpecifier.getEnd() - 1,
            text: `@solar-icons/react-native/${style}`,
        })
        for (const specifier of namedBindings.elements) {
            edits.push({
                start: specifier.getStart(sourceFile),
                end: specifier.getEnd(),
                text: binding(
                    specifier,
                    addIconSuffix(renameIcon((specifier.propertyName ?? specifier.name).text))
                ),
            })
        }
    }

    const code = applyEdits(source, edits)
    return { code, changed: code !== source, diagnostics: [] }
}
