<script lang="ts">
    import type { Snippet } from 'svelte';
    import { getContext } from 'svelte';

    interface Props {
        alt?: string;
        color?: string;
        size?: string | number;
        strokeWidth?: string | number;
        secondaryColor?: string;
        secondaryOpacity?: number;
        iconName?: string;
        children?: Snippet;
        class?: string;
        style?: string;
        'aria-label'?: string;
        title?: string;
        [key: string]: unknown;
    }

    let {
        alt,
        color,
        size,
        strokeWidth,
        secondaryColor,
        secondaryOpacity,
        iconName,
        children,
        class: userClass = '',
        style: userStyle,
        ...restProps
    }: Props = $props();

    const SOLAR_CLASS = 'solar';
    const iconClass = $derived(iconName ? `${SOLAR_CLASS} solar-${iconName}` : SOLAR_CLASS);
    const className = $derived(userClass ? `${iconClass} ${userClass}` : iconClass);

    const isAccessible = $derived(
        !!alt || restProps['aria-label'] != null || restProps['title'] != null
    );

    const baseStyle = $derived(
        [
            `color: ${color ?? 'var(--solar-icon-color, currentColor)'}`,
            `width: ${typeof size === 'number' ? `${size}px` : (size ?? 'var(--solar-icon-size, 24px)')}`,
            `height: ${typeof size === 'number' ? `${size}px` : (size ?? 'var(--solar-icon-size, 24px)')}`,
            secondaryColor ? `--solar-duotone-color: ${secondaryColor}` : null,
            secondaryOpacity != null
                ? `--solar-duotone-opacity: ${String(secondaryOpacity)}`
                : null,
            userStyle ?? null,
        ]
            .filter(Boolean)
            .join('; ')
    );

    const computedStrokeWidth = $derived(strokeWidth ?? 'var(--solar-stroke-width, 1.5)');
</script>

<svg
    xmlns="http://www.w3.org/2000/svg"
    class={className}
    style={baseStyle}
    fill="none"
    viewBox="0 0 24 24"
    stroke-width={computedStrokeWidth}
    aria-hidden={isAccessible ? undefined : 'true'}
    {...restProps}
>
    {#if alt}<title>{alt}</title>{/if}
    {@render children?.()}
</svg>
