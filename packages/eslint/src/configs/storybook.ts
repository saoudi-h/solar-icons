import storybookPlugin from 'eslint-plugin-storybook'

import type { Config } from '@eslint/config-helpers'
import { defineConfig } from 'eslint/config'

export const storybook: Config[] = defineConfig([
    {
        ignores: ['!.storybook', 'storybook-static', '.turbo', 'node_modules', 'dist', '.vscode'],
    },
    ...storybookPlugin.configs['flat/recommended'],
])
