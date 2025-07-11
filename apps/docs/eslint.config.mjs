import { configs, defineConfig } from '@solar-icons/eslint'

export default defineConfig(...configs.next, {
    ignores: [
        'eslint.config.mjs',
        'prettier.config.mjs',
        'postcss.config.js',
        'next.config.mjs',
        '.next',
        '.source',
        'core/scripts',
    ],
})
