import type { ParsedIconGroup, IconContext } from '../../../core/src/parser.ts'

export interface FileDefinition {
    path: string
    content: string
}

export function reactComponentFile(ctx: IconContext<ParsedIconGroup>): FileDefinition {
    const group = ctx.icon
    const content = `'use client'

/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import IconBase from "../../lib/IconBase"
import weights from "../../defs/${group.category}/${group.name}"

/**
${Object.entries(group.styles)
    .map(([style, icon]) => ` * ### ![img](data:image/svg+xml;base64,${icon.preview}) ${style}`)
    .join('\n')}
 */
const ${group.pascalName}: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props} weights={weights} />
))

${group.pascalName}.displayName = "${group.pascalName}"
export default ${group.pascalName}
`
    return {
        path: `src/csr/${group.category}/${group.name}.tsx`,
        content,
    }
}

export function reactSsrComponentFile(ctx: IconContext<ParsedIconGroup>): FileDefinition {
    const group = ctx.icon
    const content = `/* GENERATED FILE */
import React, { forwardRef } from "react"
import type { IconProps, Icon } from "../../lib/types"
import SSRBase from "../../lib/SSRBase"
import weights from "../../defs/${group.category}/${group.name}"

/**
${Object.entries(group.styles)
    .map(([style, icon]) => ` * ### ![img](data:image/svg+xml;base64,${icon.preview}) ${style}`)
    .join('\n')}
 */
const ${group.pascalName}: Icon = forwardRef<SVGSVGElement, IconProps>((props, ref) => (
    <SSRBase ref={ref} {...props} weights={weights} />
))

${group.pascalName}.displayName = "${group.pascalName}"
export default ${group.pascalName}
`
    return {
        path: `src/ssr/${group.category}/${group.name}.tsx`,
        content,
    }
}

export function reactDefsFile(ctx: IconContext<ParsedIconGroup>): FileDefinition {
    const group = ctx.icon
    const content = `/* GENERATED FILE */
import React, { ReactElement } from "react"
import type { IconWeight } from '../../lib'

export default new Map<IconWeight, ReactElement>([
${Object.entries(group.styles)
    .map(([style, icon]) => {
        const body = icon.duotoneAccentInner
            ? `${icon.duotoneAccentInner}\n${icon.inner.trim()}`
            : icon.inner.trim()
        return `  ["${style}", <>${body}</>]`
    })
    .join(',\n')}
]);
`
    return {
        path: `src/defs/${group.category}/${group.name}.tsx`,
        content,
    }
}
