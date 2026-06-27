import { Directive, computed, input } from '@angular/core'

/**
 * Base directive for all Solar Icon components.
 *
 * Sets up every SVG attribute on the host element (`<svg>`) through
 * host bindings so the icon component template only needs to contain
 * the icon's inner markup.
 *
 * Defaults (color, size, strokeWidth) use `[attr.*]` (SVG presentation
 * attributes, CSS specificity 0) so that CSS classes from the user can
 * override them. Explicit props use `[style.*]` for maximum priority.
 */
@Directive({
    standalone: true,
    host: {
        xmlns: 'http://www.w3.org/2000/svg',
        viewBox: '0 0 24 24',
        fill: 'none',

        // Defaults via SVG presentation attributes (specificity 0)
        '[attr.width]': 'defaultWidth()',
        '[attr.height]': 'defaultHeight()',
        '[attr.color]': 'defaultColor()',
        '[attr.stroke-width]': 'defaultStrokeWidth()',

        // Explicit props via inline style (highest priority)
        '[style.width]': 'explicitWidth()',
        '[style.height]': 'explicitHeight()',
        '[style.color]': 'explicitColor()',
        '[style.stroke-width]': 'explicitStrokeWidth()',

        '[attr.aria-hidden]': 'alt() || ariaLabel() || titleAttr() ? null : "true"',
        '[style.--solar-duotone-color]': 'duotoneColor()',
        '[style.--solar-duotone-opacity]': 'duotoneOpacityStr()',
    },
})
export abstract class IconBase {
    readonly alt = input<string>()

    readonly color = input<string>()

    readonly size = input<string | number>()

    readonly strokeWidth = input<string | number>()

    readonly secondaryColor = input<string>()

    readonly secondaryOpacity = input<number>()

    readonly isolated = input<boolean>()

    readonly defaultWidth = computed(() => {
        if (this.size() !== undefined) return undefined
        return this.isolated() ? '24px' : 'var(--solar-size, 24px)'
    })

    readonly defaultHeight = computed(() => {
        if (this.size() !== undefined) return undefined
        return this.isolated() ? '24px' : 'var(--solar-size, 24px)'
    })

    readonly defaultColor = computed(() => {
        if (this.color() !== undefined) return undefined
        return this.isolated() ? 'currentColor' : 'var(--solar-color, currentColor)'
    })

    readonly defaultStrokeWidth = computed(() => {
        if (this.strokeWidth() !== undefined) return undefined
        return this.isolated() ? '1.5' : 'var(--solar-stroke-width, 1.5)'
    })

    readonly explicitWidth = computed(() => {
        const s = this.size()
        if (s === undefined) return null
        return typeof s === 'number' ? `${s}px` : s
    })

    readonly explicitHeight = computed(() => {
        const s = this.size()
        if (s === undefined) return null
        return typeof s === 'number' ? `${s}px` : s
    })

    readonly explicitColor = computed(() => {
        return this.color() ?? null
    })

    readonly explicitStrokeWidth = computed(() => {
        const sw = this.strokeWidth()
        if (sw === undefined) return null
        return String(sw)
    })

    readonly duotoneColor = computed(() => {
        if (this.isolated() && !this.secondaryColor()) return 'initial'
        return this.secondaryColor() || null
    })

    readonly duotoneOpacityStr = computed(() => {
        if (this.isolated() && this.secondaryOpacity() == null) return 'initial'
        const o = this.secondaryOpacity()
        if (o == null) return null
        return String(o)
    })

    readonly ariaLabel = input<string>()

    readonly titleAttr = input<string>()
}
