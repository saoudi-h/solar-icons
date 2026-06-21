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

    const styleVars = $derived(
        [
            color ? `--solar-icon-color: ${color}` : null,
            size != null
                ? `--solar-icon-size: ${typeof size === 'number' ? `${size}px` : size}`
                : null,
            strokeWidth != null ? `--solar-stroke-width: ${String(strokeWidth)}` : null,
            duotoneColor ? `--solar-duotone-color: ${duotoneColor}` : null,
            duotoneOpacity != null ? `--solar-duotone-opacity: ${String(duotoneOpacity)}` : null,
        ]
            .filter(Boolean)
            .join('; ')
    );

    const solarRef = {
        setProperty: (prop: string, value: string) => {
            wrapperEl?.style.setProperty(prop, value);
        },
        get element() {
            return wrapperEl ?? null;
        },
    };

    setContext(SOLAR_CONTEXT_KEY, solarRef);
</script>

<div bind:this={wrapperEl} style={styleVars}>
    {@render children()}
</div>
