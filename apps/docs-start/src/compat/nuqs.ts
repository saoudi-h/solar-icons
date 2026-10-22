import { useNavigate, useRouterState } from '@tanstack/react-router'
import { useCallback } from 'react'

type LiteralParser<T extends string> = {
    values: readonly T[]
    defaultValue?: T
    withDefault: (value: T) => DefaultLiteralParser<T>
}

type DefaultLiteralParser<T extends string> = LiteralParser<T> & { defaultValue: T }

function isLiteralParser(value: unknown): value is LiteralParser<any> {
    return (
        typeof value === 'object' &&
        value !== null &&
        'values' in value &&
        Array.isArray(value.values)
    )
}

export function parseAsStringLiteral<const T extends readonly string[]>(values: T) {
    const parser: LiteralParser<T[number]> = {
        values,
        withDefault(defaultValue) {
            return { ...parser, defaultValue } as DefaultLiteralParser<T[number]>
        },
    }
    return parser
}

/**
 * Compatibility hook for the existing icon explorer. Query state is owned by
 * TanStack Router on this app; `nuqs` remains in use only in the Next app.
 */
export function useQueryState<T extends string>(
    key: string,
    parser: DefaultLiteralParser<T>
): readonly [T, (value: T | null) => void]
export function useQueryState<T extends string>(
    key: string,
    parser: LiteralParser<T>
): readonly [T | null, (value: T | null) => void]
export function useQueryState(key: string): readonly [string | null, (value: string | null) => void]
export function useQueryState(key: string, parser?: LiteralParser<any>) {
    const search = useRouterState({ select: state => state.location.search }) as Record<
        string,
        unknown
    >
    const navigate = useNavigate({ from: '/icons' })
    const raw = search[key]
    const value =
        typeof raw === 'string' && (!isLiteralParser(parser) || parser.values.includes(raw))
            ? raw
            : (parser?.defaultValue ?? null)

    const setValue = useCallback(
        (nextValue: string | null) => {
            const update = (previous: Record<string, unknown>) => {
                const next = { ...previous }
                if (nextValue === null || nextValue === parser?.defaultValue) {
                    delete next[key]
                } else if (!isLiteralParser(parser) || parser.values.includes(nextValue)) {
                    next[key] = nextValue
                }
                return next
            }

            void navigate({
                search: update as never,
                replace: true,
                resetScroll: false,
            } as never)
        },
        [key, navigate, parser]
    )

    return [value, setValue] as never
}
