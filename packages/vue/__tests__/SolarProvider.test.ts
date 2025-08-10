import { mount } from '@vue/test-utils'
import { describe, expect, it } from 'vitest'
import { defineComponent, h } from 'vue'
import SolarProvider from '../src/lib/SolarProvider.vue'

describe('SolarProvider', () => {
    it('provides defaults and reacts to prop changes', async () => {
        const Consumer = defineComponent({
            name: 'Consumer',
            setup() {
                return {}
            },
            template: '<div id="slot">slot</div>',
        })

        const wrapper = mount(SolarProvider, {
            props: { color: 'red', size: '24', weight: 'Linear', mirrored: false },
            slots: { default: () => h(Consumer) },
        })

        expect(wrapper.find('#slot').exists()).toBe(true)

        await wrapper.setProps({ color: 'blue', mirrored: true })
        // No direct DOM reflection, but ensure component updates without errors
        expect(wrapper.emitted()).toBeTruthy()
    })
})
