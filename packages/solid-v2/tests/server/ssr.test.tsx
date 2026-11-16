import { isServer, renderToString } from '@solidjs/web'
import { createSignal } from 'solid-js'
import { describe, expect, it } from 'vitest'

import { ArrowUpIcon as ArrowUpBoldIcon } from '../../src/icons/bold/arrow-up'
import { ArrowUpIcon as ArrowUpDynamicIcon } from '../../src/icons/dynamic/arrow-up'
import { ArrowUpIcon } from '../../src/icons/linear/arrow-up'
import { SolarProvider, useSolar } from '../../src/lib/SolarProvider'

describe('server rendering', () => {
    it('runs against the server build of Solid', () => {
        expect(isServer).toBe(true)
    })

    it('renders the default SVG attributes', () => {
        const html = renderToString(() => <ArrowUpIcon />)

        expect(html).toContain('<svg')
        expect(html).toContain('xmlns="http://www.w3.org/2000/svg"')
        expect(html).toContain('viewBox="0 0 24 24"')
        expect(html).toContain('fill="none"')
        expect(html).toContain('class="solar solar-arrow-up-linear"')
        expect(html).toContain('aria-hidden="true"')
        expect(html).toContain('width="1em"')
        expect(html).toContain('height="1em"')
        expect(html).toContain('color="var(--solar-color, currentColor)"')
        expect(html).toContain('stroke-width="var(--solar-stroke-width, 1.5)"')
        expect(html).toContain('font-size:var(--solar-size, 24px)')
    })

    it('renders the body inside a <g> of the same <svg>', () => {
        const html = renderToString(() => <ArrowUpIcon />)

        expect(html.match(/<svg/g)).toHaveLength(1)
        expect(html).toMatch(/<g[^>]*><path/)
    })

    it('renders explicit props as inline style', () => {
        const html = renderToString(() => <ArrowUpIcon color="red" size={48} strokeWidth={3} />)

        expect(html).toContain('color:red')
        expect(html).toContain('width:48px')
        expect(html).toContain('height:48px')
        expect(html).toContain('stroke-width:3')
    })

    it('renders isolated icons with hardcoded defaults', () => {
        const html = renderToString(() => <ArrowUpIcon isolated />)

        expect(html).toContain('width="24px"')
        expect(html).toContain('color="currentColor"')
        expect(html).toContain('--solar-secondary-color:initial')
    })

    it('renders string, object and array classes', () => {
        expect(renderToString(() => <ArrowUpIcon class="my-extra" />)).toContain(
            'class="solar solar-arrow-up-linear my-extra"'
        )
        expect(
            renderToString(() => <ArrowUpIcon class={['a', { b: true, c: false }]} />)
        ).toContain('class="solar solar-arrow-up-linear a b"')
    })

    it('renders user style strings and objects', () => {
        expect(renderToString(() => <ArrowUpIcon style="opacity: 0.5" />)).toContain('opacity:0.5')
        expect(renderToString(() => <ArrowUpIcon style={{ opacity: '0.5' }} />)).toContain(
            'opacity:0.5'
        )
    })

    it('renders accessibility attributes and a <title>', () => {
        const html = renderToString(() => <ArrowUpIcon alt="Go up" />)

        expect(html).toContain('<title>Go up</title>')
        expect(html).not.toContain('aria-hidden')
        expect(renderToString(() => <ArrowUpIcon aria-label="Up" />)).not.toContain('aria-hidden')
    })

    it('passes attributes through and never emits Solar props', () => {
        const html = renderToString(() => (
            <ArrowUpIcon
                data-testid="icon"
                role="img"
                tabindex={0}
                size={10}
                secondaryColor="red"
            />
        ))

        expect(html).toContain('data-testid="icon"')
        expect(html).toContain('role="img"')
        expect(html).toContain('tabindex="0"')
        for (const name of ['iconname', 'iconbody', 'secondarycolor', 'size=', 'isolated']) {
            expect(html.toLowerCase(), name).not.toContain(name)
        }
    })

    it('does not run event handlers or refs on the server', () => {
        let called = false
        const html = renderToString(() => (
            <ArrowUpIcon
                onClick={() => {
                    called = true
                }}
                ref={() => {
                    called = true
                }}
            />
        ))

        expect(html).toContain('<svg')
        expect(called).toBe(false)
    })

    it('renders each style with its own class', () => {
        expect(renderToString(() => <ArrowUpBoldIcon />)).toContain(
            'class="solar solar-arrow-up-bold"'
        )
    })
})

describe('server rendering of dynamic icons', () => {
    it('defaults to Linear and honours weight', () => {
        expect(renderToString(() => <ArrowUpDynamicIcon />)).toContain(
            'class="solar solar-arrow-up-linear"'
        )
        expect(renderToString(() => <ArrowUpDynamicIcon weight="Bold" />)).toContain(
            'class="solar solar-arrow-up-bold"'
        )
    })

    it('does not leak weight or styles', () => {
        const html = renderToString(() => <ArrowUpDynamicIcon weight="Outline" />)

        expect(html).not.toContain('weight=')
        expect(html).not.toContain('styles=')
    })

    it('renders signal-driven weight once', () => {
        const [weight] = createSignal<'Bold' | 'Broken'>('Broken')
        const html = renderToString(() => <ArrowUpDynamicIcon weight={weight()} />)

        expect(html.match(/<svg/g)).toHaveLength(1)
        expect(html).toContain('solar-arrow-up-broken')
    })
})

describe('server rendering of SolarProvider', () => {
    it('renders the wrapper with CSS variables', () => {
        const html = renderToString(() => (
            <SolarProvider
                color="tomato"
                size={32}
                strokeWidth={2}
                secondaryColor="gold"
                secondaryOpacity={0.3}>
                <ArrowUpIcon />
            </SolarProvider>
        ))

        expect(html).toContain('display:contents')
        expect(html).toContain('--solar-color:tomato')
        expect(html).toContain('--solar-size:32px')
        expect(html).toContain('--solar-stroke-width:2')
        expect(html).toContain('--solar-secondary-color:gold')
        expect(html).toContain('--solar-secondary-opacity:0.3')
        expect(html).toContain('<svg')
    })

    it('shares its state with descendants', () => {
        function Label() {
            return <p>{useSolar().color()}</p>
        }
        const html = renderToString(() => (
            <SolarProvider color="teal">
                <Label />
            </SolarProvider>
        ))

        expect(html).toContain('teal')
    })
})
