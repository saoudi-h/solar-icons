import type { JSX } from 'solid-js'
import { splitProps } from 'solid-js'
import { DEFAULT_SOLAR, useSolar } from './context'
import { SolarIcon } from './SolarIcon'
import type { IconNode, IconProps, SolarIconComponent } from './types'

type IconNodesMap = Record<string, IconNode[]>

export function createSolarIcon(
    iconName: string,
    iconNodesMap: IconNodesMap
): SolarIconComponent {
    return (allProps: IconProps & JSX.SvgSVGAttributes<SVGSVGElement>) => {
        const { config } = useSolar()
        const [local, rest] = splitProps(allProps, ['weight'])

        const finalWeight = () => local.weight ?? config.weight ?? DEFAULT_SOLAR.weight
        const iconNodes = () => iconNodesMap[finalWeight()] || []

        return (
            <SolarIcon
                {...rest}
                iconName={iconName}
                iconNodes={iconNodes()}
            />
        )
    }
}
