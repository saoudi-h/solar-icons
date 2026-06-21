import { createContext, useContext, type JSX } from 'solid-js';

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
        setStrokeWidth: (val: number) =>
            ctx.setProperty('--solar-stroke-width', String(val)),
        setDuotoneColor: (val: string) => ctx.setProperty('--solar-duotone-color', val),
        setDuotoneOpacity: (val: number) =>
            ctx.setProperty('--solar-duotone-opacity', String(val)),
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
    let wrapperEl: HTMLDivElement | undefined;

    const styleVars = () => {
        const s: Record<string, string> = {};
        if (props.color) s['--solar-icon-color'] = props.color;
        if (props.size != null)
            s['--solar-icon-size'] = typeof props.size === 'number' ? `${props.size}px` : props.size;
        if (props.strokeWidth != null) s['--solar-stroke-width'] = String(props.strokeWidth);
        if (props.duotoneColor) s['--solar-duotone-color'] = props.duotoneColor;
        if (props.duotoneOpacity != null)
            s['--solar-duotone-opacity'] = String(props.duotoneOpacity);
        return s;
    };

    const ctxValue: SolarRef = {
        setProperty: (prop, value) => {
            wrapperEl?.style.setProperty(prop, value);
        },
        get element() {
            return wrapperEl ?? null;
        },
    };

    return (
        <SolarContext.Provider value={ctxValue}>
            <div ref={wrapperEl} style={styleVars()}>
                {props.children}
            </div>
        </SolarContext.Provider>
    );
}
