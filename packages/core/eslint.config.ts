import type { Config } from '@solar-icons/eslint'
import { base } from '@solar-icons/eslint'
import { defineConfig } from 'eslint/config'

const config: Config[] = defineConfig([
    ...base,
    {
        ignores: [
            'eslint.config.ts',
            'eslint-types.d.ts',
            'prettier.config.mjs',
            'lint-staged.config.mjs',
            'lowercase-script.ts',
        ],
    },
])

export default config
