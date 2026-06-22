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

    let {
        color = $bindable(),
        size = $bindable(),
        strokeWidth = $bindable(),
        duotoneColor = $bindable(),
        duotoneOpacity = $bindable(),
        children,
    }: Props = $props();

    let wrapperEl: HTMLDivElement | undefined;

    const setColor = (val: string) => (color = val);
    const setSize = (val: string | number) => (size = val);
    const setStrokeWidth = (val: number) => (strokeWidth = val);
    const setDuotoneColor = (val: string) => (duotoneColor = val);
    const setDuotoneOpacity = (val: number) => (duotoneOpacity = val);

    const state = {
        get color() {
            return color;
        },
        setColor,
        get size() {
            return size;
        },
        setSize,
        get strokeWidth() {
            return strokeWidth;
        },
        setStrokeWidth,
        get duotoneColor() {
            return duotoneColor;
        },
        setDuotoneColor,
        get duotoneOpacity() {
            return duotoneOpacity;
        },
        setDuotoneOpacity,
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
