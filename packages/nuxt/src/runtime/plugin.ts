import { defineNuxtPlugin } from '#app'

import { createSolarIcons, provideSolarIconsContextInApp } from '#solar-icons/lib'

export default defineNuxtPlugin({
  name: 'solar-icons',
  setup(nuxtApp) {
    const config = nuxtApp.$config.public?.solarIcons?.config || {
      color: 'currentColor',
      size: '24',
      weight: 'Linear',
      mirrored: false,
    }

    const solarContext = createSolarIcons(config)
    provideSolarIconsContextInApp(nuxtApp.vueApp, solarContext)
  },
})
