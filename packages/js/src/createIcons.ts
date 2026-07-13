import { createElement } from './createElement'
import type { Icons, SVGProps } from './types'

export interface CreateIconsOptions {
    /**
     * The icons object containing the imported icons to inject.
     */
    icons: Icons
    /**
     * The attribute to look for in the DOM. Defaults to 'data-solar'.
     */
    nameAttr?: string
    /**
     * Additional attributes to add to every injected SVG.
     */
    attrs?: SVGProps
}

const toKebabCase = (string: string) => string.replace(/([a-z0-9])([A-Z])/g, '$1-$2').toLowerCase()

const toPascalCase = (string: string) =>
    string
        .replace(/^[a-z]/, m => m.toUpperCase())
        .replace(/-([a-z0-9])/g, (_, m) => m.toUpperCase())

const getAttrs = (element: Element): Record<string, string> =>
    Array.from(element.attributes).reduce<Record<string, string>>((acc, attr) => {
        acc[attr.name] = attr.value
        return acc
    }, {})

const getClassNames = (attrs: Record<string, any> | string): string[] => {
    if (typeof attrs === 'string') return attrs.split(' ')
    if (!attrs || !attrs.class) return []
    if (typeof attrs.class === 'string') return attrs.class.split(' ')
    if (Array.isArray(attrs.class)) return attrs.class
    return []
}

/**
 * Replaces placeholders in the DOM with Solar Icons.
 *
 * @example
 * ```js
 * import { createIcons, HeartBoldIcon } from '@solar-icons/js'
 * createIcons({ icons: { HeartBoldIcon } })
 * ```
 */
export const createIcons = (
    {
        icons = {},
        nameAttr = 'data-solar',
        attrs = {},
    }: CreateIconsOptions = {} as CreateIconsOptions
) => {
    if (!Object.values(icons).length) {
        throw new Error('Please provide an icons object: createIcons({ icons: { HeartBoldIcon } })')
    }

    if (typeof document === 'undefined') return

    const elements = document.querySelectorAll(`[${nameAttr}]`)

    Array.from(elements).forEach(element => {
        const iconName = element.getAttribute(nameAttr)
        if (!iconName) return

        // E.g. 'heart-bold' -> 'HeartBoldIcon'
        const componentName = toPascalCase(iconName) + 'Icon'
        const iconNode = icons[componentName]

        if (!iconNode) {
            console.warn(
                `${element.outerHTML} icon name (${componentName}) was not found in the provided icons object.`
            )
            return
        }

        console.log('DEBUG:', componentName, iconNode)

        const elementAttrs = getAttrs(element)
        const ariaProps =
            elementAttrs['aria-label'] || elementAttrs['title'] ? {} : { 'aria-hidden': 'true' }

        const iconAttrs = {
            [nameAttr]: iconName,
            ...ariaProps,
            ...attrs,
            ...elementAttrs,
        }

        const elementClasses = getClassNames(elementAttrs)
        const attrsClasses = getClassNames(attrs)

        const classNames = Array.from(
            new Set(['solar', `solar-${iconName}`, ...elementClasses, ...attrsClasses])
        ).join(' ')

        if (classNames) {
            iconAttrs.class = classNames
        }

        // We assume iconNode is actually the children array since our generator exports the inner AST
        // wait, let's verify what generate.ts exports. It exports `ast` which is an array of children.
        const svgElement = createElement(iconNode as any, iconAttrs as SVGProps)

        element.parentNode?.replaceChild(svgElement, element)
    })
}
