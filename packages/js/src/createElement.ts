import type { IconNode, SVGProps } from './types'

const defaultAttributes: SVGProps = {
    xmlns: 'http://www.w3.org/2000/svg',
    width: '24',
    height: '24',
    viewBox: '0 0 24 24',
    fill: 'none',
    'stroke-width': '1.5',
}

const createSVGElement = ([tag, attrs, children]: IconNode): SVGElement => {
    const element = document.createElementNS('http://www.w3.org/2000/svg', tag)

    Object.keys(attrs).forEach(name => {
        element.setAttribute(name, String(attrs[name]))
    })

    if (children?.length) {
        children.forEach(child => {
            const childElement = createSVGElement(child)
            element.appendChild(childElement)
        })
    }

    return element
}

export const createElement = (iconNode: IconNode[], customAttrs: SVGProps = {}): SVGElement => {
    const tag = 'svg'
    const attrs = {
        ...defaultAttributes,
        ...customAttrs,
    }

    // iconNode is the array of children parsed from the inner SVG
    return createSVGElement([
        tag,
        attrs as Record<string, string>,
        iconNode as unknown as IconNode[],
    ])
}
