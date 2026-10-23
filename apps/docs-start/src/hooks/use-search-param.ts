import { useNavigate, useRouterState } from '@tanstack/react-router'
import { useCallback } from 'react'

type Options<T extends string> = {
    /** The accepted values. Any other value in the URL reads as absent. */
    values?: readonly T[]
    /** Read when the parameter is absent; writing it removes the parameter. */
    defaultValue?: T
}

/**
 * A string search parameter of the current route, read and written through
 * TanStack Router. Writes replace the history entry and keep the scroll.
 */
export function useSearchParam(
    key: string
): readonly [string | null, (value: string | null) => void]
export function useSearchParam<T extends string>(
    key: string,
    options: { values: readonly T[]; defaultValue: T }
): readonly [T, (value: T | null) => void]
export function useSearchParam<T extends string>(
    key: string,
    options: { values: readonly T[] }
): readonly [T | null, (value: T | null) => void]
export function useSearchParam(key: string, options: Options<string> = {}) {
    const { values, defaultValue } = options
    const search = useRouterState({ select: state => state.location.search }) as Record<
        string,
        unknown
    >
    const navigate = useNavigate()
    const raw = search[key]
    const value =
        typeof raw === 'string' && (!values || values.includes(raw)) ? raw : (defaultValue ?? null)

    const setValue = useCallback(
        (nextValue: string | null) => {
            const update = (previous: Record<string, unknown>) => {
                const next = { ...previous }
                if (nextValue === null || nextValue === defaultValue) {
                    delete next[key]
                } else if (!values || values.includes(nextValue)) {
                    next[key] = nextValue
                }
                return next
            }

            void navigate({ search: update as never, replace: true, resetScroll: false } as never)
        },
        [key, navigate, values, defaultValue]
    )

    return [value, setValue] as const
}
