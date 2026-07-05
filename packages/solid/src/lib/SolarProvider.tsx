import { createContext, useContext, createSignal, createEffect, type JSX, type Accessor } from 'solid-js';

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

/**
 * Access the nearest `<SolarProvider>` state and setters.
 * Must be called inside a component that is a descendant of `<SolarProvider>`.
 */
export function useSolar() {
    const ctx = useContext(SolarContext);
    if (!ctx) throw new Error('useSolar() must be used inside a <SolarProvider>');
    return ctx;
}

/**
 * Props for `<SolarProvider>`, the global theming wrapper for Solar icons.
 */
export interface SolarProviderProps {
    /** Default icon color. Sets `--solar-color` on the wrapper. */
    color?: string;
    /** Default icon size. Sets `--solar-size`. */
    size?: string | number;
    /** Default stroke width. Sets `--solar-stroke-width`. */
    strokeWidth?: number;
    /** Default secondary color for duotone styles. Sets `--solar-duotone-color`. */
    secondaryColor?: string;
    /** Default secondary opacity for duotone styles (0–1). Sets `--solar-duotone-opacity`. */
    secondaryOpacity?: number;
    children: JSX.Element;
}

export function SolarProvider(props: SolarProviderProps) {
    const [color, setColorSignal] = createSignal(props.color);
    const [size, setSizeSignal] = createSignal(props.size);
    const [strokeWidth, setStrokeWidthSignal] = createSignal(props.strokeWidth);
    const [secondaryColor, setSecondaryColorSignal] = createSignal(props.secondaryColor);
    const [secondaryOpacity, setSecondaryOpacitySignal] = createSignal(props.secondaryOpacity);

    createEffect(() => setColorSignal(() => props.color));
    createEffect(() => setSizeSignal(() => props.size));
    createEffect(() => setStrokeWidthSignal(() => props.strokeWidth));
    createEffect(() => setSecondaryColorSignal(() => props.secondaryColor));
    createEffect(() => setSecondaryOpacitySignal(() => props.secondaryOpacity));

    const setSize = (val: string | number) => setSizeSignal(val);
    const setStrokeWidth = (val: number) => setStrokeWidthSignal(val);
    const setSecondaryColor = (val: string) => setSecondaryColorSignal(val);
    const setSecondaryOpacity = (val: number) => setSecondaryOpacitySignal(val);

    const wrapperStyle = () => {
        const s: Record<string, string> = { display: 'contents' };
        const c = color();
        const sz = size();
        const sw = strokeWidth();
        const sc = secondaryColor();
        const so = secondaryOpacity();
        if (c !== undefined) s['--solar-color'] = c;
        if (sz != null) s['--solar-size'] = typeof sz === 'number' ? `${sz}px` : sz;
        if (sw != null) s['--solar-stroke-width'] = String(sw);
        if (sc) s['--solar-duotone-color'] = sc;
        if (so != null) s['--solar-duotone-opacity'] = String(so);
        return s;
    };

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
            <div style={wrapperStyle()}>{props.children}</div>
        </SolarContext.Provider>
    );
}
