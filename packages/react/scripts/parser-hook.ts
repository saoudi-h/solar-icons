import { applyDuotoneStyle, type IconContext, type ParsedIcon } from '@solar-icons/core'

export interface FileDefinition {
    path: string
    content: string
}

const SVG_ATTR_MAP: [RegExp, string][] = [
    [/fill-rule/g, 'fillRule'],
    [/clip-rule/g, 'clipRule'],
    [/clip-path/g, 'clipPath'],
    [/stroke-linecap/g, 'strokeLinecap'],
    [/stroke-linejoin/g, 'strokeLinejoin'],
    [/stroke-width/g, 'strokeWidth'],
    [/stroke-miterlimit/g, 'strokeMiterlimit'],
    [/stroke-dasharray/g, 'strokeDasharray'],
]

function transformSvgAttrs(inner: string): string {
    return SVG_ATTR_MAP.reduce((s, [re, replacement]) => s.replace(re, replacement), inner)
}

export function reactPerfComponentFile(ctx: IconContext<ParsedIcon>): FileDefinition {
    const icon = ctx.icon
    const duotone = applyDuotoneStyle(icon.duotoneAccentInner, 'jsx')
    const duotoneConverted = duotone ? transformSvgAttrs(duotone) : null
    const body = duotoneConverted
        ? `${duotoneConverted}\n        ${transformSvgAttrs(icon.inner.trim())}`
        : transformSvgAttrs(icon.inner.trim())
    const content = `/* GENERATED FILE */
import { forwardRef, type Ref } from "react"
import IconBase from "../../lib/IconBase"
import type { IconProps, Icon } from "../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,${icon.preview})
 */
export const ${icon.pascalName}Icon: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props} iconName="${icon.kebabName}">
        ${body}
    </IconBase>
))
`
    return {
        path: `src/icons/${icon.styleKebab}/${icon.name}.tsx`,
        content,
    }
}
