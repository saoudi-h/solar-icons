import tailwindcss from '@tailwindcss/vite'

// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
    compatibilityDate: '2025-07-15',
    devtools: { enabled: true },
    css: ['~/assets/css/main.css'],
    vite: {
        plugins: [tailwindcss()],
    },
    modules: ['@nuxt/eslint', '@nuxt/ui', '@solar-icons/nuxt'],
    solarIcons: {
        size: 32,
        weight: 'BoldDuotone',
    },
})