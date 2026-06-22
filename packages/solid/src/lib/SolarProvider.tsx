import {
    createContext,
    useContext,
    createSignal,
    createEffect,
    type JSX,
    type Accessor,
} from 'solid-js';

interface SolarState {
    color: Accessor<string | undefined>;
    setColor: (val: string) => void;
    size: Accessor<string | number | undefined>;
    setSize: (val: string | number) => void;
    strokeWidth: Accessor<number | undefined>;
    setStrokeWidth: (val: number) => void;
    duotoneColor: Accessor<string | undefined>;
    setDuotoneColor: (val: string) => void;
    duotoneOpacity: Accessor<number | undefined>;
    setDuotoneOpacity: (val: number) => void;
    mirrored: Accessor<boolean | undefined>;
    setMirrored: (val: boolean) => void;
}

const SolarContext = createContext<SolarState>();

export function useSolar() {
    const ctx = useContext(SolarContext);
    if (!ctx) throw new Error('useSolar() must be used inside a <SolarProvider>');
    return ctx;
}

export interface SolarProviderProps {
    color?: string;
    size?: string | number;
    strokeWidth?: number;
    duotoneColor?: string;
    duotoneOpacity?: number;
    mirrored?: boolean;
    children: JSX.Element;
}

export function SolarProvider(props: SolarProviderProps) {
    // eslint-disable-next-line no-unassigned-vars
    let wrapperEl: HTMLDivElement | undefined;

    const [color, setColorSignal] = createSignal(props.color);
    const [size, setSizeSignal] = createSignal(props.size);
    const [strokeWidth, setStrokeWidthSignal] = createSignal(props.strokeWidth);
    const [duotoneColor, setDuotoneColorSignal] = createSignal(props.duotoneColor);
    const [duotoneOpacity, setDuotoneOpacitySignal] = createSignal(props.duotoneOpacity);
    const [mirrored, setMirroredSignal] = createSignal(props.mirrored);

    const setSize = (val: string | number) => setSizeSignal(val);
    const setStrokeWidth = (val: number) => setStrokeWidthSignal(val);
    const setDuotoneColor = (val: string) => setDuotoneColorSignal(val);
    const setDuotoneOpacity = (val: number) => setDuotoneOpacitySignal(val);
    const setMirrored = (val: boolean) => setMirroredSignal(val);

    createEffect(() => {
        const el = wrapperEl;
        if (!el) return;
        const c = color();
        if (c !== undefined) el.style.setProperty('--solar-icon-color', c);
    });

    createEffect(() => {
        const el = wrapperEl;
        if (!el) return;
        const s = size();
        if (s != null)
            el.style.setProperty('--solar-icon-size', typeof s === 'number' ? `${s}px` : s);
    });

    createEffect(() => {
        const el = wrapperEl;
        if (!el) return;
        const sw = strokeWidth();
        if (sw != null) el.style.setProperty('--solar-stroke-width', String(sw));
    });

    createEffect(() => {
        const el = wrapperEl;
        if (!el) return;
        const dc = duotoneColor();
        if (dc) el.style.setProperty('--solar-duotone-color', dc);
    });

    createEffect(() => {
        const el = wrapperEl;
        if (!el) return;
        const d = duotoneOpacity();
        if (d != null) el.style.setProperty('--solar-duotone-opacity', String(d));
    });

    createEffect(() => {
        const el = wrapperEl;
        if (!el) return;
        const m = mirrored();
        if (m !== undefined)
            el.style.setProperty('--solar-icon-mirrored', m ? 'scale(-1, 1)' : 'none');
    });

    const state: SolarState = {
        color,
        setColor: setColorSignal,
        size,
        setSize,
        strokeWidth,
        setStrokeWidth,
        duotoneColor,
        setDuotoneColor,
        duotoneOpacity,
        setDuotoneOpacity,
        mirrored,
        setMirrored,
    };

    return (
        <SolarContext.Provider value={state}>
            <div ref={wrapperEl}>{props.children}</div>
        </SolarContext.Provider>
    );
}
