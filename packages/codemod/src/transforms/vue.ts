import { parse } from '@vue/compiler-sfc'
import ts from 'typescript'

import { renameIcon } from '../icon-renames.js'
import type { Diagnostic, ReactV1Mode, TransformResult } from '../types.js'

const weightToStyle: Record<string, string> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}

interface Edit {
    end: number
    start: number
    text: string
}

interface TemplateUse {
    dynamic: boolean
    mirroredOffsets: number[]
    styles: Set<string>
    tagEdits: Edit[]
    weightEdits: Edit[]
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

function diagnosticLocation(source: string, offset: number) {
    const before = source.slice(0, offset)
    const line = before.split('\n').length
    const column = before.length - before.lastIndexOf('\n')
    return { column, line }
}

function escapeRegex(value: string): string {
    return value.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')
}

function templateUse(template: string, offset: number, localName: string): TemplateUse {
    const result: TemplateUse = {
        dynamic: false,
        mirroredOffsets: [],
        styles: new Set(),
        tagEdits: [],
        weightEdits: [],
    }
    const escapedName = escapeRegex(localName)
    const tagPattern = new RegExp(`<(/?)${escapedName}(?=[\\s/>])([^>]*)>`, 'g')
    for (const match of template.matchAll(tagPattern)) {
        const matchOffset = offset + match.index
        const slash = match[1] ?? ''
        const attributes = match[2] ?? ''
        result.tagEdits.push({
            start: matchOffset + 1 + slash.length,
            end: matchOffset + 1 + slash.length + localName.length,
            text: '',
        })
        if (slash) continue

        const weightMatch = /\s(?:weight|:weight)\s*=\s*("[^"]*"|'[^']*')/.exec(attributes)
        if (!weightMatch) {
            result.styles.add('linear')
        } else {
            const rawValue = weightMatch[1]?.slice(1, -1)
            const staticWeight = rawValue?.replace(/^['"]|['"]$/g, '')
            const style = staticWeight && weightToStyle[staticWeight]
            if (style) {
                result.styles.add(style)
                const attributeOffset = matchOffset + 1 + localName.length + weightMatch.index
                result.weightEdits.push({
                    start: attributeOffset,
                    end: attributeOffset + weightMatch[0].length,
                    text: '',
                })
            } else {
                result.dynamic = true
            }
        }

        const mirroredMatch = /\smirrored(?:\s*=\s*(?:"[^"]*"|'[^']*'))?/.exec(attributes)
        if (mirroredMatch) {
            result.mirroredOffsets.push(
                matchOffset + 1 + localName.length + mirroredMatch.index + 1
            )
        }
    }
    return result
}

/** Migrates Vue single-file component imports and template component references. */
export function transformVue(
    source: string,
    fileName = 'source.vue',
    mode: ReactV1Mode = 'static'
): TransformResult {
    const parsed = parse(source, { filename: fileName })
    const template = parsed.descriptor.template
    const scripts = [parsed.descriptor.script, parsed.descriptor.scriptSetup].filter(
        (block): block is NonNullable<typeof block> => Boolean(block)
    )
    const edits: Edit[] = []
    const diagnostics: Diagnostic[] = []

    if (!template) {
        return {
            changed: false,
            code: source,
            diagnostics: [
                {
                    code: 'VUE_TEMPLATE_REQUIRES_MANUAL_MIGRATION',
                    file: fileName,
                    message:
                        'Skipped Vue icon imports because this component has no template to analyze.',
                },
            ],
        }
    }

    for (const script of scripts) {
        const scriptSource = script.content
        const scriptOffset = script.loc.start.offset
        const sourceFile = ts.createSourceFile(fileName, scriptSource, ts.ScriptTarget.Latest, true)
        for (const statement of sourceFile.statements) {
            if (
                !ts.isImportDeclaration(statement) ||
                !ts.isStringLiteral(statement.moduleSpecifier)
            )
                continue
            const moduleSpecifier = statement.moduleSpecifier.text
            if (moduleSpecifier === '@solar-icons/vue/category') {
                diagnostics.push({
                    code: 'VUE_CATEGORY_IMPORT_REQUIRES_MANUAL_MIGRATION',
                    file: fileName,
                    ...diagnosticLocation(
                        source,
                        scriptOffset + statement.moduleSpecifier.getStart(sourceFile)
                    ),
                    message:
                        'Skipped a Vue category import. Replace each category member with an individual v2 icon import.',
                })
                continue
            }
            if (!moduleSpecifier.startsWith('@solar-icons/vue')) continue

            const namedBindings = statement.importClause?.namedBindings
            if (!namedBindings || !ts.isNamedImports(namedBindings)) {
                diagnostics.push({
                    code: 'UNSUPPORTED_VUE_IMPORT',
                    file: fileName,
                    ...diagnosticLocation(
                        source,
                        scriptOffset + statement.moduleSpecifier.getStart(sourceFile)
                    ),
                    message: `Skipped non-named import from ${moduleSpecifier}. Convert it to individual icon imports manually.`,
                })
                continue
            }

            const isRoot = moduleSpecifier === '@solar-icons/vue'
            const legacyContext = namedBindings.elements.some(specifier =>
                ['SolarProvider', 'SolarIconsPlugin', 'useSolar'].includes(
                    (specifier.propertyName ?? specifier.name).text
                )
            )
            if (legacyContext && isRoot) {
                diagnostics.push({
                    code: 'VUE_PROVIDER_REQUIRES_MANUAL_MIGRATION',
                    file: fileName,
                    ...diagnosticLocation(
                        source,
                        scriptOffset + statement.moduleSpecifier.getStart(sourceFile)
                    ),
                    message:
                        'Skipped a legacy Vue provider, plugin, or useSolar import. Its v1 global configuration semantics require manual migration.',
                })
                continue
            }

            const styleMatch = moduleSpecifier.match(
                /^@solar-icons\/vue\/(Bold|BoldDuotone|Broken|Linear|LineDuotone|Outline)$/
            )
            if (!isRoot && !styleMatch) {
                diagnostics.push({
                    code: 'UNSUPPORTED_VUE_SUBPATH',
                    file: fileName,
                    ...diagnosticLocation(
                        source,
                        scriptOffset + statement.moduleSpecifier.getStart(sourceFile)
                    ),
                    message: `Skipped unsupported Vue subpath: ${moduleSpecifier}.`,
                })
                continue
            }

            const imports: string[] = []
            for (const specifier of namedBindings.elements) {
                const importedName = (specifier.propertyName ?? specifier.name).text
                const localName = specifier.name.text
                const use = templateUse(template.content, template.loc.start.offset, localName)
                if (use.styles.size === 0 && !use.dynamic) {
                    diagnostics.push({
                        code: 'VUE_IMPORT_REQUIRES_REVIEW',
                        file: fileName,
                        ...diagnosticLocation(
                            source,
                            scriptOffset + statement.moduleSpecifier.getStart(sourceFile)
                        ),
                        message: `Skipped Vue import because ${localName} is not used as a template component in this file.`,
                    })
                    continue
                }

                const styleFromPath = styleMatch?.[1]
                const style = styleFromPath
                    ? weightToStyle[styleFromPath]!
                    : mode === 'dynamic' || use.dynamic || use.styles.size !== 1
                      ? 'dynamic'
                      : [...use.styles][0]
                const targetName = addIconSuffix(renameIcon(importedName))
                const outputLocalName = specifier.propertyName ? localName : targetName
                const binding =
                    outputLocalName === targetName
                        ? targetName
                        : `${targetName} as ${outputLocalName}`
                imports.push(`import { ${binding} } from '@solar-icons/vue/${style}'`)

                if (!specifier.propertyName && localName !== targetName) {
                    for (const tagEdit of use.tagEdits) {
                        edits.push({ ...tagEdit, text: targetName })
                    }
                }
                if (style !== 'dynamic') edits.push(...use.weightEdits)
                for (const mirroredOffset of use.mirroredOffsets) {
                    diagnostics.push({
                        code: 'VUE_MIRRORED_REQUIRES_MANUAL_MIGRATION',
                        file: fileName,
                        ...diagnosticLocation(source, mirroredOffset),
                        message: `${localName} uses the removed mirrored prop. Replace it with CSS transform: scaleX(-1).`,
                        severity: 'warning',
                    })
                }
            }
            if (imports.length > 0) {
                edits.push({
                    start: scriptOffset + statement.getStart(sourceFile),
                    end: scriptOffset + statement.getEnd(),
                    text: imports.join('\n'),
                })
            }
        }
    }

    const code = applyEdits(source, edits)
    return { code, changed: code !== source, diagnostics }
}
