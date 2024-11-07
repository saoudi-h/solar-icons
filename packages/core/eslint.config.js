import { configs, defineConfig } from '@solar-icons/eslint'

export default defineConfig(...configs.base, {
    ignores: ['eslint.config.js', 'eslint-types.d.ts', 'prettier.config.js'],
})
