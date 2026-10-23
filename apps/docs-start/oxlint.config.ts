import { base } from '@tala-tools/oxlint'
import { defineConfig } from 'oxlint'

export default defineConfig({
    extends: [base],
    // The catalogue under `generated/` is written by the generation scripts.
    ignorePatterns: ['dist', 'node_modules', '.source', '.tanstack', '.wrangler', 'generated'],
})
