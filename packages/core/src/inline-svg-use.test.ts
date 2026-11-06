import { describe, expect, it } from 'vitest'

import { inlineSvgUse } from './inline-svg-use.mjs'

describe('Figma local path references', () => {
    it('inlines repeated path references with inherited paint and transforms', () => {
        const raw =
            '<svg><use xlink:href="#shape" fill="black"/><use href="#shape" transform="translate(1 2)"></use><defs><path id="shape" d="M1 2L3 4" fill-rule="evenodd"/></defs></svg>'
        const result = inlineSvgUse(raw)
        expect(result).not.toContain('<use')
        expect(result).toContain('<g fill="black"><path d="M1 2L3 4" fill-rule="evenodd"/></g>')
        expect(result).toContain(
            '<g transform="translate(1 2)"><path d="M1 2L3 4" fill-rule="evenodd"/></g>'
        )
    })
    it('preserves files without references byte for byte', () => {
        const raw = '<svg><path d="M1 2L3 4"/></svg>'
        expect(inlineSvgUse(raw)).toBe(raw)
    })
    it.each(['external.svg#shape', '#missing', ''])('rejects unsupported references: %s', href => {
        expect(() => inlineSvgUse(`<svg><use href="${href}"/></svg>`)).toThrow('Unsupported')
    })
    it('rejects duplicate reference targets', () => {
        expect(() => inlineSvgUse('<use href="#a"/><path id="a"/><path id="a"/>')).toThrow(
            'Duplicate'
        )
    })
})
