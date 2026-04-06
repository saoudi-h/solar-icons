import { createContext, useContext, type ParentComponent } from 'solid-js'
import { createStore } from 'solid-js/store'
import type { IconWeight, Numberish, SolarIconsConfig } from './types'

export const DEFAULT_SOLAR: Required<SolarIconsConfig> = {
    color: 'currentColor',
    size: '1em',
    weight: 'Linear',
    mirrored: false,
}

export interface SolarIconContext {
    config: SolarIconsConfig
    setConfig(config: Partial<SolarIconsConfig>): void
    setWeight(weight: IconWeight): void
    setSize(size: Numberish): void
    setColor(color: string): void
}

const SolarContext = createContext<SolarIconContext>({
    config: DEFAULT_SOLAR,
    setConfig: () => {},
    setWeight: () => {},
    setSize: () => {},
    setColor: () => {},
})

export function createSolarIcons(partial: Partial<SolarIconsConfig> = {}): SolarIconContext {
    const [config, setStore] = createStore<SolarIconsConfig>({
        ...DEFAULT_SOLAR,
        ...partial,
    })

    return {
        config,
        setConfig: (updates: Partial<SolarIconsConfig>) => setStore(updates),
        setWeight: (weight: IconWeight) => setStore('weight', weight),
        setSize: (size: Numberish) => setStore('size', size),
        setColor: (color: string) => setStore('color', color),
    }
}

export const SolarProvider: ParentComponent<Partial<SolarIconsConfig>> = (props) => {
    const init: Partial<SolarIconsConfig> = {}
    if (props.color !== undefined) init.color = props.color
    if (props.size !== undefined) init.size = props.size
    if (props.weight !== undefined) init.weight = props.weight
    if (props.mirrored !== undefined) init.mirrored = props.mirrored
    const context = createSolarIcons(init)

    return (
        <SolarContext.Provider value={context}>
            {props.children}
        </SolarContext.Provider>
    )
}

export function useSolar(): SolarIconContext {
    return useContext(SolarContext)
}
