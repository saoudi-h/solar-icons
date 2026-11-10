/** Inline Figma's local path references so generated fragments are self-contained. */
export function inlineSvgUse(source) {
    if (!/<use\b/.test(source)) return source
    const paths = new Map()
    for (const match of source.matchAll(/<path\b[^>]*\bid="([^"]+)"[^>]*\/>/g)) {
        if (paths.has(match[1])) throw new Error(`Duplicate SVG path id: ${match[1]}`)
        paths.set(match[1], match[0].replace(/\s+id="[^"]*"/, ''))
    }
    const result = source.replace(/<use\b([^>]*?)(?:\/>|>\s*<\/use>)/g, (_element, attributes) => {
        const reference = /\b(?:xlink:)?href="([^"]+)"/.exec(attributes)?.[1]
        if (!reference?.startsWith('#') || !paths.has(reference.slice(1))) {
            throw new Error(`Unsupported SVG use reference: ${reference ?? 'missing href'}`)
        }
        const inherited = attributes.replace(/\s*(?:xlink:)?href="[^"]*"/, '').trim()
        return `<g${inherited ? ` ${inherited}` : ''}>${paths.get(reference.slice(1))}</g>`
    })
    if (/<use\b/.test(result)) throw new Error('Unsupported SVG use element')
    return result
}
