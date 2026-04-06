import type { JSX } from 'solid-js'
import { For, mergeProps, Show, splitProps } from 'solid-js'
import { DEFAULT_SOLAR, useSolar } from './context'
import { SvgNodeRenderer } from './SvgNodeRenderer'
import type { IconNode, IconProps } from './types'

interface SolarIconProps extends IconProps {
    iconName?: string
    iconNodes?: IconNode[]
}

export function SolarIcon(allProps: SolarIconProps & JSX.SvgSVGAttributes<SVGSVGElement>): JSX.Element {
    const { config } = useSolar()

    const merged = mergeProps({ iconNodes: [] as IconNode[] }, allProps)
    const [local, svgProps] = splitProps(merged, [
        'alt',
        'color',
        'size',
        'weight',
        'mirrored',
        'iconName',
        'iconNodes',
        'children',
    ])

    const finalColor = () => local.color ?? config.color ?? DEFAULT_SOLAR.color
    const finalSize = () => local.size ?? config.size ?? DEFAULT_SOLAR.size
    const finalMirrored = () => local.mirrored ?? config.mirrored ?? DEFAULT_SOLAR.mirrored

    return (
        <svg
            xmlns="http://www.w3.org/2000/svg"
            width={finalSize()}
            height={finalSize()}
            color={finalColor()}
            fill="none"
            viewBox="0 0 24 24"
            style={finalMirrored() ? { transform: 'scale(-1, 1)' } : undefined}
            {...svgProps}
        >
            <Show when={local.alt}>
                <title>{local.alt}</title>
            </Show>
            <For each={local.iconNodes}>
                {(node) => <SvgNodeRenderer node={node} />}
            </For>
        </svg>
    )
}
