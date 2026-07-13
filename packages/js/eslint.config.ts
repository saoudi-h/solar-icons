import type { Config } from '@tala-tools/eslint'
import { base } from '@tala-tools/eslint'
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
            'src/icons/**',
            'src/index.ts',
        ],
    },
])

export default config
