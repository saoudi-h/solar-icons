import { describe, expect, it } from 'vitest'
import { createApp, defineComponent, h } from 'vue'
import { SOLAR_ICONS_CONFIG_KEY } from '../src/lib/context'
import { SolarIconsPlugin } from '../src/lib/plugin'

describe('SolarIconsPlugin', () => {
    it('provides context with given options', () => {
        const app = createApp(defineComponent({ render: () => h('div') }))
        app.use(SolarIconsPlugin, { color: 'orange', size: '20', weight: 'Bold', mirrored: true })

        const provided = app._context.provides[SOLAR_ICONS_CONFIG_KEY as unknown as symbol]
        expect(provided).toBeTruthy()
        expect(provided.config).toMatchObject({
            color: 'orange',
            size: '20',
            weight: 'Bold',
            mirrored: true,
        })
    })
})
