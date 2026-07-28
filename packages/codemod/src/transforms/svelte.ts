import { parse } from 'svelte/compiler'
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

function sourceLocation(source: string, offset: number) {
    const before = source.slice(0, offset)
    return { column: before.length - before.lastIndexOf('\n'), line: before.split('\n').length }
}

function escapeRegex(value: string): string {
    return value.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')
}

function styleFromSegment(segment: string): string | undefined {
    return styles[segment.replace(/[-_]/g, '').toLowerCase()]
}

function componentEdits(source: string, localName: string, targetName: string): Edit[] {
    if (localName === targetName) return []
    const pattern = new RegExp(`<(/?)${escapeRegex(localName)}(?=[\\s/>])`, 'g')
    return [...source.matchAll(pattern)].map(match => {
        const start = match.index + 1 + match[1]!.length
        return { start, end: start + localName.length, text: targetName }
    })
}

function mirroredDiagnostics(source: string, localName: string, fileName: string): Diagnostic[] {
    const pattern = new RegExp(
        `<${escapeRegex(localName)}(?=[\\s/>])[^>]*\\smirrored(?:\\s|=|/|>)`,
        'g'
    )
    return [...source.matchAll(pattern)].map(match => {
        const mirroredOffset = match.index + match[0].indexOf('mirrored')
        return {
            code: 'SVELTE_MIRRORED_REQUIRES_MANUAL_MIGRATION',
            file: fileName,
            ...sourceLocation(source, mirroredOffset),
            message: `${localName} uses the removed mirrored prop. Replace it with CSS transform: scaleX(-1).`,
            severity: 'warning' as const,
        }
    })
}

function categoryDiagnosticsInUnparsedSource(source: string, fileName: string): Diagnostic[] {
    const importPattern = /from\s+['"](@solar-icons\/svelte\/category\/[^'"]+)['"]/g
    return [...source.matchAll(importPattern)].map(match => {
        const moduleSpecifier = match[1]!
        const offset = match.index + match[0].indexOf(moduleSpecifier)
        return {
            code: 'SVELTE_CATEGORY_IMPORT_REQUIRES_MANUAL_MIGRATION',
            file: fileName,
            ...sourceLocation(source, offset),
            message:
                'Skipped a Svelte category import. Replace each required icon with a v2 single-icon import.',
        }
    })
}

/** Migrates Svelte v1 style and direct icon imports. */
export function transformSvelte(source: string, fileName = 'source.svelte'): TransformResult {
    if (!fileName.endsWith('.svelte')) return { changed: false, code: source, diagnostics: [] }
    try {
        parse(source)
    } catch {
        const categoryDiagnostics = categoryDiagnosticsInUnparsedSource(source, fileName)
        return {
            changed: false,
            code: source,
            diagnostics:
                categoryDiagnostics.length > 0
                    ? categoryDiagnostics
                    : [
                          {
                              code: 'SVELTE_PARSE_ERROR',
                              file: fileName,
                              message:
                                  'Skipped this Svelte component because it could not be parsed.',
                          },
                      ],
        }
    }

    const edits: Edit[] = []
    const diagnostics: Diagnostic[] = []
    const scriptPattern = /<script(?:\s[^>]*)?>([\s\S]*?)<\/script>/g
    for (const scriptMatch of source.matchAll(scriptPattern)) {
        const scriptSource = scriptMatch[1]!
        const scriptOffset = scriptMatch.index + scriptMatch[0].indexOf(scriptSource)
        const sourceFile = ts.createSourceFile(fileName, scriptSource, ts.ScriptTarget.Latest, true)
        for (const statement of sourceFile.statements) {
            if (
                !ts.isImportDeclaration(statement) ||
                !ts.isStringLiteral(statement.moduleSpecifier)
            )
                continue
            const moduleSpecifier = statement.moduleSpecifier.text
            if (!moduleSpecifier.startsWith('@solar-icons/svelte')) continue

            if (moduleSpecifier.startsWith('@solar-icons/svelte/category/')) {
                const directMatch = moduleSpecifier.match(
                    /^@solar-icons\/svelte\/category\/[^/]+\/([^/]+)\/([^/]+)\.svelte$/
                )
                const defaultImport = statement.importClause?.name
                const style = directMatch?.[1] ? styleFromSegment(directMatch[1]) : undefined
                const iconName = directMatch?.[2] ? renameIcon(directMatch[2]) : undefined
                if (directMatch && defaultImport && style && iconName) {
                    const targetName = addIconSuffix(iconName)
                    edits.push({
                        start: scriptOffset + statement.getStart(sourceFile),
                        end: scriptOffset + statement.getEnd(),
                        text: `import ${targetName} from '@solar-icons/svelte/${style}/${toKebabCase(iconName)}'`,
                    })
                    edits.push(...componentEdits(source, defaultImport.text, targetName))
                    diagnostics.push(...mirroredDiagnostics(source, defaultImport.text, fileName))
                } else {
                    diagnostics.push({
                        code: 'SVELTE_CATEGORY_IMPORT_REQUIRES_MANUAL_MIGRATION',
                        file: fileName,
                        ...sourceLocation(
                            source,
                            scriptOffset + statement.moduleSpecifier.getStart(sourceFile)
                        ),
                        message:
                            'Skipped a Svelte category import. Replace each required icon with a v2 single-icon import.',
                    })
                }
                continue
            }

            const styleMatch = moduleSpecifier.match(
                /^@solar-icons\/svelte\/(Bold|BoldDuotone|Broken|Linear|LineDuotone|Outline)$/
            )
            const namedBindings = statement.importClause?.namedBindings
            if (!styleMatch || !namedBindings || !ts.isNamedImports(namedBindings)) continue
            const style = styleFromSegment(styleMatch[1]!)
            if (!style) continue

            const imports: string[] = []
            for (const specifier of namedBindings.elements) {
                const importedName = renameIcon((specifier.propertyName ?? specifier.name).text)
                const targetName = addIconSuffix(importedName)
                const localName = specifier.name.text
                const outputLocalName = specifier.propertyName ? localName : targetName
                imports.push(
                    `import { ${outputLocalName === targetName ? targetName : `${targetName} as ${outputLocalName}`} } from '@solar-icons/svelte/${style}'`
                )
                if (!specifier.propertyName)
                    edits.push(...componentEdits(source, localName, targetName))
                diagnostics.push(...mirroredDiagnostics(source, localName, fileName))
            }
            edits.push({
                start: scriptOffset + statement.getStart(sourceFile),
                end: scriptOffset + statement.getEnd(),
                text: imports.join('\n'),
            })
        }
    }

    const code = applyEdits(source, edits)
    return { code, changed: code !== source, diagnostics }
}

function toKebabCase(name: string): string {
    return name
        .replace(/([a-z\d])([A-Z])/g, '$1-$2')
        .replace(/([A-Z])([A-Z][a-z])/g, '$1-$2')
        .replace(/(\D)(\d+)/g, '$1-$2')
        .toLowerCase()
}
