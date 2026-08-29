import { base, next, tailwind } from '@tala-tools/oxlint'
import { defineConfig } from 'oxlint'

export default defineConfig({
    extends: [base, next, tailwind],
    rules: {
        // Canonical pipeline order: oxfmt runs FIRST, oxlint runs LAST, so
        // this rule owns the final shape of className wrapping (same recipe
        // as ratelock). preferSingleLine avoids splitting short class
        // strings into pointless multiline templates; printWidth mirrors
        // the oxfmt preset.
        'better-tailwindcss/enforce-consistent-line-wrapping': [
            'warn',
            { preferSingleLine: true, printWidth: 100 },
        ],
    },
    ignorePatterns: [
        '.next',
        '.source',
        'node_modules',
        'next-env.d.ts',
        'generated/**',
        'scripts/**',
    ],
    settings: {
        'better-tailwindcss': {
            entryPoint: './app/globals.css',
            detectComponentClasses: true,
        },
    },
})
