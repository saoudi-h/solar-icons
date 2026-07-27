import solar, { SolarProvider, useSolar } from '@solar-icons/react'
import { Arrows } from '@solar-icons/react/category'

function ThemeToggle() {
    const { value, setValue } = useSolar()

    return (
        <button onClick={() => setValue({ weight: value.weight === 'Bold' ? 'Linear' : 'Bold' })}>
            Toggle
        </button>
    )
}

export function App() {
    return (
        <SolarProvider value={{ color: 'navy', size: 24, weight: 'Bold' }}>
            <solar.ArrowRight mirrored />
            <Arrows.ArrowUp weight="Linear" />
            <ThemeToggle />
        </SolarProvider>
    )
}
