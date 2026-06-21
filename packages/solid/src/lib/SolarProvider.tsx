import { createContext, useContext, createEffect, type JSX } from 'solid-js';

interface SolarRef {
    setProperty: (prop: string, value: string) => void;
    element: HTMLDivElement | null;
}

const SolarContext = createContext<SolarRef>();

export function useSolar() {
    const ctx = useContext(SolarContext);
    if (!ctx) throw new Error('useSolar() must be used inside a <SolarProvider>');

    return {
        setColor: (val: string) => ctx.setProperty('--solar-icon-color', val),
        setSize: (val: string | number) =>
            ctx.setProperty('--solar-icon-size', typeof val === 'number' ? `${val}px` : val),
        setStrokeWidth: (val: number) => ctx.setProperty('--solar-stroke-width', String(val)),
        setDuotoneColor: (val: string) => ctx.setProperty('--solar-duotone-color', val),
        setDuotoneOpacity: (val: number) => ctx.setProperty('--solar-duotone-opacity', String(val)),
    };
}

export interface SolarProviderProps {
    color?: string;
    size?: string | number;
    strokeWidth?: number;
    duotoneColor?: string;
    duotoneOpacity?: number;
    children: JSX.Element;
}

export function SolarProvider(props: SolarProviderProps) {
    // eslint-disable-next-line no-unassigned-vars
    let wrapperEl: HTMLDivElement | undefined;

    const ctxValue: SolarRef = {
        setProperty: (prop, value) => {
            wrapperEl?.style.setProperty(prop, value);
        },
        get element() {
            return wrapperEl ?? null;
        },
    };

    createEffect(() => {
        const el = wrapperEl;
        if (!el) return;
        const c = props.color;
        if (c !== undefined) el.style.setProperty('--solar-icon-color', c);
    });

    createEffect(() => {
        const el = wrapperEl;
        if (!el) return;
        const s = props.size;
        if (s != null)
            el.style.setProperty('--solar-icon-size', typeof s === 'number' ? `${s}px` : s);
    });

    createEffect(() => {
        const el = wrapperEl;
        if (!el) return;
        const sw = props.strokeWidth;
        if (sw != null) el.style.setProperty('--solar-stroke-width', String(sw));
    });

    createEffect(() => {
        const el = wrapperEl;
        if (!el) return;
        const dc = props.duotoneColor;
        if (dc) el.style.setProperty('--solar-duotone-color', dc);
    });

    createEffect(() => {
        const el = wrapperEl;
        if (!el) return;
        const d = props.duotoneOpacity;
        if (d != null) el.style.setProperty('--solar-duotone-opacity', String(d));
    });

    return (
        <SolarContext.Provider value={ctxValue}>
            <div ref={wrapperEl}>{props.children}</div>
        </SolarContext.Provider>
    );
}
