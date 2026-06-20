import type { ParsedIcon, IconContext } from '../../core/src/parser.ts'

export interface FileDefinition {
    path: string
    content: string
}

const ELEMENT_MAP: Record<string, string> = {
    path: 'Path',
    g: 'G',
    circle: 'Circle',
    rect: 'Rect',
    line: 'Line',
    polyline: 'Polyline',
    polygon: 'Polygon',
    ellipse: 'Ellipse',
    defs: 'Defs',
    clipPath: 'ClipPath',
    linearGradient: 'LinearGradient',
    radialGradient: 'RadialGradient',
    stop: 'Stop',
    mask: 'Mask',
}

function transformToRN(inner: string, duotoneAccent: string | null): { jsx: string; svgElements: Set<string> } {
    const body = duotoneAccent ? `${duotoneAccent}\n${inner.trim()}` : inner.trim()
    const svgElements = new Set<string>()

    let transformed = body.replace(/fill-rule/g, 'fillRule')
        .replace(/clip-rule/g, 'clipRule')
        .replace(/clip-path/g, 'clipPath')
        .replace(/stroke-linecap/g, 'strokeLinecap')
        .replace(/stroke-linejoin/g, 'strokeLinejoin')
        .replace(/stroke-width/g, 'strokeWidth')
        .replace(/stroke-miterlimit/g, 'strokeMiterlimit')
        .replace(/stroke-dasharray/g, 'strokeDasharray')

    for (const [htmlElement, rnElement] of Object.entries(ELEMENT_MAP)) {
        const openTagRegex = new RegExp(`<${htmlElement}([\\s>])`, 'g')
        const closeTagRegex = new RegExp(`</${htmlElement}>`, 'g')

        if (openTagRegex.test(transformed) || closeTagRegex.test(transformed)) {
            svgElements.add(rnElement)
            transformed = transformed
                .replace(new RegExp(`<${htmlElement}([\\s>])`, 'g'), `<${rnElement}$1`)
                .replace(new RegExp(`</${htmlElement}>`, 'g'), `</${rnElement}>`)
        }
    }

    return { jsx: transformed, svgElements }
}

export function reactNativeComponentFile(ctx: IconContext<ParsedIcon>): FileDefinition {
    const icon = ctx.icon
    const { jsx, svgElements } = transformToRN(icon.inner, icon.duotoneAccentInner)
    const svgImports = Array.from(svgElements).sort().join(', ')

    const content = `/* GENERATED FILE */
import React from "react"
import { forwardRef } from "react"
${svgImports ? `import { ${svgImports} } from "react-native-svg"\n` : ''}import IconBase from "../../../lib/IconBase"
import type { IconProps, Icon } from "../../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,${icon.preview})
 */
export const ${icon.pascalName}: Icon = forwardRef<any, IconProps>((props, ref) => (
    <IconBase ref={ref} {...props}>
        ${jsx.trim()}
    </IconBase>
))

${icon.pascalName}.displayName = "${icon.pascalName}"
`
    return {
        path: `src/icons/${icon.category}/${icon.styleKebab}/${icon.name}.tsx`,
        content,
    }
}
