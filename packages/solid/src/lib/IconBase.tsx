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
        'strokeWidth',
        'secondaryColor',
        'secondaryOpacity',
        'iconName',
        'iconBody',
        'isolated',
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
            ...userStyle(),
        };
        if (local.isolated) {
            s['--solar-duotone-color'] = 'initial';
            s['--solar-duotone-opacity'] = 'initial';
        }
        if (local.color !== undefined) s.color = local.color;
        if (local.size !== undefined) {
            const sv = typeof local.size === 'number' ? `${local.size}px` : local.size;
            s.width = sv;
            s.height = sv;
        }
        if (local.strokeWidth !== undefined) s['stroke-width'] = String(local.strokeWidth);
        if (local.secondaryColor) s['--solar-duotone-color'] = local.secondaryColor;
        if (local.secondaryOpacity != null)
            s['--solar-duotone-opacity'] = String(local.secondaryOpacity);
        return s;
    };

    const widthAttr = () => {
        if (local.size !== undefined) return undefined;
        return local.isolated ? '24px' : 'var(--solar-size, 24px)';
    };
    const heightAttr = () => {
        if (local.size !== undefined) return undefined;
        return local.isolated ? '24px' : 'var(--solar-size, 24px)';
    };
    const colorAttr = () => {
        if (local.color !== undefined) return undefined;
        return local.isolated ? 'currentColor' : 'var(--solar-color, currentColor)';
    };
    const strokeWidthAttr = () => {
        if (local.strokeWidth !== undefined) return undefined;
        return local.isolated ? '1.5' : 'var(--solar-stroke-width, 1.5)';
    };

    const ariaHidden = () => (isAccessible() ? undefined : 'true');

    return (
        <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            {...others}
            class={className()}
            style={baseStyle()}
            width={widthAttr()}
            height={heightAttr()}
            color={colorAttr()}
            stroke-width={strokeWidthAttr()}
            aria-hidden={ariaHidden()}
        >
            {local.alt && <title>{local.alt}</title>}
            {local.iconBody ? <g innerHTML={local.iconBody} /> : local.children}
        </svg>
    );
}

export default IconBase;
