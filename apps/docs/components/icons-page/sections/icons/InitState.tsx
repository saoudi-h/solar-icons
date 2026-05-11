'use client'
import { useSolar } from '@solar-icons/react'
import { useTheme } from 'next-themes'
import { useLayoutEffect } from 'react'

const INITIAL_DARK_COLOR = '#9fcfe6'
const INITIAL_LIGHT_COLOR = '#0f4159'

export const InitState = () => {
    const { resolvedTheme } = useTheme()
    const { setValue } = useSolar()

    useLayoutEffect(() => {
        setValue({
            color: resolvedTheme == 'dark' ? INITIAL_LIGHT_COLOR : INITIAL_DARK_COLOR,
        })
    }, [])

    return null
}
