import fs from 'node:fs'
import path from 'node:path'

import sharp from 'sharp'
import { beforeAll, describe, expect, it } from 'vitest'

import { applyDuotoneStyle, findNestedAccentOpacity } from './codegen'
import { parseSvgs, transformDuotoneAccent, type ParsedIcon } from './parser'

const HTML_STYLE =
    'style="color: var(--solar-secondary-color, currentColor); opacity: var(--solar-secondary-opacity, 0.5)"'

/** Number of times the secondary-opacity variable appears. */
const count = (s: string): number => (s.match(/--solar-secondary-opacity/g) ?? []).length

/**
 * Highest number of nested elements carrying the secondary opacity on one
 * root-to-leaf path. Anything above 1 multiplies the opacity.
 */
const maxOpacityDepth = (svg: string): number => {
    let open: boolean[] = []
    let max = 0
    for (const m of svg.matchAll(/<(\/)?[a-zA-Z][^>]*?(\/)?>/g)) {
        const [tag, closing, selfClosing] = m
        if (closing) {
            open.pop()
            continue
        }
        open.push(tag.includes('--solar-secondary-opacity'))
        max = Math.max(max, open.filter(Boolean).length)
        if (selfClosing) open.pop()
    }
    return max
}

describe('applyDuotoneStyle', () => {
    it('styles a single self-closing element once', () => {
        const out = applyDuotoneStyle('<path opacity="0.5" d="M0 0"/>')!
        expect(out).toBe(`<path d="M0 0" ${HTML_STYLE}/>`)
    })

    it('styles every sibling accent element', () => {
        const out = applyDuotoneStyle(
            '<path opacity="0.5" d="M0 0"/>\n<circle opacity="0.5" cx="1" cy="1" r="1"/>'
        )!
        expect(count(out)).toBe(2)
        expect(maxOpacityDepth(out)).toBe(1)
    })

    it('styles the group and not its children', () => {
        const out = applyDuotoneStyle(
            '<g opacity="0.5">\n<path d="M0 0" fill="currentColor"/>\n<path d="M1 1" fill="currentColor"/>\n</g>'
        )!
        expect(count(out)).toBe(1)
        expect(out.startsWith(`<g ${HTML_STYLE}>`)).toBe(true)
        expect(out).toContain('<path d="M0 0" fill="currentColor"/>')
    })

    it('styles each group in a sequence of groups once', () => {
        const group = '<g opacity="0.5">\n<path d="M0 0"/>\n<path d="M1 1"/>\n</g>'
        const out = applyDuotoneStyle(`${group}\n${group}\n<path opacity="0.5" d="M2 2"/>`)!
        expect(count(out)).toBe(3)
        expect(maxOpacityDepth(out)).toBe(1)
    })

    it('handles a group written on a single line', () => {
        const out = applyDuotoneStyle('<g opacity="0.5"><path d="M0 0"/><path d="M1 1"/></g>')!
        expect(count(out)).toBe(1)
        expect(out).toBe(`<g ${HTML_STYLE}><path d="M0 0"/><path d="M1 1"/></g>`)
    })

    it('emits the object syntax for jsx', () => {
        const out = applyDuotoneStyle('<g opacity="0.5">\n<path d="M0 0"/>\n</g>', 'jsx')!
        expect(out).toContain('style={{')
        expect(count(out)).toBe(1)
    })

    it('returns null for no accent', () => {
        expect(applyDuotoneStyle(null)).toBeNull()
    })

    it('keeps transformDuotoneAccent identical to applyDuotoneStyle', () => {
        const accent = '<g opacity="0.5">\n<path d="M0 0"/>\n<path d="M1 1"/>\n</g>'
        expect(transformDuotoneAccent(accent)).toBe(applyDuotoneStyle(accent, 'html'))
        expect(transformDuotoneAccent(accent, true)).toBe(applyDuotoneStyle(accent, 'jsx'))
    })
})

describe('findNestedAccentOpacity', () => {
    it('accepts opacity on root elements only', () => {
        expect(
            findNestedAccentOpacity(
                '<g opacity="0.5">\n<path d="M0 0"/>\n</g>\n<path opacity="0.5" d="M1 1"/>'
            )
        ).toBeNull()
    })

    it('flags opacity on a child of an accent group', () => {
        expect(
            findNestedAccentOpacity('<g opacity="0.5">\n<path opacity="0.5" d="M0 0"/>\n</g>')
        ).toContain('<path')
    })

    it('flags a group nested in a group', () => {
        expect(findNestedAccentOpacity('<g opacity="0.5"><g><path d="M0 0"/></g></g>')).toBe('<g>')
    })
})

describe('duotone corpus', () => {
    let duotone: ParsedIcon[]

    beforeAll(async () => {
        const { icons } = await parseSvgs({ preview: false })
        duotone = icons.filter(i => i.duotoneAccentInner !== null)
    })

    it('has accents to check', () => {
        expect(duotone.length).toBeGreaterThan(3000)
        expect(duotone.some(i => i.duotoneAccentInner!.startsWith('<g'))).toBe(true)
    })

    it('never nests the secondary opacity, in either format', () => {
        const offenders: string[] = []
        for (const icon of duotone) {
            for (const format of ['html', 'jsx'] as const) {
                const out = applyDuotoneStyle(icon.duotoneAccentInner, format)!
                if (maxOpacityDepth(out) > 1) offenders.push(`${icon.style}/${icon.name}`)
            }
        }
        expect(offenders).toEqual([])
    })

    it('applies the secondary opacity once per accent root', () => {
        for (const icon of duotone) {
            const accent = icon.duotoneAccentInner!
            let depth = 0
            let roots = 0
            for (const [, closing, selfClosing] of accent.matchAll(/<(\/)?[a-zA-Z][^>]*?(\/)?>/g)) {
                if (closing) depth--
                else {
                    if (depth === 0) roots++
                    if (!selfClosing) depth++
                }
            }
            expect(count(applyDuotoneStyle(accent)!), `${icon.style}/${icon.name}`).toBe(roots)
        }
    })
})

describe('duotone rendering parity', () => {
    const SVGS = path.resolve(import.meta.dirname, '../svgs')
    const SIZE = 72

    /** Render with the CSS variables resolved to their documented defaults. */
    const render = async (svg: string): Promise<Buffer> => {
        const resolved = svg
            .replace(/var\(--solar-secondary-color, currentColor\)/g, 'currentColor')
            .replace(/var\(--solar-secondary-opacity, 0\.5\)/g, '0.5')
        const { data } = await sharp(Buffer.from(resolved), { density: 72 * (SIZE / 24) })
            .resize(SIZE, SIZE)
            .flatten({ background: '#ffffff' })
            .raw()
            .toBuffer({ resolveWithObject: true })
        return data
    }

    const generated = (icon: ParsedIcon, accentStyler: (a: string | null) => string | null) =>
        `<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke-width="1.5" color="#000000">${accentStyler(icon.duotoneAccentInner) ?? ''}${icon.inner}</svg>`

    /**
     * Figma omits `stroke-width` when it is the SVG default of 1, while every
     * package sets the root to 1.5. Give the reference the same root so the
     * comparison isolates what this suite guards: opacity and layering.
     */
    const withPackageStrokeWidth = (svg: string): string =>
        svg.replace(/<svg /, '<svg stroke-width="1.5" ')

    const diff = (a: Buffer, b: Buffer): number => {
        let max = 0
        for (let i = 0; i < a.length; i++) max = Math.max(max, Math.abs(a[i]! - b[i]!))
        return max
    }

    it('detects the compounded opacity this suite guards against', async () => {
        const { icons } = await parseSvgs({ preview: false })
        const printer = icons.find(i => i.style === 'BoldDuotone' && i.name === 'printer')!
        const source = await render(
            fs.readFileSync(path.join(SVGS, printer.category, printer.style, 'printer.svg'), 'utf8')
        )
        // The former implementation: style on the group and on each child.
        const compounded = (accent: string | null) =>
            accent!
                .replace(/\sopacity="0\.5"/g, '')
                .replace(
                    /<(g|path)(\s[^>]*?)?(\/?)>/g,
                    (_m, tag, attrs = '', slash) => `<${tag}${attrs} ${HTML_STYLE}${slash}>`
                )
        expect(diff(source, await render(generated(printer, compounded)))).toBeGreaterThan(40)
    })

    /**
     * Divergences that exist independently of the accent opacity. The color
     * normalization rewrites the `fill="white"` of `<mask>` elements to
     * `currentColor`, which hides the masked strokes. An entry that no longer
     * diverges must be removed.
     */
    const KNOWN_DIVERGENCES = new Set(['LineDuotone/qr-code'])

    it('renders every generated duotone like its source SVG', async () => {
        const { icons } = await parseSvgs({ preview: false })
        const targets = icons.filter(i => i.duotoneAccentInner !== null)
        const offenders: string[] = []
        const stale = new Set(KNOWN_DIVERGENCES)
        for (const icon of targets) {
            const file = path.join(SVGS, icon.category, icon.style, `${icon.name}.svg`)
            const source = await render(withPackageStrokeWidth(fs.readFileSync(file, 'utf8')))
            const out = await render(generated(icon, a => transformDuotoneAccent(a)))
            const id = `${icon.style}/${icon.name}`
            if (diff(source, out) <= 8) continue
            if (stale.delete(id)) continue
            offenders.push(id)
        }
        expect(offenders).toEqual([])
        expect([...stale], 'known divergence no longer diverges').toEqual([])
    }, 180_000)
})
