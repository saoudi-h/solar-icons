import { fixupConfigRules } from '@eslint/compat'

import { compat, defineConfig } from '../utils.js'
import { base } from './base.js'

export const react = defineConfig(
    ...base,
    ...fixupConfigRules(compat.extends('plugin:react/recommended')),
    ...fixupConfigRules(compat.extends('plugin:react-hooks/recommended')),
    ...fixupConfigRules(compat.extends('plugin:jsx-a11y/strict')),

    {
        settings: {
            react: {
                version: 'detect',
            },
        },
        rules: {
            'react/react-in-jsx-scope': 'off',
            'react/prop-types': 'off',
        },
    }
)
