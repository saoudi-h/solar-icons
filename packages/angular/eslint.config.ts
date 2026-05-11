import type { Config } from '@tala-tools/eslint'
import { base } from '@tala-tools/eslint'
import { defineConfig } from 'eslint/config'

const config: Config[] = defineConfig([
    ...base,
    {
        ignores: [
            'coverage/**',
            'eslint.config.ts',
            'eslint-types.d.ts',
            'lint-staged.config.mjs',
            'prettier.config.mjs',
            'src/icons',
            'scripts/*',
        ],
    },
])

export default config
