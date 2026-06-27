<script lang="ts">
    import { setContext } from 'svelte';
    import type { Snippet } from 'svelte';
    import { SOLAR_CONTEXT_KEY } from './useSolar';

    interface Props {
        /** Default icon color. Sets `--solar-color` on the wrapper. */
        color?: string;
        /** Default icon size. Sets `--solar-size`. */
        size?: string | number;
        /** Default stroke width. Sets `--solar-stroke-width`. */
        strokeWidth?: number;
        /** Default secondary color for duotone styles. Sets `--solar-duotone-color`. */
        secondaryColor?: string;
        /** Default secondary opacity for duotone styles (0–1). Sets `--solar-duotone-opacity`. */
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

    const wrapperStyle = $derived(
        [
            color != null ? `--solar-color: ${color}` : null,
            size != null ? `--solar-size: ${typeof size === 'number' ? `${size}px` : size}` : null,
            strokeWidth != null ? `--solar-stroke-width: ${String(strokeWidth)}` : null,
            secondaryColor ? `--solar-duotone-color: ${secondaryColor}` : null,
            secondaryOpacity != null ? `--solar-duotone-opacity: ${String(secondaryOpacity)}` : null,
        ]
            .filter(Boolean)
            .join('; ')
    );
</script>

<div style={wrapperStyle || undefined}>
    {@render children()}
</div>
