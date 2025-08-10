import { mount } from '@vue/test-utils'
import { describe, expect, it } from 'vitest'
import { defineComponent, h } from 'vue'
import {
    createSolarIcons,
    DEFAULT_SOLAR,
    provideSolarIconsContext,
    useSolar,
} from '../src/lib/context'

describe('context utilities', () => {
    it('createSolarIcons merges defaults with partial and exposes setters', async () => {
        const ctx = createSolarIcons({ color: 'red', size: '32' })
        expect(ctx.config.color).toBe('red')
        expect(ctx.config.size).toBe('32')
        expect(ctx.config.weight).toBe(DEFAULT_SOLAR.weight)

        ctx.setColor('blue')
        expect(ctx.config.color).toBe('blue')

        ctx.setSize('48')
        expect(ctx.config.size).toBe('48')

        ctx.setWeight('Bold' as any)
        expect(ctx.config.weight).toBe('Bold')

        ctx.setConfig({ color: 'green', mirrored: true })
        expect(ctx.config.color).toBe('green')
        expect(ctx.config.mirrored).toBe(true)
    })

    it('provide/use shares context to descendants', () => {
        const Provider = defineComponent({
            setup(_, { slots }) {
                const ctx = createSolarIcons({ color: 'purple' })
                provideSolarIconsContext(ctx)
                return () => slots.default?.()
            },
        })

        const Consumer = defineComponent({
            setup() {
                const { config } = useSolar()
                return () => h('div', { id: 'color', 'data-color': config.color })
            },
        })

        const wrapper = mount({
            render() {
                return h(Provider, null, { default: () => h(Consumer) })
            },
        })

        expect(wrapper.find('#color').attributes()['data-color']).toBe('purple')
    })
})
