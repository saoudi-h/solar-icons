import { configs, defineConfig } from '@solar/eslint'

export default defineConfig(
    ...configs.base,
    {
        ignores: ['eslint.config.js', 'eslint-types.d.ts', 'prettier.config.js'],
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
