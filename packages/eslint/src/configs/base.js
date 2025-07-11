import { fixupConfigRules } from '@eslint/compat'
import js from '@eslint/js'
import * as regexpPlugin from 'eslint-plugin-regexp'
// import turboPlugin from 'eslint-plugin-turbo'
import globals from 'globals'
import prettierConfig from 'eslint-config-prettier'
import tseslint from 'typescript-eslint'
import betterTailwindcss from 'eslint-plugin-better-tailwindcss'

import { compat, defineConfig } from '../utils.js'

export const base = defineConfig(
    {
        ignores: ['.next', 'dist', 'storybook-static'],
    },
    {
        languageOptions: {
            parserOptions: {
                projectService: {
                    allowDefaultProject: ['*.js'],
                },
            },
        },
    },

    // Base JS/TS configs
    js.configs.recommended,
    ...tseslint.configs.recommended,
    // Good to have extras
    regexpPlugin.configs['flat/recommended'],
    {
        plugins: {
            // turbo: turboPlugin,
        },
    },


    // Prettier config to disable conflicting rules
    prettierConfig,

    ...fixupConfigRules(compat.extends('plugin:better-tailwindcss/recommended')),

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
            'better-tailwindcss': {
                entryPoint: './app/global.css',
                variables: ['className', 'classNames', 'classes'],
            },
        },
        rules: {
            // ...betterTailwindcss.configs['recommended-error'].rules,
            'better-tailwindcss/no-unregistered-classes': 'off',
            // ...turboPlugin.configs.recommended.rules,
            '@typescript-eslint/no-unused-vars': [
                'error',
                { argsIgnorePattern: '^_', varsIgnorePattern: '^_' },
            ],

            '@typescript-eslint/no-explicit-any': 'off',
            '@typescript-eslint/consistent-type-imports': [
                'warn',
                { prefer: 'type-imports', fixStyle: 'separate-type-imports' },
            ],

            '@typescript-eslint/no-misused-promises': [
                'error',
                { checksVoidReturn: { attributes: false } },
            ],

            '@typescript-eslint/no-unnecessary-condition': [
                'warn',
                {
                    allowConstantLoopConditions: true,
                },
            ],
            'tailwindcss/no-custom-classname': 'off',
        },
    }
)
