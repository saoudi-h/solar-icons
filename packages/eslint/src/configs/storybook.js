import { fixupConfigRules } from '@eslint/compat'

import { compat, defineConfig } from '../utils.js'
import { react } from './react.js'
import { tailwind } from './tailwind.js'

// For more info, see https://github.com/storybookjs/eslint-plugin-storybook#configuration-flat-config-format

export const storybook = defineConfig(
    ...react,
    ...tailwind,
    {
        ignores: ['!.storybook', 'storybook-static', '.turbo', 'node_modules', 'dist', '.vscode'],
    },
    ...fixupConfigRules(compat.extends('plugin:storybook/recommended')),
    ...fixupConfigRules(compat.extends('plugin:storybook/csf')),
    // ...fixupConfigRules(compat.extends('plugin:storybook/csf-strict')),
    {
        files: ['*.stories.@(ts|tsx|js|jsx|mjs|cjs)'],
    }
)
