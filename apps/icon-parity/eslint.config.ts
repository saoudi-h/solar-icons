import type { Config } from '@tala-tools/eslint'
import { next } from '@tala-tools/eslint'
import { defineConfig } from 'eslint/config'

const config: Config[] = defineConfig([
    ...next,
    {
        ignores: ['.next/', 'next-env.d.ts', 'prettier.config.mjs', 'postcss.config.mjs'],
    },
    {
        settings: {
            'better-tailwindcss': {
                entryPoint: './app/globals.css',
                detectComponentClasses: true,
            },
        },
        rules: {
            '@typescript-eslint/no-unnecessary-condition': 'off',
            'better-tailwindcss/enforce-consistent-line-wrapping': 'off',
            'better-tailwindcss/enforce-canonical-classes': 'off',
        },
    },
])

export default config
