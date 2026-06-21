import { inject } from 'vue'
import { SOLAR_CONTEXT_KEY } from './context-key'

interface SolarRef {
    setProperty: (prop: string, value: string) => void
    element: HTMLDivElement | null
}

export function useSolar() {
    const ctx = inject<SolarRef>(SOLAR_CONTEXT_KEY)
    if (!ctx) throw new Error('useSolar() must be used inside a <SolarProvider>')

    return {
        setColor: (val: string) => ctx.setProperty('--solar-icon-color', val),
        setSize: (val: string | number) =>
            ctx.setProperty('--solar-icon-size', typeof val === 'number' ? `${val}px` : val),
        setStrokeWidth: (val: number) => ctx.setProperty('--solar-stroke-width', String(val)),
        setDuotoneColor: (val: string) => ctx.setProperty('--solar-duotone-color', val),
        setDuotoneOpacity: (val: number) => ctx.setProperty('--solar-duotone-opacity', String(val)),
    }
}
