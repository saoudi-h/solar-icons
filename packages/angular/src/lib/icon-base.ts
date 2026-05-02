import {
    ChangeDetectionStrategy,
    Component,
    input,
    ViewEncapsulation,
} from '@angular/core';
import type { Nullable } from './types';
import defaultAttributes from '../default-attributes';
import { SolarTitleDirective } from './title.directive';

/**
 * @internal
 * Abstract base component for all Solar icon components.
 * 
 * Each icon component extends this base and provides its own compiled template.
 * The SVG content is compiled by Angular at build time, not created at runtime.
 * 
 * The title element is managed by the SolarTitleDirective via hostDirectives.
 */
@Component({
    // eslint-disable-next-line @angular-eslint/component-selector
    selector: 'svg[solarIcon]',
    template: '<ng-content/>',
    standalone: true,
    hostDirectives: [
        {
            directive: SolarTitleDirective,
            inputs: ['alt'],
        },
    ],
    encapsulation: ViewEncapsulation.None,
    changeDetection: ChangeDetectionStrategy.OnPush,
    host: {
        ...defaultAttributes,
        class: 'solar-icon',
        '[attr.width]': 'size()',
        '[attr.height]': 'size()',
        '[attr.color]': 'color()',
        '[attr.transform]': 'mirrored() ? "scale(-1, 1)" : null',
        '[attr.aria-hidden]': '!alt()',
    },
})
export abstract class IconBase {
    /**
     * An optional accessible label for the icon.
     * - If provided, the SolarTitleDirective will add a `<svg:title>` element.
     * - If not provided, the component will add an `aria-hidden="true"` attribute automatically.
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
