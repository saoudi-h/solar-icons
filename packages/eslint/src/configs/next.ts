import nextPlugin from '@next/eslint-plugin-next'

import type { Config } from '@eslint/config-helpers'
import { defineConfig } from 'eslint/config'
import { react } from './react'
import { tailwind } from './tailwind'

export const next: Config[] = defineConfig([
    ...react,
    ...tailwind,
    {
        plugins: {
            '@next/next': nextPlugin,
        },
        rules: {
            ...nextPlugin.configs.recommended.rules,
            ...nextPlugin.configs['core-web-vitals'].rules,
        },
    },
    {
        ignores: ['.next/*'],
    },
] as any)
