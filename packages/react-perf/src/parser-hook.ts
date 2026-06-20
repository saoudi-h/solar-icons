import type { ParsedIcon, IconContext } from '../../core/src/parser.ts'

export interface FileDefinition {
    path: string
    content: string
}

export function reactPerfComponentFile(ctx: IconContext<ParsedIcon>): FileDefinition {
    const icon = ctx.icon
    const body = icon.duotoneAccentInner
        ? `${icon.duotoneAccentInner}\n        ${icon.inner.trim()}`
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
