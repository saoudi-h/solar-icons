import { splitProps, type JSX } from 'solid-js';
import type { IconProps } from './types';

function IconBase(props: IconProps): JSX.Element {
    const [local, others] = splitProps(props, ['alt', 'color', 'size', 'mirrored']);

    const width = () => (typeof local.size === 'number' ? `${local.size}px` : local.size);
    const height = () => (typeof local.size === 'number' ? `${local.size}px` : local.size);

    const style = () => ({
        transform: local.mirrored ? 'scale(-1, 1)' : undefined,
    });

    return (
        <svg
            xmlns="http://www.w3.org/2000/svg"
            width={width()}
            height={height()}
            color={local.color ?? 'currentColor'}
            fill="none"
            viewBox="0 0 24 24"
            style={style()}
            {...others}
        >
            {local.alt && <title>{local.alt}</title>}
            {props.children}
        </svg>
    );
}

export default IconBase;
