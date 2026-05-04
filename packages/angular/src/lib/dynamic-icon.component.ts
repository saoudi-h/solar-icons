import {
    Directive,
    input,
    inject,
    ViewContainerRef,
    effect,
    signal,
    untracked,
    type ComponentRef,
    type Type,
} from '@angular/core';
import { SOLAR_ICON_REGISTRY } from './icon-registry';
import type { IconBase } from './icon-base';
import type { IconComponent, SolarIconName } from './types';

/**
 * A lightweight directive that dynamically renders a Solar Icon component by its name or class.
 * 
 * To use icons by name, you must first register them using `provideSolarIcons`.
 * 
 * @example
 * ```html
 * <!-- Render by registered name -->
 * <ng-container solarIcon="ArrowLeftBold" [size]="24" color="red" />
 * 
 * <!-- Render by component class directly -->
 * <ng-container [solarIcon]="ArrowLeftBold" [size]="24" />
 * ```
 */
@Directive({
    selector: '[solarIcon]',
    standalone: true,
})
export class SolarDynamicIcon {
    private readonly vcr = inject(ViewContainerRef);
    private readonly registry = inject(SOLAR_ICON_REGISTRY, { optional: true });

    /**
     * The icon to render. Can be a registered name (string) or a component class.
     */
    readonly solarIcon = input.required<IconComponent | SolarIconName | string>();

    /** Size of the icon in pixels (numeric) or CSS units (string) */
    readonly size = input<string | number>();
    /** Color of the icon (CSS color value) */
    readonly color = input<string>();
    /** Whether to mirror the icon horizontally */
    readonly mirrored = input<boolean>();
    /** Accessibility label for the icon */
    readonly alt = input<string>();

    /** Internal reference to the currently rendered component */
    private readonly componentRef = signal<ComponentRef<IconBase> | undefined>(undefined);

    constructor() {
        // Effect 1: Handle component creation and replacement
        effect(() => {
            const icon = this.solarIcon();
            this.render(icon);
        });

        // Effect 2: Sync properties to the rendered component instance.
        effect(() => {
            const ref = this.componentRef();
            if (!ref) return;

            const size = this.size();
            const color = this.color();
            const mirrored = this.mirrored();
            const alt = this.alt();

            untracked(() => {
                if (size !== undefined) ref.setInput('size', size);
                if (color !== undefined) ref.setInput('color', color);
                if (mirrored !== undefined) ref.setInput('mirrored', mirrored);
                if (alt !== undefined) ref.setInput('alt', alt);
            });
        });
    }

    private render(icon: IconComponent | string) {
        this.vcr.clear();
        
        let component: Type<IconBase> | undefined;

        if (typeof icon === 'string') {
            if (this.registry) {
                component = this.registry[icon];
                if (!component) {
                    console.warn(`[SolarDynamicIcon] Icon "${icon}" not found in registry.`);
                }
            } else {
                console.warn(`[SolarDynamicIcon] No icon registry found. Did you forget to call provideSolarIcons()?`);
            }
        } else {
            component = icon as Type<IconBase>;
        }

        if (component) {
            const ref = this.vcr.createComponent(component);
            this.componentRef.set(ref);
        } else {
            this.componentRef.set(undefined);
        }
    }
}
