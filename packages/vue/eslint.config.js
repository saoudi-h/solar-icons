import { configs, defineConfig } from '@solar-icons/eslint'

export default (async () => {
    const base = await configs.base
    return defineConfig(
        ...base,
        {
            ignores: ['eslint.config.js', 'eslint-types.d.ts', 'prettier.config.js', 'src/icons'],
        },
        {
            rules: {
                '@typescript-eslint/no-unused-vars': [
                    'error',
                    {
                        varsIgnorePattern: '^React$',
                        argsIgnorePattern: '^_',
                        ignoreRestSiblings: true,
                    },
                ],
            },
        }
    )
})()
