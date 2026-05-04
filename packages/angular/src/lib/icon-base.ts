import { Directive, input } from '@angular/core';
import type { Nullable } from './types';
import { SolarTitleDirective } from './title.directive';

/**
 * @internal
 * Shared host directives for all Solar icon components.
 * Currently only handles the title element for accessibility.
 */
export const SOLAR_ICON_HOST_DIRECTIVES = [
    {
        directive: SolarTitleDirective,
        inputs: ['alt'],
    },
];

/**
 * @internal
 * Abstract base class for all Solar icon components.
 * Provides the shared inputs and logic.
 */
@Directive({
    standalone: true,
})
export abstract class IconBase {
    /**
     * An optional accessible label for the icon.
     */
    readonly alt = input<Nullable<string>>();

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
