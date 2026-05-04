import { Directive, effect, ElementRef, inject, input } from '@angular/core';

/**
 * @internal
 * Directive that manages the <title> element for accessibility.
 * Automatically adds/removes a <title> element based on the alt input.
 * 
 * Uses modern Angular 17+ patterns with signals and direct DOM manipulation.
 * Renderer2 is not needed here since we're explicitly targeting SVG elements.
 */
@Directive({
    selector: '[solarTitleHost]',
    standalone: true,
})
export class SolarTitleDirective {
    readonly alt = input<string | null>();

    private readonly el = inject(ElementRef<SVGElement>);

    constructor() {
        effect(() => {
            // Remove existing title if present (using :scope to only match direct children)
            this.el.nativeElement.querySelector(':scope > title')?.remove();

            const value = this.alt();
            if (value) {
                // Create SVG title element using createElementNS
                const title = document.createElementNS('http://www.w3.org/2000/svg', 'title');
                title.textContent = value;
                // Insert as first child
                this.el.nativeElement.prepend(title);
            }
        });
    }
}

/**
 * Shared host directives for all icon components.
 * Includes SolarTitleDirective for accessibility support.
 */
export const SOLAR_ICON_HOST_DIRECTIVES = [
    {
        directive: SolarTitleDirective,
        inputs: ['alt:alt'],
    },
];
