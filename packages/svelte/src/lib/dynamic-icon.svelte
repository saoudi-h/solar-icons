<script lang="ts">
    import type { ComponentType } from 'svelte';
    import { WEIGHT_MAP, type Weight, type StyleComponentsMap } from '@solar-icons/core/runtime';
    import type { IconProps } from './types';

    type StyleComponents = StyleComponentsMap<ComponentType<IconProps>>;

    interface DynamicIconProps {
        weight?: Weight;
        styles: StyleComponents;
        [key: string]: any;
    }

    let { weight, styles, ...restProps }: DynamicIconProps = $props();

    let component = $derived(styles[weight ? WEIGHT_MAP[weight] : 'linear']);
</script>

<svelte:component this={component} {...restProps} />
