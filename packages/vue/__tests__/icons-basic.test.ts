import { mount } from '@vue/test-utils'
import { describe, expect, it } from 'vitest'
import { defineComponent, h } from 'vue'
import ArrowUpIcon from '../src/icons/linear/arrow-up'

describe('Icon component basics', () => {
    it('mounts an exported icon and renders SVG', () => {
        const wrapper = mount(defineComponent({
            render() {
                return h(ArrowUpIcon, { size: 40, color: '#000' })
            },
        }))
        const svg = wrapper.find('svg')
        expect(svg.exists()).toBe(true)
        expect(svg.attributes('style')).toContain('width')
        expect(svg.attributes('style')).toContain('color')
    })
})
