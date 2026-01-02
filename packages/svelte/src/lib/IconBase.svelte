<script lang="ts">
    import type { Snippet } from 'svelte';

    interface Props {
        alt?: string;
        color?: string;
        size?: string | number;
        mirrored?: boolean;
        children?: Snippet;
        class?: string;
        style?: string;
        [key: string]: unknown;
    }

    let {
        alt,
        color = 'currentColor',
        size = '1em',
        mirrored = false,
        children,
        class: className,
        style,
        ...restProps
    }: Props = $props();

    const width = $derived(typeof size === 'number' ? `${size}px` : size);
    const height = $derived(typeof size === 'number' ? `${size}px` : size);
</script>

<svg
    xmlns="http://www.w3.org/2000/svg"
    {width}
    {height}
    {color}
    fill="none"
    viewBox="0 0 24 24"
    transform={mirrored ? 'scale(-1, 1)' : undefined}
    class={className}
    {style}
    {...restProps}
>
    {#if alt}<title>{alt}</title>{/if}
    {@render children?.()}
</svg>
