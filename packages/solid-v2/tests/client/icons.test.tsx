import { createSignal, flush } from 'solid-js'
import { describe, expect, it, vi } from 'vitest'

import { ArrowUpIcon as ArrowUpBoldDuotoneIcon } from '../../src/icons/bold-duotone/arrow-up'
import { ArrowUpIcon as ArrowUpBoldIcon } from '../../src/icons/bold/arrow-up'
import { ArrowUpIcon } from '../../src/icons/linear/arrow-up'
import IconBase from '../../src/lib/IconBase'
import { mount } from './helpers'

describe('static icon rendering', () => {
    it('renders the default SVG attributes', () => {
        const { svg } = mount(() => <ArrowUpIcon />)
        const el = svg()

        expect(el.namespaceURI).toBe('http://www.w3.org/2000/svg')
        expect(el.getAttribute('xmlns')).toBe('http://www.w3.org/2000/svg')
        expect(el.getAttribute('viewBox')).toBe('0 0 24 24')
        expect(el.getAttribute('fill')).toBe('none')
        expect(el.getAttribute('aria-hidden')).toBe('true')
        expect(el.getAttribute('class')).toBe('solar solar-arrow-up-linear')
    })

    it('falls back to CSS variables for size, color and stroke width', () => {
        const el = mount(() => <ArrowUpIcon />).svg()

        expect(el.getAttribute('width')).toBe('1em')
        expect(el.getAttribute('height')).toBe('1em')
        expect(el.getAttribute('color')).toBe('var(--solar-color, currentColor)')
        expect(el.getAttribute('stroke-width')).toBe('var(--solar-stroke-width, 1.5)')
        expect(el.style.getPropertyValue('font-size')).toBe('var(--solar-size, 24px)')
    })

    it('mounts the body inside a <g> of the same <svg>, never a nested <svg>', () => {
        const { container } = mount(() => <ArrowUpIcon />)

        expect(container.querySelectorAll('svg')).toHaveLength(1)
        const group = container.querySelector('svg > g')
        expect(group).not.toBeNull()
        expect(group!.namespaceURI).toBe('http://www.w3.org/2000/svg')
        expect(group!.querySelector('path')!.namespaceURI).toBe('http://www.w3.org/2000/svg')
    })

    it('applies explicit props as inline style', () => {
        const el = mount(() => <ArrowUpIcon color="red" size={48} strokeWidth={3} />).svg()

        expect(el.style.getPropertyValue('color')).toBe('red')
        expect(el.style.getPropertyValue('width')).toBe('48px')
        expect(el.style.getPropertyValue('height')).toBe('48px')
        expect(el.style.getPropertyValue('stroke-width')).toBe('3')
        expect(el.hasAttribute('width')).toBe(false)
        expect(el.hasAttribute('color')).toBe(false)
        expect(el.hasAttribute('stroke-width')).toBe(false)
    })

    it('accepts string sizes without adding a unit', () => {
        const el = mount(() => <ArrowUpIcon size="2rem" />).svg()

        expect(el.style.getPropertyValue('width')).toBe('2rem')
        expect(el.style.getPropertyValue('height')).toBe('2rem')
    })

    it('uses hardcoded defaults when isolated', () => {
        const el = mount(() => <ArrowUpIcon isolated />).svg()

        expect(el.getAttribute('width')).toBe('24px')
        expect(el.getAttribute('height')).toBe('24px')
        expect(el.getAttribute('color')).toBe('currentColor')
        expect(el.getAttribute('stroke-width')).toBe('1.5')
        expect(el.style.getPropertyValue('--solar-secondary-color')).toBe('initial')
        expect(el.style.getPropertyValue('--solar-secondary-opacity')).toBe('initial')
        expect(el.style.getPropertyValue('font-size')).toBe('')
    })

    it('keeps the isolation of duotone variables when a color is passed', () => {
        const el = mount(() => <ArrowUpIcon isolated color="red" />).svg()

        expect(el.style.getPropertyValue('color')).toBe('red')
        expect(el.style.getPropertyValue('--solar-secondary-color')).toBe('initial')
    })

    it('sets the duotone variables from secondaryColor and secondaryOpacity', () => {
        const el = mount(() => (
            <ArrowUpBoldDuotoneIcon secondaryColor="orange" secondaryOpacity={0.25} />
        )).svg()

        expect(el.style.getPropertyValue('--solar-secondary-color')).toBe('orange')
        expect(el.style.getPropertyValue('--solar-secondary-opacity')).toBe('0.25')
        expect(el.getAttribute('class')).toBe('solar solar-arrow-up-bold-duotone')
    })

    it('renders the duotone accent as a styled element of the body', () => {
        const { container } = mount(() => <ArrowUpBoldDuotoneIcon />)
        const styled = [...container.querySelectorAll('svg g *')].filter(node =>
            node.getAttribute('style')?.includes('--solar-secondary-opacity')
        )

        expect(styled.length).toBeGreaterThan(0)
    })
})

describe('accessibility', () => {
    it('hides the icon from assistive technology by default', () => {
        expect(
            mount(() => <ArrowUpIcon />)
                .svg()
                .getAttribute('aria-hidden')
        ).toBe('true')
    })

    it('exposes the icon when alt is set and renders a <title>', () => {
        const el = mount(() => <ArrowUpIcon alt="Go up" />).svg()

        expect(el.hasAttribute('aria-hidden')).toBe(false)
        expect(el.querySelector(':scope > title')!.textContent).toBe('Go up')
    })

    it('exposes the icon when aria-label is set', () => {
        const el = mount(() => <ArrowUpIcon aria-label="Arrow up" />).svg()

        expect(el.getAttribute('aria-label')).toBe('Arrow up')
        expect(el.hasAttribute('aria-hidden')).toBe(false)
    })

    it('renders no <title> without alt', () => {
        expect(
            mount(() => <ArrowUpIcon />)
                .svg()
                .querySelector('title')
        ).toBeNull()
    })
})

describe('classes', () => {
    it('appends a string class after the Solar classes', () => {
        const el = mount(() => <ArrowUpIcon class="my-extra" />).svg()

        expect(el.getAttribute('class')).toBe('solar solar-arrow-up-linear my-extra')
    })

    it('accepts object and array class values', () => {
        const el = mount(() => (
            <ArrowUpIcon class={['a', { b: true, c: false }, [{ d: true }, 'e']]} />
        )).svg()

        expect([...el.classList].sort()).toEqual(
            ['a', 'b', 'd', 'e', 'solar', 'solar-arrow-up-linear'].sort()
        )
    })

    it('updates reactive classes without losing the Solar classes', () => {
        const [active, setActive] = createSignal(false)
        const el = mount(() => <ArrowUpIcon class={{ active: active() }} />).svg()

        expect(el.classList.contains('active')).toBe(false)
        setActive(true)
        flush()
        expect(el.classList.contains('active')).toBe(true)
        expect(el.classList.contains('solar')).toBe(true)
        expect(el.classList.contains('solar-arrow-up-linear')).toBe(true)
        setActive(false)
        flush()
        expect(el.classList.contains('active')).toBe(false)
        expect(el.classList.contains('solar')).toBe(true)
    })
})

describe('style', () => {
    it('merges a user style object under the Solar values', () => {
        const el = mount(() => (
            <ArrowUpIcon style={{ opacity: '0.5', width: '99px' }} size={32} />
        )).svg()

        expect(el.style.getPropertyValue('opacity')).toBe('0.5')
        expect(el.style.getPropertyValue('width')).toBe('32px')
    })

    it('accepts a user style string', () => {
        const el = mount(() => <ArrowUpIcon style="opacity: 0.5; margin-left: 4px" />).svg()

        expect(el.style.getPropertyValue('opacity')).toBe('0.5')
        expect(el.style.getPropertyValue('margin-left')).toBe('4px')
        expect(el.style.getPropertyValue('font-size')).toBe('var(--solar-size, 24px)')
    })

    it('keeps semicolons and colons inside url() and quoted values', () => {
        const el = mount(() => (
            <ArrowUpIcon
                style={`background-image: url("data:image/svg+xml;base64,AAA="); color: blue`}
            />
        )).svg()

        expect(el.style.getPropertyValue('background-image')).toContain(
            'data:image/svg+xml;base64,AAA='
        )
        expect(el.style.getPropertyValue('color')).toBe('blue')
    })

    it('respects a user font-size', () => {
        const el = mount(() => <ArrowUpIcon style={{ 'font-size': '40px' }} />).svg()

        expect(el.style.getPropertyValue('font-size')).toBe('40px')
    })
})

describe('reactive props', () => {
    it('updates color, size and stroke width when signals change', () => {
        const [color, setColor] = createSignal('red')
        const [size, setSize] = createSignal<number | string>(16)
        const [stroke, setStroke] = createSignal(1)
        const el = mount(() => (
            <ArrowUpIcon color={color()} size={size()} strokeWidth={stroke()} />
        )).svg()

        expect(el.style.getPropertyValue('color')).toBe('red')
        expect(el.style.getPropertyValue('width')).toBe('16px')
        expect(el.style.getPropertyValue('stroke-width')).toBe('1')

        setColor('green')
        setSize('3em')
        setStroke(2.5)
        flush()

        expect(el.style.getPropertyValue('color')).toBe('green')
        expect(el.style.getPropertyValue('width')).toBe('3em')
        expect(el.style.getPropertyValue('height')).toBe('3em')
        expect(el.style.getPropertyValue('stroke-width')).toBe('2.5')
    })

    it('switches between prop values and CSS variable fallbacks', () => {
        const [size, setSize] = createSignal<number | undefined>(20)
        const el = mount(() => <ArrowUpIcon size={size()} />).svg()

        expect(el.hasAttribute('width')).toBe(false)
        setSize(undefined)
        flush()
        expect(el.getAttribute('width')).toBe('1em')
        expect(el.style.getPropertyValue('font-size')).toBe('var(--solar-size, 24px)')
    })

    it('updates alt, isolation and accessibility together', () => {
        const [alt, setAlt] = createSignal<string | undefined>(undefined)
        const [isolated, setIsolated] = createSignal(false)
        const el = mount(() => <ArrowUpIcon alt={alt()} isolated={isolated()} />).svg()

        expect(el.getAttribute('aria-hidden')).toBe('true')
        setAlt('Up')
        setIsolated(true)
        flush()
        expect(el.hasAttribute('aria-hidden')).toBe(false)
        expect(el.querySelector('title')!.textContent).toBe('Up')
        expect(el.getAttribute('width')).toBe('24px')
        setAlt(undefined)
        flush()
        expect(el.getAttribute('aria-hidden')).toBe('true')
        expect(el.querySelector('title')).toBeNull()
    })

    it('updates passthrough attributes', () => {
        const [label, setLabel] = createSignal('one')
        const el = mount(() => <ArrowUpIcon data-label={label()} />).svg()

        expect(el.getAttribute('data-label')).toBe('one')
        setLabel('two')
        flush()
        expect(el.getAttribute('data-label')).toBe('two')
    })
})

describe('attributes, events and refs', () => {
    it('passes SVG, data and ARIA attributes through', () => {
        const el = mount(() => (
            <ArrowUpIcon data-testid="icon" role="img" tabindex={0} aria-describedby="hint" />
        )).svg()

        expect(el.getAttribute('data-testid')).toBe('icon')
        expect(el.getAttribute('role')).toBe('img')
        expect(el.getAttribute('tabindex')).toBe('0')
        expect(el.getAttribute('aria-describedby')).toBe('hint')
    })

    it('lets the caller override the viewBox and fill', () => {
        const el = mount(() => <ArrowUpIcon viewBox="0 0 48 48" fill="currentColor" />).svg()

        expect(el.getAttribute('viewBox')).toBe('0 0 48 48')
        expect(el.getAttribute('fill')).toBe('currentColor')
    })

    it('never leaks Solar props to the DOM', () => {
        const el = mount(() => (
            <ArrowUpIcon
                alt="x"
                color="red"
                size={10}
                strokeWidth={2}
                secondaryColor="blue"
                secondaryOpacity={0.4}
                isolated
            />
        )).svg()

        for (const name of [
            'alt',
            'size',
            'strokewidth',
            'strokeWidth',
            'secondarycolor',
            'secondaryColor',
            'secondaryopacity',
            'secondaryOpacity',
            'isolated',
            'iconname',
            'iconName',
            'iconbody',
            'iconBody',
        ]) {
            expect(el.hasAttribute(name), name).toBe(false)
        }
    })

    it('calls event handlers', () => {
        const onClick = vi.fn()
        const el = mount(() => <ArrowUpIcon onClick={onClick} />).svg()

        el.dispatchEvent(new MouseEvent('click', { bubbles: true }))
        expect(onClick).toHaveBeenCalledTimes(1)
    })

    it('handles events fired from the icon body', () => {
        const onClick = vi.fn()
        const { svg } = mount(() => <ArrowUpIcon onClick={onClick} />)

        svg()
            .querySelector('path')!
            .dispatchEvent(new MouseEvent('click', { bubbles: true }))
        expect(onClick).toHaveBeenCalledTimes(1)
    })

    it('gives the <svg> element to a ref callback', () => {
        let captured: SVGSVGElement | undefined
        const { svg } = mount(() => <ArrowUpIcon ref={el => (captured = el)} />)

        expect(captured).toBe(svg())
        expect(captured).toBeInstanceOf(SVGSVGElement)
    })

    it('supports an array of refs', () => {
        const seen: Array<SVGSVGElement | undefined> = []
        const { svg } = mount(() => (
            <ArrowUpIcon ref={[el => seen.push(el), el => seen.push(el)]} />
        ))

        expect(seen).toEqual([svg(), svg()])
    })

    it('exposes different icons per style with their own class', () => {
        const { container } = mount(() => (
            <>
                <ArrowUpIcon />
                <ArrowUpBoldIcon />
            </>
        ))

        const classes = [...container.querySelectorAll('svg')].map(el => el.getAttribute('class'))
        expect(classes).toEqual(['solar solar-arrow-up-linear', 'solar solar-arrow-up-bold'])
    })
})

describe('IconBase', () => {
    it('renders children when no iconBody is given', () => {
        const { container } = mount(() => (
            <IconBase iconName="custom">
                <circle cx="12" cy="12" r="4" />
            </IconBase>
        ))

        expect(container.querySelector('svg > circle')).not.toBeNull()
        expect(container.querySelector('svg > g')).toBeNull()
        expect(container.querySelector('svg')!.getAttribute('class')).toBe('solar solar-custom')
    })

    it('renders only the base class without an iconName', () => {
        const el = mount(() => <IconBase iconBody="<path d='M0 0'/>" />).svg()

        expect(el.getAttribute('class')).toBe('solar')
    })

    it('switches the body when iconBody changes', () => {
        const [body, setBody] = createSignal('<path id="one" d="M0 0"/>')
        const { container } = mount(() => <IconBase iconBody={body()} />)

        expect(container.querySelector('#one')).not.toBeNull()
        setBody('<path id="two" d="M1 1"/>')
        flush()
        expect(container.querySelector('#one')).toBeNull()
        expect(container.querySelector('#two')).not.toBeNull()
    })
})
