import { Component, computed, effect, inject, Injectable, input, signal } from '@angular/core'

/**
 * Injectable service that holds Solar icon theming state.
 * Used internally by `SolarProviderComponent` and exposed via `useSolar()`.
 */
@Injectable()
export class SolarService {
    readonly color = signal<string | undefined>(undefined)
    readonly size = signal<string | number | undefined>(undefined)
    readonly strokeWidth = signal<number | undefined>(undefined)
    readonly secondaryColor = signal<string | undefined>(undefined)
    readonly secondaryOpacity = signal<number | undefined>(undefined)

    setColor(val: string) {
        this.color.set(val)
    }

    setSize(val: string | number) {
        this.size.set(val)
    }

    setStrokeWidth(val: number) {
        this.strokeWidth.set(val)
    }

    setSecondaryColor(val: string) {
        this.secondaryColor.set(val)
    }

    setSecondaryOpacity(val: number) {
        this.secondaryOpacity.set(val)
    }
}

/**
 * Access the nearest `<solar-provider>` state and setters.
 * Must be called inside a component that is a descendant of `<solar-provider>`.
 */
export function useSolar(): SolarService {
    return inject(SolarService)
}

@Component({
    selector: 'solar-provider',
    template: `<div [style]="wrapperStyle()"><ng-content /></div>`,
    standalone: true,
    providers: [SolarService],
})
export class SolarProviderComponent {
    readonly color = input<string>()
    readonly size = input<string | number>()
    readonly strokeWidth = input<number>()
    readonly secondaryColor = input<string>()
    readonly secondaryOpacity = input<number>()

    private readonly solarService = inject(SolarService)

    readonly wrapperStyle = computed(() => {
        const s: Record<string, string> = { display: 'contents' }
        const c = this.solarService.color()
        const sz = this.solarService.size()
        const sw = this.solarService.strokeWidth()
        const dc = this.solarService.secondaryColor()
        const dco = this.solarService.secondaryOpacity()
        if (c !== undefined) s['--solar-color'] = c
        if (sz != null) s['--solar-size'] = typeof sz === 'number' ? `${sz}px` : sz
        if (sw != null) s['--solar-stroke-width'] = String(sw)
        if (dc) s['--solar-duotone-color'] = dc
        if (dco != null) s['--solar-duotone-opacity'] = String(dco)
        return s
    })

    constructor() {
        effect(() => {
            this.solarService.color.set(this.color())
        })
        effect(() => {
            this.solarService.size.set(this.size())
        })
        effect(() => {
            this.solarService.strokeWidth.set(this.strokeWidth())
        })
        effect(() => {
            this.solarService.secondaryColor.set(this.secondaryColor())
        })
        effect(() => {
            this.solarService.secondaryOpacity.set(this.secondaryOpacity())
        })
    }
}
