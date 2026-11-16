import { createSignal, flush } from 'solid-js'
import { describe, expect, it } from 'vitest'

import { ArrowUpIcon } from '../../src/icons/linear/arrow-up'
import { SolarProvider, useSolar, type SolarState } from '../../src/lib/SolarProvider'
import { mount } from './helpers'

describe('SolarProvider', () => {
    it('renders a display: contents wrapper around its children', () => {
        const { container } = mount(() => (
            <SolarProvider>
                <ArrowUpIcon />
            </SolarProvider>
        ))
        const wrapper = container.firstElementChild as HTMLElement

        expect(wrapper.tagName).toBe('DIV')
        expect(wrapper.style.getPropertyValue('display')).toBe('contents')
        expect(wrapper.querySelector('svg')).not.toBeNull()
    })

    it('sets no CSS variable when no value is given', () => {
        const { container } = mount(() => (
            <SolarProvider>
                <span />
            </SolarProvider>
        ))
        const wrapper = container.firstElementChild as HTMLElement

        expect(wrapper.getAttribute('style')).toBe('display: contents;')
    })

    it('sets the CSS variables from its props', () => {
        const { container } = mount(() => (
            <SolarProvider
                color="tomato"
                size={32}
                strokeWidth={2}
                secondaryColor="gold"
                secondaryOpacity={0.3}>
                <span />
            </SolarProvider>
        ))
        const style = (container.firstElementChild as HTMLElement).style

        expect(style.getPropertyValue('--solar-color')).toBe('tomato')
        expect(style.getPropertyValue('--solar-size')).toBe('32px')
        expect(style.getPropertyValue('--solar-stroke-width')).toBe('2')
        expect(style.getPropertyValue('--solar-secondary-color')).toBe('gold')
        expect(style.getPropertyValue('--solar-secondary-opacity')).toBe('0.3')
    })

    it('passes string sizes through unchanged', () => {
        const { container } = mount(() => (
            <SolarProvider size="2rem">
                <span />
            </SolarProvider>
        ))

        expect(
            (container.firstElementChild as HTMLElement).style.getPropertyValue('--solar-size')
        ).toBe('2rem')
    })

    it('follows reactive props', () => {
        const [color, setColor] = createSignal('red')
        const [size, setSize] = createSignal<number | undefined>(16)
        const { container } = mount(() => (
            <SolarProvider color={color()} size={size()}>
                <span />
            </SolarProvider>
        ))
        const style = (container.firstElementChild as HTMLElement).style

        expect(style.getPropertyValue('--solar-color')).toBe('red')
        setColor('blue')
        setSize(undefined)
        flush()
        expect(style.getPropertyValue('--solar-color')).toBe('blue')
        expect(style.getPropertyValue('--solar-size')).toBe('')
    })

    it('lets icons inherit nothing but CSS variables (no icon re-render)', () => {
        const [color, setColor] = createSignal('red')
        const { container } = mount(() => (
            <SolarProvider color={color()}>
                <ArrowUpIcon />
            </SolarProvider>
        ))
        const svg = container.querySelector('svg')

        setColor('green')
        flush()
        expect(container.querySelector('svg')).toBe(svg)
        expect(svg!.getAttribute('color')).toBe('var(--solar-color, currentColor)')
    })
})

describe('useSolar', () => {
    function capture() {
        let state: SolarState | undefined
        function Probe() {
            state = useSolar()
            return <span />
        }
        return { Probe, state: () => state! }
    }

    it('exposes accessors that mirror the provider props', () => {
        const { Probe, state } = capture()
        mount(() => (
            <SolarProvider
                color="red"
                size={20}
                strokeWidth={1}
                secondaryColor="blue"
                secondaryOpacity={0.5}>
                <Probe />
            </SolarProvider>
        ))

        expect(state().color()).toBe('red')
        expect(state().size()).toBe(20)
        expect(state().strokeWidth()).toBe(1)
        expect(state().secondaryColor()).toBe('blue')
        expect(state().secondaryOpacity()).toBe(0.5)
    })

    it('updates the wrapper through the setters', () => {
        const { Probe, state } = capture()
        const { container } = mount(() => (
            <SolarProvider color="red">
                <Probe />
            </SolarProvider>
        ))
        const style = (container.firstElementChild as HTMLElement).style

        state().setColor('purple')
        state().setSize(40)
        state().setStrokeWidth(3)
        state().setSecondaryColor('pink')
        state().setSecondaryOpacity(0.9)
        flush()

        expect(state().color()).toBe('purple')
        expect(style.getPropertyValue('--solar-color')).toBe('purple')
        expect(style.getPropertyValue('--solar-size')).toBe('40px')
        expect(style.getPropertyValue('--solar-stroke-width')).toBe('3')
        expect(style.getPropertyValue('--solar-secondary-color')).toBe('pink')
        expect(style.getPropertyValue('--solar-secondary-opacity')).toBe('0.9')
    })

    it('treats a function value as a value, not as an updater', () => {
        const { Probe, state } = capture()
        mount(() => (
            <SolarProvider>
                <Probe />
            </SolarProvider>
        ))

        state().setColor('teal')
        flush()
        expect(state().color()).toBe('teal')
    })

    it('lets a parent prop change override an earlier setter call', () => {
        const [color, setColor] = createSignal('red')
        const { Probe, state } = capture()
        mount(() => (
            <SolarProvider color={color()}>
                <Probe />
            </SolarProvider>
        ))

        state().setColor('purple')
        flush()
        expect(state().color()).toBe('purple')

        setColor('green')
        flush()
        expect(state().color()).toBe('green')
    })

    it('reads reactively inside components below the provider', () => {
        function Label() {
            const { color } = useSolar()
            return <p>{color()}</p>
        }
        const [color, setColor] = createSignal('red')
        const { container } = mount(() => (
            <SolarProvider color={color()}>
                <Label />
            </SolarProvider>
        ))

        expect(container.querySelector('p')!.textContent).toBe('red')
        setColor('blue')
        flush()
        expect(container.querySelector('p')!.textContent).toBe('blue')
    })

    it('throws when no provider is mounted', () => {
        function Orphan() {
            useSolar()
            return <span />
        }
        // Solid 2 rejects the render with its own ContextNotFoundError.
        expect(() => mount(() => <Orphan />)).toThrow(/context/i)
    })

    it('uses the nearest provider', () => {
        const { Probe, state } = capture()
        mount(() => (
            <SolarProvider color="outer">
                <SolarProvider color="inner">
                    <Probe />
                </SolarProvider>
            </SolarProvider>
        ))

        expect(state().color()).toBe('inner')
    })
})
