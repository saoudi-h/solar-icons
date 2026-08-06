import tailwindcss from '@tailwindcss/vite'

export default defineNuxtConfig({
  modules: ['../src/module'],
  devtools: { enabled: true },
  css: ['~/assets/css/main.css'],
  compatibilityDate: '2025-07-15',
  vite: {
    plugins: [tailwindcss()],
  },
  solarIcons: {
    namePrefix: 'Solar',
    autoImport: true,
    provider: true,
    color: '#f59e0b',
    size: 32,
    strokeWidth: 1.5,
  },
})
