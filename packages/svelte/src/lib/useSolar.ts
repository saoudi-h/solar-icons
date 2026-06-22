import { getContext } from 'svelte';

interface SolarState {
    readonly color: string | undefined;
    setColor(val: string): void;
    readonly size: string | number | undefined;
    setSize(val: string | number): void;
    readonly strokeWidth: number | undefined;
    setStrokeWidth(val: number): void;
    readonly duotoneColor: string | undefined;
    setDuotoneColor(val: string): void;
    readonly duotoneOpacity: number | undefined;
    setDuotoneOpacity(val: number): void;
}

export const SOLAR_CONTEXT_KEY = Symbol('solar');

export function useSolar(): SolarState {
    const ctx = getContext<SolarState>(SOLAR_CONTEXT_KEY);
    if (!ctx) throw new Error('useSolar() must be used inside a <SolarProvider>');
    return ctx;
}
