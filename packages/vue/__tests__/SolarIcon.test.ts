import { mount } from '@vue/test-utils'
import { describe, expect, it } from 'vitest'
import { defineComponent, h } from 'vue'
import { createSolarIcons, provideSolarIconsContext } from '../src/lib/context'
import SolarIcon from '../src/lib/SolarIcon.vue'

describe('SolarIcon', () => {
    it('renders svg with config defaults when no props given', () => {
        const Provider = defineComponent({
            setup(_, { slots }) {
                provideSolarIconsContext(createSolarIcons())
                return () => slots.default?.()
            },
        })
        const wrapper = mount({
            render() {
                return h(Provider, null, { default: () => h(SolarIcon, { iconNodes: [] }) })
            },
        })
        const svg = wrapper.find('svg')
        expect(svg.exists()).toBe(true)
        expect(svg.attributes('width')).toBe('24')
        expect(svg.attributes('height')).toBe('24')
        // color attribute is set via :color binding
        expect(svg.attributes('color')).toBe('currentColor')
    })

    it('overrides context with props', () => {
        const Provider = defineComponent({
            setup(_, { slots }) {
                provideSolarIconsContext(createSolarIcons({ color: 'green', size: '16' }))
                return () => slots.default?.()
            },
        })
        const wrapper = mount({
            render() {
                return h(Provider, null, {
                    default: () => h(SolarIcon, { color: 'red', size: '32', iconNodes: [] }),
                })
            },
        })
        const svg = wrapper.find('svg')
        expect(svg.attributes('width')).toBe('32')
        expect(svg.attributes('height')).toBe('32')
        expect(svg.attributes('color')).toBe('red')
    })
})
