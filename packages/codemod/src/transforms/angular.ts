import { resolve } from 'node:path'
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

export function collectAngularSelectorRenames(source: string, fileName = 'source.ts') {
    const sourceFile = ts.createSourceFile(fileName, source, ts.ScriptTarget.Latest, true)
    const renames = new Map<string, string>()
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
            renames.set(selectorName(`Solar${importedName}`), selectorName(targetName))
        }
    }
    return renames
}

export function transformAngularTemplate(
    source: string,
    selectorRenames: ReadonlyMap<string, string>
): TransformResult {
    const edits: Edit[] = []
    for (const [legacySelector, nextSelector] of selectorRenames) {
        const selectorPattern = new RegExp(`\\b${legacySelector}\\b`, 'g')
        for (const match of source.matchAll(selectorPattern)) {
            edits.push({
                start: match.index!,
                end: match.index! + legacySelector.length,
                text: nextSelector,
            })
        }
    }
    const code = applyEdits(source, edits)
    return { code, changed: code !== source, diagnostics: [] }
}

/** Migrates Angular v1 icon imports and deterministic inline-template selectors. */
export function transformAngular(
    source: string,
    fileName = 'source.ts',
    existingFiles = new Set<string>()
): TransformResult {
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

            edits.push(
                ...editsForSelectorRename(
                    source,
                    selectorName(`Solar${importedName}`),
                    selectorName(targetName)
                )
            )
        }
    }

    const visitTemplates = (node: ts.Node) => {
        if (ts.isPropertyAssignment(node) && ts.isIdentifier(node.name)) {
            if (node.name.text === 'templateUrl') {
                const templatePath = ts.isStringLiteral(node.initializer)
                    ? resolve(fileName, '..', node.initializer.text)
                    : undefined
                if (!templatePath || !existingFiles.has(templatePath)) {
                    diagnostics.push({
                        code: 'ANGULAR_EXTERNAL_TEMPLATE_REQUIRES_MANUAL_MIGRATION',
                        file: fileName,
                        ...diagnosticLocation(sourceFile, node.name),
                        message:
                            'Skipped an external Angular template that could not be found. Review its icon selector renames manually.',
                    })
                }
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

function editsForSelectorRename(
    source: string,
    legacySelector: string,
    nextSelector: string
): Edit[] {
    const selectorPattern = new RegExp(`\\b${legacySelector}\\b`, 'g')
    return [...source.matchAll(selectorPattern)].map(match => ({
        start: match.index!,
        end: match.index! + legacySelector.length,
        text: nextSelector,
    }))
}
