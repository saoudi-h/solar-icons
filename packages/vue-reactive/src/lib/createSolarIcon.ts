import type { FunctionalComponent } from 'vue'
import { computed, h } from 'vue'
import { DEFAULT_SOLAR, useSolar } from './context'
import SolarIcon from './SolarIcon.vue'
import type { IconNode, IconProps } from './types'

type IconNodesMap = Record<string, IconNode[]>

/**
 * Create a Solar icon component
 * @param {string} iconName
 * @param {IconNodesMap} iconNodesMap
 * @returns {FunctionalComponent} SolarIcon
 */
export const createSolarIcon = (
    iconName: string,
    iconNodesMap: IconNodesMap
): FunctionalComponent<IconProps> => {
    return (props, { attrs, slots }) => {
        const { weight, ...otherProps } = props
        const { config } = useSolar()

        const finalWeight = computed(() => weight ?? config.weight ?? DEFAULT_SOLAR.weight)

        const iconNodes = iconNodesMap[finalWeight.value] || []

        return h(
            SolarIcon,
            {
                ...attrs,
                ...otherProps,
                iconName,
                iconNodes,
            },
            slots
        )
    }
}
