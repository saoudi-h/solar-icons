import baseConfig from '@solar-icons/prettier'

export default {
    ...baseConfig,
    plugins: [...baseConfig.plugins, 'prettier-plugin-tailwindcss'],
}
