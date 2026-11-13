/**
 * Strips every comment from the emitted JavaScript, leaving the declaration
 * files untouched.
 *
 * The compile pass keeps comments so the `.d.ts` files carry the icon
 * documentation (the preview image shown on hover in editors). The same
 * comments would only weigh down the `.js` files, so they are removed here
 * with TypeScript's own printer: the result is the one a second compile with
 * `removeComments` would produce, without compiling the 9k components again.
 */
import { readdirSync, readFileSync, writeFileSync } from 'node:fs'
import { join } from 'node:path'

import ts from 'typescript'

const root = process.argv[2] ?? 'dist'
const compilerOptions = {
    target: ts.ScriptTarget.ES2022,
    module: ts.ModuleKind.ESNext,
    allowJs: true,
    removeComments: true,
}

let count = 0
for (const entry of readdirSync(root, { recursive: true, withFileTypes: true })) {
    if (!entry.isFile() || !entry.name.endsWith('.js')) continue
    const file = join(entry.parentPath, entry.name)
    const { outputText } = ts.transpileModule(readFileSync(file, 'utf8'), {
        fileName: file,
        compilerOptions,
    })
    writeFileSync(file, outputText)
    count++
}
console.log(`Stripped comments from ${count} JavaScript files in ${root}`)
