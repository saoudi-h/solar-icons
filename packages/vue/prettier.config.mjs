import baseConfig from '@tala-tools/prettier'

export default {
    ...baseConfig,
    plugins: [...baseConfig.plugins, 'prettier-plugin-vue'],
    overrides: [
        {
            files: '*.vue',
            options: {
                parser: 'vue',
            },
        },
    ],
}
