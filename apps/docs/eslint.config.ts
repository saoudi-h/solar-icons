import type { Config } from '@tala-tools/eslint'
import { next } from '@tala-tools/eslint'
import { defineConfig } from 'eslint/config'

const config: Config[] = defineConfig([
    ...next,
    {
        ignores: [
            '.next/',
            '.source/',
            'next-env.d.ts',
            'prettier.config.mjs',
            'postcss.config.mjs',
            'lint-staged.config.mjs',
            'core/scripts/**',
            'core/generated/**',
        ],
    },
    {
        settings: {
            'better-tailwindcss': {
                entryPoint: './app/globals.css',
                detectComponentClasses: true,
            },
        },
    },
])

export default config
