import { base, next, tailwind } from '@tala-tools/oxlint'
import { defineConfig } from 'oxlint'

export default defineConfig({
    extends: [base, next, tailwind],
    rules: {
        // Demo app: dense long-className JSX makes this rule's autofix
        // non-idempotent against oxfmt's attribute layout (verified:
        // repeated fix passes keep producing new violations). Formatting
        // owns wrapping here; all other better-tailwindcss rules stay on.
        'better-tailwindcss/enforce-consistent-line-wrapping': 'off',
    },
    ignorePatterns: ['.next', 'node_modules', 'next-env.d.ts', 'scripts/**', 'generated/**'],
    settings: {
        'better-tailwindcss': {
            entryPoint: './app/globals.css',
            detectComponentClasses: true,
        },
    },
})
