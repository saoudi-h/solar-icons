import type { Config } from '@eslint/config-helpers'
import js from '@eslint/js'
import prettierConfig from 'eslint-config-prettier'
import * as regexpPlugin from 'eslint-plugin-regexp'
import { defineConfig } from 'eslint/config'
import globals from 'globals'
import tseslint from 'typescript-eslint'

export const base: Config[] = defineConfig([
    {
        ignores: ['.next', 'dist', 'storybook-static'],
    },
    {
        languageOptions: {
            parser: tseslint.parser,
            parserOptions: {
                projectService: {
                    allowDefaultProject: ['*.js', '*.mjs', '*.ts'],
                },
                tsconfigRootDir: __dirname,
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
            '@typescript-eslint': tseslint.plugin,
            // turbo: turboPlugin,
        },
    },

    // Prettier config to disable conflicting rules
    prettierConfig,

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
            parser: tseslint.parser,
            parserOptions: {
                projectService: {
                    allowDefaultProject: ['*.js', '*.mjs', '*.ts'],
                },
                tsconfigRootDir: __dirname,
            },
            globals: {
                ...globals.browser,
                ...globals.node,
            },
        },
        rules: {
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
        },
    },
])
