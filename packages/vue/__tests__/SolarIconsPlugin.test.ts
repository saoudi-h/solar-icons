import { mount } from '@vue/test-utils'
import { beforeEach, describe, expect, it } from 'vitest'
import { defineComponent, nextTick } from 'vue'
import { SolarIconsPlugin, useSolar } from '../src/lib/useSolar'

describe('SolarIconsPlugin', () => {
    beforeEach(() => {
        document.body.style.cssText = ''
        document.body.innerHTML = ''
    })

    it('writes the configured defaults as CSS variables on document.body', async () => {
        const Consumer = defineComponent({
            name: 'Consumer',
            setup() {
                return {}
            },
            template: '<div id="slot">slot</div>',
        })

        mount(Consumer, {
            global: {
                plugins: [[SolarIconsPlugin, { color: '#ef4444', size: 40, strokeWidth: 2 }]],
            },
            attachTo: document.body,
        })

        await nextTick()
        expect(document.body.style.getPropertyValue('--solar-color')).toBe('#ef4444')
        expect(document.body.style.getPropertyValue('--solar-size')).toBe('40px')
        expect(document.body.style.getPropertyValue('--solar-stroke-width')).toBe('2')
    })

    it('removes the CSS variables when a value is unset', async () => {
        const Consumer = defineComponent({
            name: 'Consumer',
            setup() {
                return {}
            },
            template: '<div id="slot">slot</div>',
        })

        mount(Consumer, {
            global: { plugins: [[SolarIconsPlugin, { color: '#ef4444' }]] },
            attachTo: document.body,
        })

        await nextTick()
        expect(document.body.style.getPropertyValue('--solar-color')).toBe('#ef4444')
        expect(document.body.style.getPropertyValue('--solar-size')).toBe('')
    })

    it('keeps useSolar() usable without a <SolarProvider>', () => {
        const Consumer = defineComponent({
            name: 'Consumer',
            setup() {
                const solar = useSolar()
                return { solar }
            },
            template: '<button id="btn" @click="solar.setColor(\'#0ea5e9\')">x</button>',
        })

        const wrapper = mount(Consumer, {
            global: { plugins: [[SolarIconsPlugin, { color: '#ef4444' }]] },
            attachTo: document.body,
        })

        expect(wrapper.find('#btn').exists()).toBe(true)
    })

    it('updates the CSS variables reactively through useSolar().setColor()', async () => {
        const Consumer = defineComponent({
            name: 'Consumer',
            setup() {
                const solar = useSolar()
                return { solar }
            },
            template: '<button id="btn" @click="solar.setColor(\'#0ea5e9\')">x</button>',
        })

        const wrapper = mount(Consumer, {
            global: { plugins: [[SolarIconsPlugin, { color: '#ef4444' }]] },
            attachTo: document.body,
        })

        expect(document.body.style.getPropertyValue('--solar-color')).toBe('#ef4444')

        await wrapper.find('#btn').trigger('click')
        await nextTick()
        expect(document.body.style.getPropertyValue('--solar-color')).toBe('#0ea5e9')
    })

    it('throws without a provider or plugin', () => {
        const Consumer = defineComponent({
            name: 'Consumer',
            setup() {
                useSolar()
                return {}
            },
            template: '<div />',
        })

        expect(() => mount(Consumer, { attachTo: document.body })).toThrowError(
            /must be used inside a <SolarProvider>/
        )
    })
})
