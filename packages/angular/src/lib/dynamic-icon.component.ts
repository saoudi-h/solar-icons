import {
    Directive,
    effect,
    inject,
    input,
    signal,
    untracked,
    ViewContainerRef,
    type ComponentRef,
    type Type,
} from '@angular/core'

import type { IconBase } from './icon-base'
import { SOLAR_ICON_REGISTRY } from './icon-registry'
import type { IconComponent, SolarIconName } from './types'

/**
 * A lightweight directive that renders a Solar Icon component dynamically by its name or class.
 *
 * To use icons by name, you must first register them using `provideSolarIcons`.
 *
 * @example
 * ```html
 * <!-- Render by registered name -->
 *  <ng-container solarIcon="SolarArrowLeftBold" [size]="24" color="red" />
 *
 * <!-- Render by component class directly -->
 * <ng-container [solarIcon]="SomeIconComponent" [size]="24" />
 * ```
 */
@Directive({
    selector: '[solarIcon]',
    standalone: true,
})
export class SolarIcon {
    private readonly vcr = inject(ViewContainerRef)
    private readonly registry = inject(SOLAR_ICON_REGISTRY, { optional: true })

    /**
     * The icon to render. Can be a registered name (string) or a component class.
     */
    readonly solarIcon = input.required<IconComponent | SolarIconName | string>()

    /** Size of the icon in pixels (numeric) or CSS units (string) */
    readonly size = input<string | number>()
    /** Color of the icon (CSS color value) */
    readonly color = input<string>()
    /** Stroke width of the icon */
    readonly strokeWidth = input<string | number>()
    /** Weight/style for dynamic icons (e.g. 'Bold', 'Linear') */
    readonly weight = input<string>()
    /** Secondary color for duotone icons */
    readonly secondaryColor = input<string>()
    /** Secondary opacity for duotone icons */
    readonly secondaryOpacity = input<string | number>()
    /** Accessibility label for the icon */
    readonly alt = input<string>()
    /** `aria-label` attribute on the rendered icon */
    readonly ariaLabel = input<string>()
    /** Explicit `<title>` text on the rendered icon */
    readonly titleAttr = input<string>()

    /** Internal reference to the currently rendered component */
    private readonly componentRef = signal<ComponentRef<IconBase> | undefined>(undefined)

    constructor() {
        // Effect 1: Handle component creation and replacement
        effect(() => {
            const icon = this.solarIcon()
            this.render(icon)
        })

        // Effect 2: Sync properties to the rendered component instance.
        // Undefined values are forwarded too so clearing an input resets the
        // child icon to its defaults (regression: values used to stick).
        effect(() => {
            const ref = this.componentRef()
            if (!ref) return

            const size = this.size()
            const color = this.color()
            const strokeWidth = this.strokeWidth()
            const weight = this.weight()
            const secondaryColor = this.secondaryColor()
            const secondaryOpacity = this.secondaryOpacity()
            const alt = this.alt()
            const ariaLabel = this.ariaLabel()
            const titleAttr = this.titleAttr()

            untracked(() => {
                ref.setInput('size', size)
                ref.setInput('color', color)
                ref.setInput('strokeWidth', strokeWidth)
                ref.setInput('secondaryColor', secondaryColor)
                ref.setInput('secondaryOpacity', secondaryOpacity)
                ref.setInput('alt', alt)
                ref.setInput('ariaLabel', ariaLabel)
                ref.setInput('titleAttr', titleAttr)
                // Only dynamic icon components declare a weight input; a static
                // icon would log a dev-mode error for the unknown input.
                if ('weight' in ref.instance) {
                    ref.setInput('weight', weight)
                }
            })
        })
    }

    private render(icon: IconComponent | string) {
        this.vcr.clear()

        let component: Type<IconBase> | undefined

        if (typeof icon === 'string') {
            if (this.registry) {
                component = this.registry[icon]
                if (!component) {
                    console.warn(`[SolarIcon] Icon "${icon}" not found in registry.`)
                }
            } else {
                console.warn(
                    `[SolarIcon] No icon registry found. Did you forget to call provideSolarIcons()?`
                )
            }
        } else {
            component = icon as Type<IconBase>
        }

        if (component) {
            const ref = this.vcr.createComponent(component)
            this.componentRef.set(ref)
        } else {
            this.componentRef.set(undefined)
        }
    }
}
