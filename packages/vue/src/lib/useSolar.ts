import { inject, type Ref } from 'vue'
import { SOLAR_CONTEXT_KEY } from './context-key'

interface SolarState {
    color: Ref<string | undefined>
    setColor: (val: string) => void
    size: Ref<string | number | undefined>
    setSize: (val: string | number) => void
    strokeWidth: Ref<number | undefined>
    setStrokeWidth: (val: number) => void
    duotoneColor: Ref<string | undefined>
    setDuotoneColor: (val: string) => void
    duotoneOpacity: Ref<number | undefined>
    setDuotoneOpacity: (val: number) => void
    mirrored: Ref<boolean | undefined>
    setMirrored: (val: boolean) => void
}

export function useSolar(): SolarState {
    const ctx = inject<SolarState>(SOLAR_CONTEXT_KEY)
    if (!ctx) throw new Error('useSolar() must be used inside a <SolarProvider>')
    return ctx
}
