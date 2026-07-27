import ts from 'typescript'

import { renameIcon } from '../icon-renames.js'
import type { Diagnostic, TransformResult } from '../types.js'

const styleSuffixes = ['BoldDuotone', 'LineDuotone', 'Outline', 'Broken', 'Linear', 'Bold']

interface Edit {
    end: number
    start: number
    text: string
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

function targetExport(name: string): string | undefined {
    if (name === 'SolarDynamicIcon') return 'SolarIcon'
    const suffix = styleSuffixes.find(candidate => name.endsWith(candidate))
    if (!suffix || name.startsWith('Solar')) return undefined
    return `Solar${renameIcon(name.slice(0, -suffix.length))}${suffix}`
}

function selectorName(exportName: string): string {
    return `solar${exportName.slice('Solar'.length)}`
}

/** Migrates Angular v1 icon imports and deterministic inline-template selectors. */
export function transformAngular(source: string, fileName = 'source.ts'): TransformResult {
    if (!fileName.endsWith('.ts')) return { changed: false, code: source, diagnostics: [] }
    const sourceFile = ts.createSourceFile(fileName, source, ts.ScriptTarget.Latest, true)
    const edits: Edit[] = []
    const diagnostics: Diagnostic[] = []

    for (const statement of sourceFile.statements) {
        if (!ts.isImportDeclaration(statement) || !ts.isStringLiteral(statement.moduleSpecifier))
            continue
        if (statement.moduleSpecifier.text !== '@solar-icons/angular') continue
        const namedBindings = statement.importClause?.namedBindings
        if (!namedBindings || !ts.isNamedImports(namedBindings)) continue

        for (const specifier of namedBindings.elements) {
            const importedName = (specifier.propertyName ?? specifier.name).text
            const targetName = targetExport(importedName)
            if (!targetName) continue
            const localName = specifier.name.text
            const outputLocalName = specifier.propertyName ? localName : targetName
            edits.push({
                start: specifier.getStart(sourceFile),
                end: specifier.getEnd(),
                text:
                    outputLocalName === targetName
                        ? targetName
                        : `${targetName} as ${outputLocalName}`,
            })

            if (!specifier.propertyName && localName !== targetName) {
                const visit = (node: ts.Node) => {
                    if (
                        ts.isIdentifier(node) &&
                        node.text === localName &&
                        node.getStart(sourceFile) !== specifier.name.getStart(sourceFile)
                    ) {
                        edits.push({
                            start: node.getStart(sourceFile),
                            end: node.getEnd(),
                            text: targetName,
                        })
                    }
                    ts.forEachChild(node, visit)
                }
                ts.forEachChild(sourceFile, visit)
            }

            const legacySelector = selectorName(`Solar${importedName}`)
            const nextSelector = selectorName(targetName)
            const selectorPattern = new RegExp(`\\b${legacySelector}\\b`, 'g')
            for (const match of source.matchAll(selectorPattern)) {
                edits.push({
                    start: match.index!,
                    end: match.index! + legacySelector.length,
                    text: nextSelector,
                })
            }
        }
    }

    const visitTemplates = (node: ts.Node) => {
        if (ts.isPropertyAssignment(node) && ts.isIdentifier(node.name)) {
            if (node.name.text === 'templateUrl') {
                diagnostics.push({
                    code: 'ANGULAR_EXTERNAL_TEMPLATE_REQUIRES_MANUAL_MIGRATION',
                    file: fileName,
                    ...diagnosticLocation(sourceFile, node.name),
                    message:
                        'Skipped an external Angular template. Review icon selector renames in the referenced HTML file.',
                })
            }
            if (
                node.name.text === 'template' &&
                (ts.isNoSubstitutionTemplateLiteral(node.initializer) ||
                    ts.isStringLiteral(node.initializer)) &&
                /\bmirrored\b/.test(node.initializer.text)
            ) {
                diagnostics.push({
                    code: 'ANGULAR_MIRRORED_REQUIRES_MANUAL_MIGRATION',
                    file: fileName,
                    ...diagnosticLocation(sourceFile, node.initializer),
                    message:
                        'An inline Angular template uses the removed mirrored input. Replace it with CSS transform: scaleX(-1).',
                    severity: 'warning',
                })
            }
        }
        ts.forEachChild(node, visitTemplates)
    }
    ts.forEachChild(sourceFile, visitTemplates)

    const code = applyEdits(source, edits)
    return { code, changed: code !== source, diagnostics }
}
