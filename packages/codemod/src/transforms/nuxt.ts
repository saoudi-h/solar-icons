import ts from 'typescript'

import type { Diagnostic, TransformResult } from '../types.js'

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

function propertyName(property: ts.ObjectLiteralElementLike): string | undefined {
    if (!ts.isPropertyAssignment(property)) return undefined
    return ts.isIdentifier(property.name) || ts.isStringLiteral(property.name)
        ? property.name.text
        : undefined
}

/** Migrates deterministic Nuxt module configuration and reports removed category aliases. */
export function transformNuxt(source: string, fileName = 'nuxt.config.ts'): TransformResult {
    const sourceFile = ts.createSourceFile(fileName, source, ts.ScriptTarget.Latest, true)
    const edits: Edit[] = []
    const diagnostics: Diagnostic[] = []

    const visit = (node: ts.Node) => {
        if (
            ts.isImportDeclaration(node) &&
            ts.isStringLiteral(node.moduleSpecifier) &&
            node.moduleSpecifier.text === '#solar-icons/category'
        ) {
            diagnostics.push({
                code: 'NUXT_CATEGORY_IMPORT_REQUIRES_MANUAL_MIGRATION',
                file: fileName,
                ...diagnosticLocation(sourceFile, node.moduleSpecifier),
                message:
                    'Skipped the removed #solar-icons/category alias. Import each required v2 icon individually.',
            })
        }

        if (
            ts.isCallExpression(node) &&
            ts.isIdentifier(node.expression) &&
            node.expression.text === 'defineNuxtConfig'
        ) {
            const config = node.arguments.find(ts.isObjectLiteralExpression)
            const solarIcons = config?.properties.find(
                property => propertyName(property) === 'solarIcons'
            )
            if (
                solarIcons &&
                ts.isPropertyAssignment(solarIcons) &&
                ts.isObjectLiteralExpression(solarIcons.initializer)
            ) {
                for (const option of solarIcons.initializer.properties) {
                    if (propertyName(option) !== 'prefix' || !ts.isPropertyAssignment(option))
                        continue
                    edits.push({
                        start: option.name.getStart(sourceFile),
                        end: option.name.getEnd(),
                        text: 'namePrefix',
                    })
                }
            }
        }
        ts.forEachChild(node, visit)
    }
    ts.forEachChild(sourceFile, visit)

    const code = applyEdits(source, edits)
    return { code, changed: code !== source, diagnostics }
}
