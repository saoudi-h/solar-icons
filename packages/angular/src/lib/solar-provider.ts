import {
    Component,
    effect,
    inject,
    Injectable,
    input,
    viewChild,
    type ElementRef,
} from '@angular/core'

@Injectable()
export class SolarService {
    private wrapperEl: HTMLDivElement | null = null

    registerWrapper(el: HTMLDivElement) {
        this.wrapperEl = el
    }

    setColor(val: string) {
        this.wrapperEl?.style.setProperty('--solar-icon-color', val)
    }

    setSize(val: string | number) {
        this.wrapperEl?.style.setProperty(
            '--solar-icon-size',
            typeof val === 'number' ? `${val}px` : val
        )
    }

    setStrokeWidth(val: number) {
        this.wrapperEl?.style.setProperty('--solar-stroke-width', String(val))
    }

    setDuotoneColor(val: string) {
        this.wrapperEl?.style.setProperty('--solar-duotone-color', val)
    }

    setDuotoneOpacity(val: number) {
        this.wrapperEl?.style.setProperty('--solar-duotone-opacity', String(val))
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

    private readonly wrapperRef = viewChild<ElementRef<HTMLDivElement>>('wrapper')
    private readonly solarService = inject(SolarService)

    private get el(): HTMLDivElement | undefined {
        return this.wrapperRef()?.nativeElement
    }

    constructor() {
        effect(() => {
            const el = this.wrapperRef()?.nativeElement
            if (el) this.solarService.registerWrapper(el)
        })

        effect(() => {
            const c = this.color()
            if (c != null) this.el?.style.setProperty('--solar-icon-color', c)
        })

        effect(() => {
            const s = this.size()
            if (s != null)
                this.el?.style.setProperty(
                    '--solar-icon-size',
                    typeof s === 'number' ? `${s}px` : s
                )
        })

        effect(() => {
            const sw = this.strokeWidth()
            if (sw != null) this.el?.style.setProperty('--solar-stroke-width', String(sw))
        })

        effect(() => {
            const dc = this.duotoneColor()
            if (dc) this.el?.style.setProperty('--solar-duotone-color', dc)
        })

        effect(() => {
            const d = this.duotoneOpacity()
            if (d != null) this.el?.style.setProperty('--solar-duotone-opacity', String(d))
        })
    }
}
