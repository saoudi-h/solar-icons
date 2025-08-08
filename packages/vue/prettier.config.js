import baseConfig from '@solar-icons/prettier'

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
