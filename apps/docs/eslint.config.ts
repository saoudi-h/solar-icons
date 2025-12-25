import type { Config } from '@solar-icons/eslint'
import { next } from '@solar-icons/eslint'
import { defineConfig } from 'eslint/config'

const config: Config[] = defineConfig([
    ...next,
    {
        ignores: [
            '.next/',
            'next-env.d.ts',
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
