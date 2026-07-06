import { renderToStaticMarkup } from 'react-dom/server'
import { describe, expect, it } from 'vitest'
import { ArrowUpIcon } from '../dist/icons/linear/arrow-up.mjs'

describe('ArrowUpIcon', () => {
    it('renders default SVG with correct attributes', () => {
        const html = renderToStaticMarkup(<ArrowUpIcon />)

        expect(html).toContain('<svg')
        expect(html).toContain('class="solar solar-arrow-up-linear"')
        expect(html).toContain('xmlns="http://www.w3.org/2000/svg"')
        expect(html).toContain('viewBox="0 0 24 24"')
        expect(html).toContain('fill="none"')
        expect(html).toContain('aria-hidden="true"')
    })

    it('uses CSS var fallbacks for size, color, and stroke-width by default', () => {
        const html = renderToStaticMarkup(<ArrowUpIcon />)

        expect(html).toContain('width="var(--solar-size, 24px)"')
        expect(html).toContain('color="var(--solar-color, currentColor)"')
        expect(html).toContain('stroke-width="var(--solar-stroke-width, 1.5)"')
    })

    it('replaces CSS vars with inline style when explicit props are given', () => {
        const html = renderToStaticMarkup(<ArrowUpIcon color="red" size={48} strokeWidth={3} />)

        expect(html).not.toContain('var(--solar-size, 24px)')
        expect(html).not.toContain('var(--solar-color, currentColor)')
        expect(html).not.toContain('var(--solar-stroke-width, 1.5)')

        expect(html).toContain('color:red')
        expect(html).toContain('width:48px')
        expect(html).toContain('height:48px')
        expect(html).toContain('stroke-width:3')
    })

    it('uses literal values instead of CSS vars when isolated', () => {
        const html = renderToStaticMarkup(<ArrowUpIcon isolated={true} />)

        expect(html).toContain('width="24px"')
        expect(html).toContain('color="currentColor"')
        expect(html).toContain('stroke-width="1.5"')
        expect(html).not.toContain('var(--solar-size')
        expect(html).not.toContain('var(--solar-color')
        expect(html).not.toContain('var(--solar-stroke-width')

        expect(html).toContain('--solar-secondary-color:initial')
        expect(html).toContain('--solar-secondary-opacity:initial')
    })

    it('isolated + explicit color does not override duotone', () => {
        const html = renderToStaticMarkup(<ArrowUpIcon isolated={true} color="red" />)

        expect(html).toContain('color:red')
        expect(html).not.toContain('var(--solar-color')
        expect(html).toContain('--solar-secondary-color:initial')
    })

    it('merges className with solar prefix', () => {
        const html = renderToStaticMarkup(<ArrowUpIcon className="my-extra" />)

        expect(html).toContain('class="solar solar-arrow-up-linear my-extra"')
    })
})
