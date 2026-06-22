import { mergeProps, splitProps, type JSX } from 'solid-js';
import type { IconProps } from './types';

const SOLAR_CLASS = 'solar';

function hasA11yProp(props: Record<string, unknown>): boolean {
    return props['aria-label'] !== undefined || props['title'] !== undefined;
}

function IconBase(allProps: IconProps): JSX.Element {
    const props = mergeProps({}, allProps);
    const [local, others] = splitProps(props, [
        'alt',
        'color',
        'size',
        'mirrored',
        'strokeWidth',
        'secondaryColor',
        'secondaryOpacity',
        'iconName',
        'children',
    ]);

    const iconClass = () => {
        const name = local.iconName;
        return name ? `${SOLAR_CLASS} solar-${name}` : SOLAR_CLASS;
    };

    const userClass = () => (others as any).class;
    const className = () => {
        const uc = userClass();
        return uc ? `${iconClass()} ${uc}` : iconClass();
    };

    const isAccessible = () => !!local.alt || hasA11yProp(others as Record<string, unknown>);

    const userStyle = () => (others as any).style ?? {};

    const baseStyle = () => {
        const s: Record<string, string | undefined> = {
            color: local.color ?? 'var(--solar-icon-color, currentColor)',
            width:
                typeof local.size === 'number'
                    ? `${local.size}px`
                    : (local.size ?? 'var(--solar-icon-size, 24px)'),
            height:
                typeof local.size === 'number'
                    ? `${local.size}px`
                    : (local.size ?? 'var(--solar-icon-size, 24px)'),
            transform: local.mirrored ? 'scale(-1, 1)' : 'var(--solar-icon-mirrored)',
        };
        if (local.secondaryColor) s['--solar-duotone-color'] = local.secondaryColor;
        if (local.secondaryOpacity != null)
            s['--solar-duotone-opacity'] = String(local.secondaryOpacity);
        return { ...s, ...userStyle() };
    };

    const strokeW = () => local.strokeWidth ?? 'var(--solar-stroke-width, 1.5)';

    const ariaHidden = () => (isAccessible() ? undefined : 'true');

    return (
        <svg
            xmlns="http://www.w3.org/2000/svg"
            class={className()}
            style={baseStyle()}
            fill="none"
            viewBox="0 0 24 24"
            stroke-width={strokeW()}
            aria-hidden={ariaHidden()}
            {...others}
        >
            {local.alt && <title>{local.alt}</title>}
            {local.children}
        </svg>
    );
}

export default IconBase;
