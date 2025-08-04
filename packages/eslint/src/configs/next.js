import { fixupConfigRules } from '@eslint/compat'

import { compat, defineConfig } from '../utils.js'
import { react } from './react.js'
import { tailwind } from './tailwind.js'

export const next = defineConfig(
    ...react,
    ...tailwind,
    ...fixupConfigRules(compat.extends('plugin:@next/next/recommended'))
)
