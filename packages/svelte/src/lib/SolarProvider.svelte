<script lang="ts">
    import { setContext } from 'svelte';
    import type { Snippet } from 'svelte';
    import { SOLAR_CONTEXT_KEY } from './useSolar';

    interface Props {
        color?: string;
        size?: string | number;
        strokeWidth?: number;
        duotoneColor?: string;
        duotoneOpacity?: number;
        children: Snippet;
    }

    let { color, size, strokeWidth, duotoneColor, duotoneOpacity, children }: Props = $props();

    let wrapperEl: HTMLDivElement | undefined;

    const solarRef = {
        setProperty: (prop: string, value: string) => {
            wrapperEl?.style.setProperty(prop, value);
        },
        get element() {
            return wrapperEl ?? null;
        },
    };

    setContext(SOLAR_CONTEXT_KEY, solarRef);

    $effect(() => {
        if (color != null) wrapperEl?.style.setProperty('--solar-icon-color', color);
    });

    $effect(() => {
        if (size != null)
            wrapperEl?.style.setProperty(
                '--solar-icon-size',
                typeof size === 'number' ? `${size}px` : size
            );
    });

    $effect(() => {
        if (strokeWidth != null)
            wrapperEl?.style.setProperty('--solar-stroke-width', String(strokeWidth));
    });

    $effect(() => {
        if (duotoneColor) wrapperEl?.style.setProperty('--solar-duotone-color', duotoneColor);
    });

    $effect(() => {
        if (duotoneOpacity != null)
            wrapperEl?.style.setProperty('--solar-duotone-opacity', String(duotoneOpacity));
    });
</script>

<div bind:this={wrapperEl}>
    {@render children()}
</div>
