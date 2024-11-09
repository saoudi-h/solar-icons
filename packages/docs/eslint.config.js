import { configs, defineConfig } from '@solar-icons/eslint'

export default defineConfig(
    ...configs.next,
    {
        ignores: ['eslint.config.js', 'eslint-types.d.ts', 'prettier.config.js'],
    },
)
