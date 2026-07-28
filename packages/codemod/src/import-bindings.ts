import ts from 'typescript'

interface Edit {
    end: number
    start: number
    text: string
}

/**
 * Returns edits for references that resolve to a named import in this file.
 * A TypeScript checker keeps nested variables and object properties untouched.
 */
export function renameImportedBindingReferences(
    source: string,
    fileName: string,
    renames: ReadonlyMap<string, string>
): Edit[] {
    if (renames.size === 0) return []

    const options: ts.CompilerOptions = {
        allowJs: true,
        jsx: ts.JsxEmit.ReactJSX,
        noResolve: true,
        target: ts.ScriptTarget.Latest,
    }
    const sourceFile = ts.createSourceFile(fileName, source, ts.ScriptTarget.Latest, true)
    const host = ts.createCompilerHost(options)
    const defaultGetSourceFile = host.getSourceFile.bind(host)
    host.getSourceFile = (
        requestedFileName,
        languageVersion,
        onError,
        shouldCreateNewSourceFile
    ) =>
        requestedFileName === fileName
            ? sourceFile
            : defaultGetSourceFile(
                  requestedFileName,
                  languageVersion,
                  onError,
                  shouldCreateNewSourceFile
              )

    const program = ts.createProgram([fileName], options, host)
    const programSourceFile = program.getSourceFile(fileName)
    if (!programSourceFile) return []

    const checker = program.getTypeChecker()
    const importedSymbols = new Map<string, ts.Symbol>()
    for (const statement of programSourceFile.statements) {
        if (!ts.isImportDeclaration(statement)) continue
        const bindings = statement.importClause?.namedBindings
        if (!bindings || !ts.isNamedImports(bindings)) continue
        for (const specifier of bindings.elements) {
            const name = specifier.name.text
            if (!renames.has(name)) continue
            const symbol = checker.getSymbolAtLocation(specifier.name)
            if (symbol) importedSymbols.set(name, symbol)
        }
    }

    const edits: Edit[] = []
    const visit = (node: ts.Node) => {
        if (ts.isIdentifier(node) && !ts.isImportSpecifier(node.parent)) {
            const nextName = renames.get(node.text)
            const importedSymbol = importedSymbols.get(node.text)
            if (
                nextName &&
                importedSymbol &&
                checker.getSymbolAtLocation(node) === importedSymbol
            ) {
                edits.push({
                    end: node.getEnd(),
                    start: node.getStart(programSourceFile),
                    text: nextName,
                })
            }
        }
        ts.forEachChild(node, visit)
    }
    ts.forEachChild(programSourceFile, visit)

    return edits
}
