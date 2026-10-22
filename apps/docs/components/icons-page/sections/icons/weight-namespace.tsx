'use client'

import type { Weight } from '@solar-icons/core/runtime'
import {
    createContext,
    useContext,
    useEffect,
    useState,
    type ComponentType,
    type ReactNode,
} from 'react'

const LOAD_WEIGHT_NAMESPACE: Record<Weight, () => Promise<unknown>> = {
    Bold: () => import('@solar-icons/react/bold'),
    BoldDuotone: () => import('@solar-icons/react/bold-duotone'),
    Broken: () => import('@solar-icons/react/broken'),
    Linear: () => import('@solar-icons/react/linear'),
    LineDuotone: () => import('@solar-icons/react/line-duotone'),
    Outline: () => import('@solar-icons/react/outline'),
}

/**
 * Dynamically loads the icon namespace for the given weight from
 * `@solar-icons/react/<weight-slug>`. Each weight is a separate
 * package entry (e.g. `@solar-icons/react/bold`) so the chunk for
 * the user's current weight is the only one downloaded initially.
 * The other 5 weights' chunks load on demand when the user
 * switches the style picker.
 *
 * Returns a `name -> ComponentType` map (e.g. `{ Home: HomeBoldIcon,
 * HomeAdd: HomeAddBoldIcon, ... }`). The component name uses the
 * PascalCase form with an `Icon` suffix; the `IconCard` uses
 * `nameToComponent(name)` to look it up.
 */
export function useWeightNamespace(weight: Weight) {
    const [ns, setNs] = useState<Record<string, ComponentType<any>> | null>(null)
    useEffect(() => {
        let active = true
        // Don't reset to null on weight change: the previous
        // namespace chunk stays in memory and continues to serve
        // the right icons while the new one loads. The IconCard
        // uses the new namespace as soon as the .then resolves.
        // (Resetting to null here would trigger a lint warning about
        // cascading renders and would force a skeleton flash on
        // every weight toggle, even when the chunk is already
        // cached by the browser.)
        // Vite needs each package entry to be statically discoverable; the
        // explicit loaders keep one lazy chunk per style in both frameworks.
        LOAD_WEIGHT_NAMESPACE[weight]().then(mod => {
            if (active) setNs(mod as Record<string, ComponentType<any>>)
        })
        return () => {
            active = false
        }
    }, [weight])
    return ns
}

const WeightNamespaceContext = createContext<Record<string, ComponentType<any>> | null>(null)

export const useWeightNamespaceContext = () => useContext(WeightNamespaceContext)

interface WeightNamespaceProviderProps {
    weight: Weight
    children: ReactNode
}

export const WeightNamespaceProvider = ({ weight, children }: WeightNamespaceProviderProps) => {
    const ns = useWeightNamespace(weight)
    return <WeightNamespaceContext.Provider value={ns}>{children}</WeightNamespaceContext.Provider>
}
