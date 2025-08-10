import { mount } from '@vue/test-utils'
import { describe, expect, it } from 'vitest'
import { defineComponent, h } from 'vue'
import ArrowUp from '../src/icons/arrows/ArrowUp'
import { createSolarIcons, provideSolarIconsContext } from '../src/lib/context'

describe('Icon component basics', () => {
    it('mounts an exported icon and applies props', () => {
        const Provider = defineComponent({
            setup(_, { slots }) {
                provideSolarIconsContext(createSolarIcons())
                return () => slots.default?.()
            },
        })
        const wrapper = mount({
            render() {
                return h(Provider, null, {
                    default: () => h(ArrowUp, { size: '40', color: '#000' }),
                })
            },
        })
        const svg = wrapper.find('svg')
        expect(svg.exists()).toBe(true)
        expect(svg.attributes('width')).toBe('40')
        expect(svg.attributes('height')).toBe('40')
        expect(svg.attributes('color')).toBe('#000')
    })
})
