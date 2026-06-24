import type { ParsedIcon, IconContext } from '../../core/src/parser.ts'

export interface FileDefinition {
    path: string
    content: string
}

const ELEMENT_MAP: Record<string, string> = {
    path: 'Path', g: 'G', circle: 'Circle', rect: 'Rect', line: 'Line',
    polyline: 'Polyline', polygon: 'Polygon', ellipse: 'Ellipse', defs: 'Defs',
    clipPath: 'ClipPath', linearGradient: 'LinearGradient',
    radialGradient: 'RadialGradient', stop: 'Stop', mask: 'Mask',
}

function transformToRN(inner: string, duotoneAccent: string | null): {
    jsx: string
    svgElements: Set<string>
    hasDuotone: boolean
} {
    const svgElements = new Set<string>()

    let accentJsx = ''
    if (duotoneAccent) {
        accentJsx = duotoneAccent
            .replace(/\bopacity="0\.5"/g, 'opacity={secondaryOpacity}')
            .replace(/\b(fill|stroke)="currentColor"/g, '$1={secondaryColor}')
    }

    const fullBody = accentJsx ? `${accentJsx}\n${inner.trim()}` : inner.trim()

    let transformed = fullBody
        .replace(/fill-rule/g, 'fillRule')
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

    return { jsx: transformed, svgElements, hasDuotone: !!duotoneAccent }
}

export function reactNativeComponentFile(ctx: IconContext<ParsedIcon>): FileDefinition {
    const icon = ctx.icon
    const { jsx, svgElements, hasDuotone } = transformToRN(
        icon.inner,
        icon.duotoneAccentInner,
    )
    const svgImports = Array.from(svgElements).sort().join(', ')

    const duotoneImports = hasDuotone ? `import { useContext } from "react"\nimport { SolarContext } from "../../lib/SolarProvider"\n` : ''

    const duotoneDestructure = hasDuotone
        ? `    const ctx = useContext(SolarContext)
    const { secondaryColor: secondaryColorProp, secondaryOpacity: secondaryOpacityProp, color: colorProp, ...rest } = props
    const color = colorProp ?? ctx?.color
    const secondaryColor = secondaryColorProp ?? ctx?.secondaryColor ?? color ?? "currentColor"
    const secondaryOpacity = secondaryOpacityProp ?? ctx?.secondaryOpacity ?? 0.5
`
        : ''

    const spreadProps = hasDuotone ? '{ ...rest, color }' : 'props'

    const content = `/* GENERATED FILE */
import { forwardRef } from "react"
${duotoneImports}${svgImports ? `import { ${svgImports} } from "react-native-svg"\n` : ''}import IconBase from "../../lib/IconBase"
import type { IconProps, Icon } from "../../lib/types"

/**
 * ![img](data:image/svg+xml;base64,${icon.preview})
 */
export const ${icon.pascalName}Icon: Icon = forwardRef<any, IconProps>((props, ref) => {
${duotoneDestructure}    return (
        <IconBase ref={ref} {...${spreadProps}}>
            ${jsx.trim()}
        </IconBase>
    )
})
`
    return {
        path: `src/icons/${icon.styleKebab}/${icon.name}.tsx`,
        content,
    }
}
