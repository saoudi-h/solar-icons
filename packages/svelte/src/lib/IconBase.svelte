<script lang="ts">
    import type { Snippet } from 'svelte';

    interface Props {
        alt?: string;
        color?: string;
        size?: string | number;
        strokeWidth?: string | number;
        secondaryColor?: string;
        secondaryOpacity?: number;
        iconName?: string;
        isolated?: boolean;
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
        isolated,
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
            isolated ? '--solar-secondary-color: initial' : null,
            isolated ? '--solar-secondary-opacity: initial' : null,
            color !== undefined ? `color: ${color}` : null,
            size !== undefined ? `width: ${typeof size === 'number' ? `${size}px` : size}` : null,
            size !== undefined ? `height: ${typeof size === 'number' ? `${size}px` : size}` : null,
            strokeWidth !== undefined ? `stroke-width: ${String(strokeWidth)}` : null,
            secondaryColor ? `--solar-secondary-color: ${secondaryColor}` : null,
            secondaryOpacity != null
                ? `--solar-secondary-opacity: ${String(secondaryOpacity)}`
                : null,
            userStyle ?? null,
        ]
            .filter(Boolean)
            .join('; ')
    );

    const svgWidth = $derived(
        size !== undefined ? undefined : isolated ? '24px' : 'var(--solar-size, 24px)'
    );
    const svgHeight = $derived(
        size !== undefined ? undefined : isolated ? '24px' : 'var(--solar-size, 24px)'
    );
    const svgColor = $derived(
        color !== undefined
            ? undefined
            : isolated
              ? 'currentColor'
              : 'var(--solar-color, currentColor)'
    );
    const computedStrokeWidth = $derived(
        strokeWidth !== undefined ? undefined : isolated ? '1.5' : 'var(--solar-stroke-width, 1.5)'
    );
</script>

<svg
    xmlns="http://www.w3.org/2000/svg"
    class={className}
    style={baseStyle || undefined}
    fill="none"
    viewBox="0 0 24 24"
    width={svgWidth}
    height={svgHeight}
    color={svgColor}
    stroke-width={computedStrokeWidth}
    aria-hidden={isAccessible ? undefined : 'true'}
    {...restProps}
>
    {#if alt}<title>{alt}</title>{/if}
    {@render children?.()}
</svg>
