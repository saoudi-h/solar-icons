import { mount } from '@vue/test-utils'
import { describe, expect, it } from 'vitest'
import { defineComponent, h } from 'vue'
import { ArrowUpIcon as ArrowUpDynamic } from '../src/icons/dynamic/arrow-up'
import { ArrowUpIcon } from '../src/icons/linear/arrow-up'

describe('Icon component basics', () => {
    it('mounts an exported icon and renders SVG', () => {
        const wrapper = mount(
            defineComponent({
                render() {
                    return h(ArrowUpIcon, { size: 40, color: '#000' })
                },
            })
        )
        const svg = wrapper.find('svg')
        expect(svg.exists()).toBe(true)
        expect(svg.attributes('style')).toContain('width')
        expect(svg.attributes('style')).toContain('color')
    })

    it('uses CSS var fallbacks as defaults on SVG attributes', () => {
        const wrapper = mount(
            defineComponent({
                render() {
                    return h(ArrowUpIcon)
                },
            })
        )
        const svg = wrapper.find('svg')
        expect(svg.attributes('width')).toBe('var(--solar-size, 24px)')
        expect(svg.attributes('color')).toBe('var(--solar-color, currentColor)')
        expect(svg.attributes('stroke-width')).toBe('var(--solar-stroke-width, 1.5)')
    })

    it('applies explicit props to inline style', () => {
        const wrapper = mount(
            defineComponent({
                render() {
                    return h(ArrowUpIcon, { size: 48, color: '#000', strokeWidth: 3 })
                },
            })
        )
        const svg = wrapper.find('svg')
        const style = svg.attributes('style')
        expect(style).toContain('width: 48px')
        expect(style).toContain('height: 48px')
        expect(style).toContain('color: rgb(0, 0, 0)')
        expect(style).toContain('stroke-width: 3')
    })

    it('isolated prop bypasses CSS vars with hardcoded defaults', () => {
        const wrapper = mount(
            defineComponent({
                render() {
                    return h(ArrowUpIcon, { isolated: true })
                },
            })
        )
        const svg = wrapper.find('svg')
        expect(svg.attributes('width')).toBe('24px')
        expect(svg.attributes('color')).toBe('currentColor')
        expect(svg.attributes('stroke-width')).toBe('1.5')
        expect(svg.attributes('style')).toContain('--solar-duotone-color: initial')
        expect(svg.attributes('style')).toContain('--solar-duotone-opacity: initial')
    })

    it('isolated + explicit color writes color to style and keeps duotone initial', () => {
        const wrapper = mount(
            defineComponent({
                render() {
                    return h(ArrowUpIcon, { isolated: true, color: 'blue' })
                },
            })
        )
        const svg = wrapper.find('svg')
        expect(svg.attributes('style')).toContain('color: blue')
        expect(svg.attributes('style')).toContain('--solar-duotone-color: initial')
    })

    it('merges external class with the icon base class', () => {
        const wrapper = mount(
            defineComponent({
                render() {
                    return h(ArrowUpIcon, { class: 'my-extra' })
                },
            })
        )
        const svg = wrapper.find('svg')
        expect(svg.classes()).toContain('solar')
        expect(svg.classes()).toContain('solar-arrow-up-linear')
        expect(svg.classes()).toContain('my-extra')
    })

    it('dynamic icon renders SVG content for the default weight (linear)', () => {
        const wrapper = mount(
            defineComponent({
                render() {
                    return h(ArrowUpDynamic)
                },
            })
        )
        const svg = wrapper.find('svg')
        expect(svg.exists()).toBe(true)
        expect(svg.findAll('path').length).toBeGreaterThan(0)
    })

    it('dynamic icon switches style on weight change', () => {
        const linear = mount(
            defineComponent({
                render() {
                    return h(ArrowUpDynamic)
                },
            })
        )
        const bold = mount(
            defineComponent({
                render() {
                    return h(ArrowUpDynamic, { weight: 'Bold' })
                },
            })
        )
        expect(linear.find('svg').html()).not.toBe(bold.find('svg').html())
    })
})
