import type { Config } from '@tala-tools/eslint'
import { base } from '@tala-tools/eslint'
import { defineConfig } from 'eslint/config'

const config: Config[] = defineConfig([
    ...base,
    {
        ignores: [
            'eslint.config.ts',
            'lint-staged.config.mjs',
            'prettier.config.mjs',
            'dist',
            'src/icons',
            'src/index.ts',
            'src/types.ts',
            'LICENSE',
            'LICENSE-THIRD-PARTY',
        ],
    },
])

export default config
