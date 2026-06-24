<script lang="ts">
    import { setContext } from 'svelte';
    import type { Snippet } from 'svelte';
    import { SOLAR_CONTEXT_KEY } from './useSolar';

    interface Props {
        color?: string;
        size?: string | number;
        strokeWidth?: number;
        secondaryColor?: string;
        secondaryOpacity?: number;
        children: Snippet;
    }

    let {
        color = $bindable(),
        size = $bindable(),
        strokeWidth = $bindable(),
        secondaryColor = $bindable(),
        secondaryOpacity = $bindable(),
        children,
    }: Props = $props();

    let wrapperEl: HTMLDivElement | undefined;

    const setColor = (val: string) => (color = val);
    const setSize = (val: string | number) => (size = val);
    const setStrokeWidth = (val: number) => (strokeWidth = val);
    const setSecondaryColor = (val: string) => (secondaryColor = val);
    const setSecondaryOpacity = (val: number) => (secondaryOpacity = val);

    const state = {
        get color() { return color; },
        setColor,
        get size() { return size; },
        setSize,
        get strokeWidth() { return strokeWidth; },
        setStrokeWidth,
        get secondaryColor() { return secondaryColor; },
        setSecondaryColor,
        get secondaryOpacity() { return secondaryOpacity; },
        setSecondaryOpacity,
    };

    setContext(SOLAR_CONTEXT_KEY, state);

    $effect(() => {
        if (color != null) wrapperEl?.style.setProperty('--solar-icon-color', String(color));
    });
    $effect(() => {
        if (size != null)
            wrapperEl?.style.setProperty(
                '--solar-icon-size',
                typeof size === 'number' ? `${size}px` : String(size)
            );
    });
    $effect(() => {
        if (strokeWidth != null)
            wrapperEl?.style.setProperty('--solar-stroke-width', String(strokeWidth));
    });
    $effect(() => {
        if (secondaryColor) wrapperEl?.style.setProperty('--solar-duotone-color', secondaryColor);
    });
    $effect(() => {
        if (secondaryOpacity != null)
            wrapperEl?.style.setProperty('--solar-duotone-opacity', String(secondaryOpacity));
    });
</script>

<div bind:this={wrapperEl}>
    {@render children()}
</div>
