import playwrightPlugin from 'eslint-plugin-playwright'
import { defineConfig } from 'eslint/config'
import type { Config } from 'typescript-eslint'

export const playwright: Config = defineConfig(
    {
        files: ['e2e/**/*.{spec,test}.{ts}'],
        ...playwrightPlugin.configs['flat/recommended'],
    },
    {
        rules: {
            // You can override the recommended rules here
        },
    }
)
