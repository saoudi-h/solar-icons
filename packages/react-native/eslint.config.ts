import type { Config } from '@solar-icons/eslint'
import { base } from '@solar-icons/eslint'
import { defineConfig } from 'eslint/config'

const config: Config[] = defineConfig([
    ...base,
    {
        ignores: [
            'src/icons/**/*',
            'tsdown.config.ts',
            'eslint.config.ts',
            'prettier.config.mjs',
            'lint-staged.config.mjs',
        ],
    },
])

export default config
