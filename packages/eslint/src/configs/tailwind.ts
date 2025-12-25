import type { Config } from '@eslint/config-helpers'
import betterTailwindPlugin from 'eslint-plugin-better-tailwindcss'
import { defineConfig } from 'eslint/config'

export const tailwind: Config[] = defineConfig([
    {
        plugins: {
            'better-tailwindcss': betterTailwindPlugin,
        },
        settings: {
            'better-tailwindcss': {
                entryPoint: './app/global.css', // change this in each app
                variables: ['className', 'classNames', 'classes'],
            },
        },
        rules: {
            ...betterTailwindPlugin.configs.recommended!.rules,
            'better-tailwindcss/no-unregistered-classes': 'off',
        },
    },
])
