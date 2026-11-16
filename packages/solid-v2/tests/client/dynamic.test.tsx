import { createSignal, flush } from 'solid-js'
import { describe, expect, it, vi } from 'vitest'

import { ArrowUpIcon as ArrowUpDynamicIcon } from '../../src/icons/dynamic/arrow-up'
import { HeartIcon as HeartDynamicIcon } from '../../src/icons/dynamic/heart'
import type { Weight } from '../../src/lib/dynamic-icon'
import { mount } from './helpers'

describe('dynamic icons', () => {
    it('renders the Linear style by default', () => {
        const el = mount(() => <ArrowUpDynamicIcon />).svg()

        expect(el.getAttribute('class')).toBe('solar solar-arrow-up-linear')
    })

    it.each([
        ['Bold', 'bold'],
        ['BoldDuotone', 'bold-duotone'],
        ['Broken', 'broken'],
        ['Linear', 'linear'],
        ['LineDuotone', 'line-duotone'],
        ['Outline', 'outline'],
    ] as const)('renders the %s style', (weight, kebab) => {
        const el = mount(() => <ArrowUpDynamicIcon weight={weight} />).svg()

        expect(el.getAttribute('class')).toBe(`solar solar-arrow-up-${kebab}`)
    })

    it('switches style reactively and replaces the body', () => {
        const [weight, setWeight] = createSignal<Weight>('Linear')
        const { container } = mount(() => <ArrowUpDynamicIcon weight={weight()} />)
        const linearBody = container.querySelector('svg g')!.innerHTML

        expect(container.querySelectorAll('svg')).toHaveLength(1)
        setWeight('Bold')
        flush()

        expect(container.querySelectorAll('svg')).toHaveLength(1)
        expect(container.querySelector('svg')!.getAttribute('class')).toBe(
            'solar solar-arrow-up-bold'
        )
        expect(container.querySelector('svg g')!.innerHTML).not.toBe(linearBody)
    })

    it('does not leak weight or styles to the DOM', () => {
        const el = mount(() => <HeartDynamicIcon weight="Bold" />).svg()

        expect(el.hasAttribute('weight')).toBe(false)
        expect(el.hasAttribute('styles')).toBe(false)
    })

    it('forwards Solar props, classes, events and refs to the rendered icon', () => {
        const onClick = vi.fn()
        let captured: SVGSVGElement | undefined
        const { svg } = mount(() => (
            <ArrowUpDynamicIcon
                weight="Outline"
                color="red"
                size={30}
                class={{ extra: true }}
                onClick={onClick}
                ref={el => (captured = el)}
            />
        ))
        const el = svg()

        expect(captured).toBe(el)
        expect(el.style.getPropertyValue('color')).toBe('red')
        expect(el.style.getPropertyValue('width')).toBe('30px')
        expect(el.classList.contains('extra')).toBe(true)
        el.dispatchEvent(new MouseEvent('click', { bubbles: true }))
        expect(onClick).toHaveBeenCalledTimes(1)
    })

    it('keeps forwarded props reactive across a style switch', () => {
        const [weight, setWeight] = createSignal<Weight>('Linear')
        const [color, setColor] = createSignal('red')
        const { svg } = mount(() => <ArrowUpDynamicIcon weight={weight()} color={color()} />)

        setWeight('Broken')
        setColor('blue')
        flush()

        expect(svg().getAttribute('class')).toBe('solar solar-arrow-up-broken')
        expect(svg().style.getPropertyValue('color')).toBe('blue')
    })

    it('can come back to a previous style', () => {
        const [weight, setWeight] = createSignal<Weight>('Bold')
        const { svg } = mount(() => <ArrowUpDynamicIcon weight={weight()} />)

        setWeight('Outline')
        flush()
        setWeight('Bold')
        flush()
        expect(svg().getAttribute('class')).toBe('solar solar-arrow-up-bold')
    })
})
