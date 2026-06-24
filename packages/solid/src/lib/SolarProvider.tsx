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
    secondaryColor: Accessor<string | undefined>;
    setSecondaryColor: (val: string) => void;
    secondaryOpacity: Accessor<number | undefined>;
    setSecondaryOpacity: (val: number) => void;
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
    secondaryColor?: string;
    secondaryOpacity?: number;
    children: JSX.Element;
}

export function SolarProvider(props: SolarProviderProps) {
    // eslint-disable-next-line no-unassigned-vars
    let wrapperEl: HTMLDivElement | undefined;

    const [color, setColorSignal] = createSignal(props.color);
    const [size, setSizeSignal] = createSignal(props.size);
    const [strokeWidth, setStrokeWidthSignal] = createSignal(props.strokeWidth);
    const [secondaryColor, setSecondaryColorSignal] = createSignal(props.secondaryColor);
    const [secondaryOpacity, setSecondaryOpacitySignal] = createSignal(props.secondaryOpacity);

    const setSize = (val: string | number) => setSizeSignal(val);
    const setStrokeWidth = (val: number) => setStrokeWidthSignal(val);
    const setSecondaryColor = (val: string) => setSecondaryColorSignal(val);
    const setSecondaryOpacity = (val: number) => setSecondaryOpacitySignal(val);

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
        const sc = secondaryColor();
        if (sc) el.style.setProperty('--solar-duotone-color', sc);
    });

    createEffect(() => {
        const el = wrapperEl;
        if (!el) return;
        const so = secondaryOpacity();
        if (so != null) el.style.setProperty('--solar-duotone-opacity', String(so));
    });

    const state: SolarState = {
        color,
        setColor: setColorSignal,
        size,
        setSize,
        strokeWidth,
        setStrokeWidth,
        secondaryColor,
        setSecondaryColor,
        secondaryOpacity,
        setSecondaryOpacity,
    };

    return (
        <SolarContext.Provider value={state}>
            <div ref={wrapperEl}>{props.children}</div>
        </SolarContext.Provider>
    );
}
