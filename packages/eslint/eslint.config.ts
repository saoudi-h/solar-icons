import type { Config } from '@eslint/config-helpers'
import { defineConfig } from '@eslint/config-helpers'
import { base } from './src/configs/base'

const config: Config[] = defineConfig([
    ...base,
    {
        ignores: ['eslint-types.d.ts', 'prettier.config.js', 'lint-staged.config.mjs'],
    },
])

export default config
