import {
    Component,
    effect,
    inject,
    Injectable,
    input,
    signal,
    viewChild,
    type ElementRef,
} from '@angular/core'

@Injectable()
export class SolarService {
    private wrapperEl: HTMLDivElement | null = null

    readonly color = signal<string | undefined>(undefined)
    readonly size = signal<string | number | undefined>(undefined)
    readonly strokeWidth = signal<number | undefined>(undefined)
    readonly duotoneColor = signal<string | undefined>(undefined)
    readonly duotoneOpacity = signal<number | undefined>(undefined)
    readonly mirrored = signal<boolean | undefined>(undefined)

    registerWrapper(el: HTMLDivElement) {
        this.wrapperEl = el
    }

    setColor(val: string) {
        this.color.set(val)
        this.wrapperEl?.style.setProperty('--solar-icon-color', val)
    }

    setSize(val: string | number) {
        this.size.set(val)
        this.wrapperEl?.style.setProperty(
            '--solar-icon-size',
            typeof val === 'number' ? `${val}px` : val
        )
    }

    setStrokeWidth(val: number) {
        this.strokeWidth.set(val)
        this.wrapperEl?.style.setProperty('--solar-stroke-width', String(val))
    }

    setDuotoneColor(val: string) {
        this.duotoneColor.set(val)
        this.wrapperEl?.style.setProperty('--solar-duotone-color', val)
    }

    setDuotoneOpacity(val: number) {
        this.duotoneOpacity.set(val)
        this.wrapperEl?.style.setProperty('--solar-duotone-opacity', String(val))
    }

    setMirrored(val: boolean) {
        this.mirrored.set(val)
        this.wrapperEl?.style.setProperty('--solar-icon-mirrored', val ? 'scale(-1, 1)' : 'none')
    }
}

export function useSolar(): SolarService {
    return inject(SolarService)
}

@Component({
    selector: 'solar-provider',
    template: `<div #wrapper><ng-content /></div>`,
    standalone: true,
    providers: [SolarService],
})
export class SolarProviderComponent {
    readonly color = input<string>()
    readonly size = input<string | number>()
    readonly strokeWidth = input<number>()
    readonly duotoneColor = input<string>()
    readonly duotoneOpacity = input<number>()
    readonly mirrored = input<boolean>()

    private readonly wrapperRef = viewChild<ElementRef<HTMLDivElement>>('wrapper')
    private readonly solarService = inject(SolarService)

    constructor() {
        effect(() => {
            const el = this.wrapperRef()?.nativeElement
            if (el) this.solarService.registerWrapper(el)
        })

        effect(() => {
            const c = this.color()
            const el = this.wrapperRef()?.nativeElement
            if (c != null) {
                this.solarService.color.set(c)
                el?.style.setProperty('--solar-icon-color', c)
            }
        })

        effect(() => {
            const s = this.size()
            const el = this.wrapperRef()?.nativeElement
            if (s != null) {
                this.solarService.size.set(s)
                el?.style.setProperty('--solar-icon-size', typeof s === 'number' ? `${s}px` : s)
            }
        })

        effect(() => {
            const sw = this.strokeWidth()
            const el = this.wrapperRef()?.nativeElement
            if (sw != null) {
                this.solarService.strokeWidth.set(sw)
                el?.style.setProperty('--solar-stroke-width', String(sw))
            }
        })

        effect(() => {
            const dc = this.duotoneColor()
            const el = this.wrapperRef()?.nativeElement
            if (dc) {
                this.solarService.duotoneColor.set(dc)
                el?.style.setProperty('--solar-duotone-color', dc)
            }
        })

        effect(() => {
            const d = this.duotoneOpacity()
            const el = this.wrapperRef()?.nativeElement
            if (d != null) {
                this.solarService.duotoneOpacity.set(d)
                el?.style.setProperty('--solar-duotone-opacity', String(d))
            }
        })

        effect(() => {
            const m = this.mirrored()
            const el = this.wrapperRef()?.nativeElement
            if (m !== undefined) {
                this.solarService.mirrored.set(m)
                el?.style.setProperty('--solar-icon-mirrored', m ? 'scale(-1, 1)' : 'none')
            }
        })
    }
}
