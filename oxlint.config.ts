import { base } from '@tala-tools/oxlint'
import { defineConfig } from 'oxlint'

export default defineConfig({
    extends: [base],
    ignorePatterns: [
        'dist',
        'node_modules',
        'coverage',
        '.next',
        '.nuxt',
        '.svelte-kit',
        '.turbo',
        'out-tsc',
        '**/src/icons',
    ],
})
