import type { Config } from '@tala-tools/eslint'
import { base } from '@tala-tools/eslint'
import { defineConfig } from 'eslint/config'

export default defineConfig([
    ...base,
    {
        ignores: ['fixtures/**'],
    },
] satisfies Config[])
