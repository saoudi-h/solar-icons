type IconWeight = 'Bold' | 'BoldDuotone' | 'Broken' | 'Linear' | 'LineDuotone' | 'Outline'

interface ParsedIcon {
    readonly name: string
    readonly category: string
    readonly style: IconWeight
    readonly styleKebab: string
    readonly kebabName: string
    readonly pascalName: string
    readonly inner: string
    readonly duotoneAccentInner: string | null
    readonly preview: string
}

interface IconContext<T> {
    readonly icon: T
    readonly index: number
    readonly total: number
}

const DUOTONE_CSS_VARS_JSX =
    'style={{ color: "var(--solar-duotone-color, currentColor)", opacity: "var(--solar-duotone-opacity, 0.5)" }}'

function applyDuotoneStyle(accent: string | null): string | null {
    if (!accent) return null
    let groupDepth = 0
    return accent
        .replace(/\s+opacity="0\.5"/g, '')
        .split('\n')
        .map(line => {
            const trimmed = line.trim()
            if (!trimmed) return line
            if (trimmed.startsWith('</')) {
                if (trimmed.startsWith('</g')) groupDepth--
                return line
            }
            if (groupDepth > 0) return line
            if (trimmed.startsWith('<g')) groupDepth++
            if (trimmed.endsWith('/>')) {
                return trimmed.slice(0, -2) + ` ${DUOTONE_CSS_VARS_JSX}/>`
            }
            return trimmed.replace('>', ` ${DUOTONE_CSS_VARS_JSX}>`)
        })
        .join('\n')
}

export interface FileDefinition {
    path: string
    content: string
}

export function reactComponentFile(ctx: IconContext<ParsedIcon>): FileDefinition {
    const icon = ctx.icon
    const duotone = applyDuotoneStyle(icon.duotoneAccentInner)
    const body = duotone
        ? `${duotone}\n        ${icon.inner.trim()}`
        : icon.inner.trim()
    const content = `/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,${icon.preview})
 */
export const ${icon.pascalName}: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        ${body}
    </IconBase>
))

${icon.pascalName}.displayName = "${icon.pascalName}"
`
    return {
        path: `src/icons/${icon.category}/${icon.styleKebab}/${icon.name}.tsx`,
        content,
    }
}
