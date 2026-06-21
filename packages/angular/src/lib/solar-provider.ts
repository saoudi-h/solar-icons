import {
    Component,
    computed,
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
            typeof val === 'number' ? `${val}px` : val,
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
    template: `<div #wrapper [style]="styleVars()"><ng-content /></div>`,
    standalone: true,
    providers: [SolarService],
})
export class SolarProviderComponent {
    readonly color = input<string>()
    readonly size = input<string | number>()
    readonly strokeWidth = input<number>()
    readonly duotoneColor = input<string>()
    readonly duotoneOpacity = input<number>()

    private readonly wrapperRef =
        viewChild<ElementRef<HTMLDivElement>>('wrapper')
    private readonly solarService = inject(SolarService)

    constructor() {
        effect(() => {
            const el = this.wrapperRef()?.nativeElement
            if (el) this.solarService.registerWrapper(el)
        })
    }

    readonly styleVars = computed(() => {
        const style: Record<string, string> = {}
        const c = this.color()
        const s = this.size()
        const sw = this.strokeWidth()
        const dc = this.duotoneColor()
        const do_ = this.duotoneOpacity()
        if (c) style['--solar-icon-color'] = c
        if (s != null)
            style['--solar-icon-size'] = typeof s === 'number' ? `${s}px` : s
        if (sw != null) style['--solar-stroke-width'] = String(sw)
        if (dc) style['--solar-duotone-color'] = dc
        if (do_ != null) style['--solar-duotone-opacity'] = String(do_)
        return style
    })
}
