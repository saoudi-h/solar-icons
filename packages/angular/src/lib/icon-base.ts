import { Directive, computed, input } from '@angular/core'

/**
 * Base class for all Solar Icon components.
 *
 * It centralizes all shared SVG logic, including size, color,
 * orientation, accessibility bindings, and CSS custom property fallbacks.
 */
@Directive({
    standalone: true,
    host: {
        xmlns: 'http://www.w3.org/2000/svg',
        viewBox: '0 0 24 24',
        fill: 'none',
        '[style.width]': 'computedWidth()',
        '[style.height]': 'computedHeight()',
        '[style.color]': 'computedColor()',
        '[attr.stroke-width]': 'computedStrokeWidth()',
        '[style.transform]': 'mirrored() ? "scale(-1, 1)" : "var(--solar-icon-mirrored)"',
        '[attr.aria-hidden]': 'alt() || ariaLabel() || titleAttr() ? null : "true"',
        '[style.--solar-duotone-color]': 'secondaryColor()',
        '[style.--solar-duotone-opacity]': 'secondaryOpacityStr()',
    },
})
export abstract class IconBase {
    readonly alt = input<string>()

    readonly color = input<string>()

    readonly size = input<string | number>()

    readonly strokeWidth = input<string | number>()

    readonly mirrored = input<boolean>()

    readonly secondaryColor = input<string>()

    readonly secondaryOpacity = input<number>()

    readonly computedWidth = computed(() => {
        const s = this.size()
        if (s === undefined) return 'var(--solar-icon-size, 24px)'
        return typeof s === 'number' ? `${s}px` : s
    })

    readonly computedHeight = computed(() => {
        const s = this.size()
        if (s === undefined) return 'var(--solar-icon-size, 24px)'
        return typeof s === 'number' ? `${s}px` : s
    })

    readonly computedColor = computed(() => {
        return this.color() ?? 'var(--solar-icon-color, currentColor)'
    })

    readonly computedStrokeWidth = computed(() => {
        return this.strokeWidth() ?? 'var(--solar-stroke-width, 1.5)'
    })

    readonly secondaryOpacityStr = computed(() => {
        const o = this.secondaryOpacity()
        if (o == null) return null
        return String(o)
    })

    readonly ariaLabel = input<string>()

    readonly titleAttr = input<string>()
}
