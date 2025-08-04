import { fixupConfigRules } from '@eslint/compat'

import { compat, defineConfig } from '../utils.js'

export const tailwind = defineConfig(
    ...fixupConfigRules(compat.extends('plugin:better-tailwindcss/recommended')),

    {
        settings: {
            'better-tailwindcss': {
                entryPoint: './app/global.css', // change this in each app
                variables: ['className', 'classNames', 'classes'],
            },
        },
        rules: {
            'better-tailwindcss/no-unregistered-classes': 'off',
        },
    }
)
