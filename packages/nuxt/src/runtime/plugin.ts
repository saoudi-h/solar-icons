import { defineNuxtPlugin } from '#app'
import { createSolarIcons, provideSolarIconsContextInApp } from '@solar-icons/vue/lib'
import { watch } from 'vue'

export default defineNuxtPlugin({
    name: 'solar-icons',
    setup(nuxtApp) {
        const config = nuxtApp.$config.public?.solarIcons || {
            color: 'currentColor',
            size: 24,
            strokeWidth: 1.5,
        }

        const ctx = createSolarIcons(config)
        provideSolarIconsContextInApp(nuxtApp.vueApp, ctx)

        if (import.meta.client) {
            const apply = () => {
                const el = document.body
                if (ctx.color.value != null) el.style.setProperty('--solar-color', ctx.color.value)
                else el.style.removeProperty('--solar-color')

                if (ctx.size.value != null) {
                    const sz =
                        typeof ctx.size.value === 'number' ? `${ctx.size.value}px` : ctx.size.value
                    el.style.setProperty('--solar-size', sz)
                } else el.style.removeProperty('--solar-size')

                if (ctx.strokeWidth.value != null)
                    el.style.setProperty('--solar-stroke-width', String(ctx.strokeWidth.value))
                else el.style.removeProperty('--solar-stroke-width')

                if (ctx.secondaryColor.value)
                    el.style.setProperty('--solar-secondary-color', ctx.secondaryColor.value)
                else el.style.removeProperty('--solar-secondary-color')

                if (ctx.secondaryOpacity.value != null)
                    el.style.setProperty(
                        '--solar-secondary-opacity',
                        String(ctx.secondaryOpacity.value)
                    )
                else el.style.removeProperty('--solar-secondary-opacity')
            }

            watch(
                [ctx.color, ctx.size, ctx.strokeWidth, ctx.secondaryColor, ctx.secondaryOpacity],
                apply,
                { immediate: true }
            )
        }
    },
})
