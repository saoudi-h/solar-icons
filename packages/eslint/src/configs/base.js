import { fixupConfigRules } from '@eslint/compat'
import js from '@eslint/js'
import prettierConfig from 'eslint-config-prettier'
import jsdoc from 'eslint-plugin-jsdoc'
import * as regexpPlugin from 'eslint-plugin-regexp'
import turboPlugin from 'eslint-plugin-turbo'
import globals from 'globals'
import tseslint from 'typescript-eslint'

import { compat, defineConfig } from '../utils.js'

export const base = defineConfig(
    {
        ignores: ['.next', 'dist', 'storybook-static'],
    },

    // Base JS/TS configs
    js.configs.recommended,
    ...tseslint.configs.recommended,
    // Good to have extras
    regexpPlugin.configs['flat/recommended'],
    {
        plugins: {
            turbo: turboPlugin,
        },
    },

    // Tailwind plugin
    ...fixupConfigRules(compat.extends('plugin:tailwindcss/recommended')),

    // Prettier config to disable conflicting rules
    prettierConfig,

    // JSDoc plugin only for TypeScript files
    {
        files: ['**/*.{ts,tsx}'],
        extends: [jsdoc.configs['flat/recommended-typescript-error']],
    },

    {
        files: ['**/*.cjs'],
        languageOptions: {
            sourceType: 'commonjs',
        },
    },

    {
        linterOptions: {
            reportUnusedDisableDirectives: true,
        },
        languageOptions: {
            parserOptions: {
                projectService: true,
            },
            globals: {
                ...globals.browser,
                ...globals.node,
            },
        },
        settings: {
            tailwindcss: {
                callees: ['classnames', 'clsx', 'ctl', 'cn', 'cva'],
            },
        },
        rules: {
            ...turboPlugin.configs.recommended.rules,
            '@typescript-eslint/no-unused-vars': [
                'error',
                { argsIgnorePattern: '^_', varsIgnorePattern: '^_' },
            ],

            '@typescript-eslint/consistent-type-imports': [
                'warn',
                { prefer: 'type-imports', fixStyle: 'separate-type-imports' },
            ],

            '@typescript-eslint/no-misused-promises': [
                'error',
                { checksVoidReturn: { attributes: false } },
            ],

            '@typescript-eslint/no-unnecessary-condition': [
                'error',
                {
                    allowConstantLoopConditions: true,
                },
            ],
        },
    }
)
