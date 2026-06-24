<script lang="ts">
import type { ComponentType } from 'svelte'

interface StyleComponents {
    bold: ComponentType<any>
    'bold-duotone': ComponentType<any>
    broken: ComponentType<any>
    linear: ComponentType<any>
    'line-duotone': ComponentType<any>
    outline: ComponentType<any>
}

type Weight = 'Bold' | 'BoldDuotone' | 'Broken' | 'Linear' | 'LineDuotone' | 'Outline'

const WEIGHT_MAP: Record<Weight, keyof StyleComponents> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
}

interface DynamicIconProps {
    weight?: Weight
    styles: StyleComponents
    [key: string]: any
}

let { weight, styles, ...restProps }: DynamicIconProps = $props()

let component = $derived(styles[weight ? WEIGHT_MAP[weight] : 'bold'])
</script>

<svelte:component this={component} {...restProps} />
