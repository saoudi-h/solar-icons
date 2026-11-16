import { omit } from 'solid-js'

import type { IconProps } from './types'

const SOLAR_CLASS = 'solar'

type StyleRecord = Record<string, string | number | undefined>

/**
 * Splits an inline CSS declaration list into a record. Quotes and parentheses
 * are respected, so `url(data:image/svg+xml;base64,...)` and quoted strings
 * containing `;` stay intact.
 */
function parseStyleString(css: string): StyleRecord {
    const out: StyleRecord = {}
    let depth = 0
    let quote: string | null = null
    let start = 0

    const push = (end: number) => {
        const declaration = css.slice(start, end)
        const colon = declaration.indexOf(':')
        if (colon <= 0) return
        const key = declaration.slice(0, colon).trim()
        const value = declaration.slice(colon + 1).trim()
        if (key && value) out[key] = value
    }

    for (let i = 0; i < css.length; i++) {
        const char = css[i]
        if (quote) {
            if (char === '\\') i++
            else if (char === quote) quote = null
            continue
        }
        if (char === '"' || char === "'") quote = char
        else if (char === '(') depth++
        else if (char === ')') depth = Math.max(0, depth - 1)
        else if (char === ';' && depth === 0) {
            push(i)
            start = i + 1
        }
    }
    push(css.length)
    return out
}

/** Solid 2 accepts `style` as a string or as an object of hyphenated properties. */
function toStyleRecord(style: unknown): StyleRecord {
    if (typeof style === 'string') return parseStyleString(style)
    if (style && typeof style === 'object') return { ...(style as StyleRecord) }
    return {}
}

function IconBase(allProps: IconProps) {
    // `omit` keeps the reactive getters of the remaining props. Destructuring
    // `allProps` would read them once, outside any tracking scope.
    const others = omit(
        allProps,
        'alt',
        'color',
        'size',
        'strokeWidth',
        'secondaryColor',
        'secondaryOpacity',
        'iconName',
        'iconBody',
        'isolated',
        'children'
    )

    const isAccessible = () => {
        const attributes = others as Record<string, unknown>
        return (
            !!allProps.alt ||
            attributes['aria-label'] !== undefined ||
            attributes['title'] !== undefined
        )
    }

    const baseStyle = () => {
        const s = toStyleRecord(others.style)
        if (allProps.isolated) {
            s['--solar-secondary-color'] = 'initial'
            s['--solar-secondary-opacity'] = 'initial'
        }
        if (allProps.color !== undefined) s['color'] = allProps.color
        if (allProps.size !== undefined) {
            const size = typeof allProps.size === 'number' ? `${allProps.size}px` : allProps.size
            s['width'] = size
            s['height'] = size
        }
        if (allProps.strokeWidth !== undefined) s['stroke-width'] = String(allProps.strokeWidth)
        if (allProps.secondaryColor) s['--solar-secondary-color'] = allProps.secondaryColor
        if (allProps.secondaryOpacity != null) {
            s['--solar-secondary-opacity'] = String(allProps.secondaryOpacity)
        }
        if (allProps.size === undefined && !allProps.isolated) {
            s['font-size'] = s['font-size'] ?? 'var(--solar-size, 24px)'
        }
        return s as Record<string, string>
    }

    const dimension = () => {
        if (allProps.size !== undefined) return undefined
        return allProps.isolated ? '24px' : '1em'
    }
    const colorAttr = () => {
        if (allProps.color !== undefined) return undefined
        return allProps.isolated ? 'currentColor' : 'var(--solar-color, currentColor)'
    }
    const strokeWidthAttr = () => {
        if (allProps.strokeWidth !== undefined) return undefined
        return allProps.isolated ? '1.5' : 'var(--solar-stroke-width, 1.5)'
    }

    return (
        <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            {...others}
            class={[
                SOLAR_CLASS,
                allProps.iconName ? `${SOLAR_CLASS}-${allProps.iconName}` : undefined,
                others.class,
            ]}
            style={baseStyle()}
            width={dimension()}
            height={dimension()}
            color={colorAttr()}
            stroke-width={strokeWidthAttr()}
            aria-hidden={isAccessible() ? undefined : 'true'}>
            {allProps.alt && <title>{allProps.alt}</title>}
            {allProps.iconBody ? <g innerHTML={allProps.iconBody} /> : allProps.children}
        </svg>
    )
}

export default IconBase
