import type { JSX } from '@solidjs/web'
import { createContext, createSignal, useContext, type Accessor } from 'solid-js'

export interface SolarState {
    color: Accessor<string | undefined>
    setColor: (val: string) => void
    size: Accessor<string | number | undefined>
    setSize: (val: string | number) => void
    strokeWidth: Accessor<number | undefined>
    setStrokeWidth: (val: number) => void
    secondaryColor: Accessor<string | undefined>
    setSecondaryColor: (val: string) => void
    secondaryOpacity: Accessor<number | undefined>
    setSecondaryOpacity: (val: number) => void
}

const SolarContext = createContext<SolarState>()

/**
 * Access the nearest `<SolarProvider>` state and setters.
 *
 * Solid 2 throws its own `ContextNotFoundError` when no provider is mounted,
 * and a `NoOwnerError` outside a reactive owner (for example inside an event
 * handler). Call it while a component renders.
 */
export function useSolar(): SolarState {
    return useContext(SolarContext)
}

/**
 * Props for `<SolarProvider>`, the global theming wrapper for Solar icons.
 */
export interface SolarProviderProps {
    /** Default icon color. Sets `--solar-color` on the wrapper. */
    color?: string
    /** Default icon size. Sets `--solar-size`. */
    size?: string | number
    /** Default stroke width. Sets `--solar-stroke-width`. */
    strokeWidth?: number
    /** Default secondary color for duotone styles. Sets `--solar-secondary-color`. */
    secondaryColor?: string
    /** Default secondary opacity for duotone styles (0–1). Sets `--solar-secondary-opacity`. */
    secondaryOpacity?: number
    children: JSX.Element
}

export function SolarProvider(props: SolarProviderProps) {
    // A signal created from a function is a writable derived signal in Solid 2:
    // it follows the prop, and a setter call overrides it until the prop changes.
    const [color, setColorSignal] = createSignal<string | undefined>(() => props.color)
    const [size, setSizeSignal] = createSignal<string | number | undefined>(() => props.size)
    const [strokeWidth, setStrokeWidthSignal] = createSignal<number | undefined>(
        () => props.strokeWidth
    )
    const [secondaryColor, setSecondaryColorSignal] = createSignal<string | undefined>(
        () => props.secondaryColor
    )
    const [secondaryOpacity, setSecondaryOpacitySignal] = createSignal<number | undefined>(
        () => props.secondaryOpacity
    )

    const wrapperStyle = () => {
        const s: Record<string, string> = { display: 'contents' }
        const c = color()
        const sz = size()
        const sw = strokeWidth()
        const sc = secondaryColor()
        const so = secondaryOpacity()
        if (c !== undefined) s['--solar-color'] = c
        if (sz != null) s['--solar-size'] = typeof sz === 'number' ? `${sz}px` : sz
        if (sw != null) s['--solar-stroke-width'] = String(sw)
        if (sc) s['--solar-secondary-color'] = sc
        if (so != null) s['--solar-secondary-opacity'] = String(so)
        return s
    }

    const state: SolarState = {
        color,
        setColor: val => setColorSignal(() => val),
        size,
        setSize: val => setSizeSignal(() => val),
        strokeWidth,
        setStrokeWidth: val => setStrokeWidthSignal(() => val),
        secondaryColor,
        setSecondaryColor: val => setSecondaryColorSignal(() => val),
        secondaryOpacity,
        setSecondaryOpacity: val => setSecondaryOpacitySignal(() => val),
    }

    return (
        <SolarContext value={state}>
            <div style={wrapperStyle()}>{props.children}</div>
        </SolarContext>
    )
}
