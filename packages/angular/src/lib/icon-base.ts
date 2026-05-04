import { Directive, input } from '@angular/core';
import { SOLAR_ICON_HOST_DIRECTIVES } from './title.directive';

export { SOLAR_ICON_HOST_DIRECTIVES };

/**
 * Base class for all Solar Icon components.
 * 
 * It centralizes all shared SVG logic, including size, color, 
 * orientation, and accessibility bindings.
 */
@Directive({
    standalone: true,
    host: {
        'xmlns': 'http://www.w3.org/2000/svg',
        'viewBox': '0 0 24 24',
        'fill': 'none',
        'class': 'solar-icon',
        '[attr.width]': 'size()',
        '[attr.height]': 'size()',
        '[style.color]': 'color()',
        '[attr.transform]': 'mirrored() ? "scale(-1, 1)" : null',
        '[attr.aria-hidden]': 'alt() ? null : "true"',
    },
})
export abstract class IconBase {
    /**
     * Accessible label for the icon.
     */
    readonly alt = input<string>();

    /**
     * Width and height.
     * @default '1em'
     */
    readonly size = input<string | number>('1em');

    /**
     * Color.
     * @default 'currentColor'
     */
    readonly color = input<string>('currentColor');

    /**
     * If set to true, the icon will be flipped horizontally.
     */
    readonly mirrored = input<boolean>(false);
}
