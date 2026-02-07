import type { Config } from '@solar-icons/eslint'
import { next } from '@solar-icons/eslint'
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
            },
        },
    },
])

export default config
