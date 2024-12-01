'use client'
import { useAtom } from 'jotai'
import { useEffect, useLayoutEffect } from 'react'
import { useQueryState, parseAsArrayOf, parseAsString } from 'nuqs'
import { categoriesAtom, keywordAtom } from './context'
import { CategoryOption } from './utils'
import { useTheme } from 'next-themes'
import { useSolar } from '@solar-icons/react'


const INITIAL_DARK_COLOR = '#9fcfe6'
const INITIAL_LIGHT_COLOR = '#0f4159'
const isArrayEqual = (a: any[], b: any[]) => {
    if (a.length !== b.length) return false
    for (let i = 0; i < a.length; i++) {
        if (!b.includes(a[i])) return false
    }
    return true
}

export const InitState = () => {
    const { resolvedTheme } = useTheme()
    const { setValue } = useSolar()
    const [keyword, setKeyword] = useAtom(keywordAtom)
    const [categories, setCategories] = useAtom(categoriesAtom)
    const [searchParam, setSearchParam] = useQueryState('search')
    const [categoryParams, setCategoryParams] = useQueryState(
        'categories',
        parseAsArrayOf(parseAsString, ';')
    )

    // initialize color
    useLayoutEffect(() => {
        setValue({
            color: resolvedTheme == 'dark' ? INITIAL_LIGHT_COLOR : INITIAL_DARK_COLOR,
        })
    }, [])

    // synchronize query params
    useEffect(() => {
        if (searchParam !== keyword) setSearchParam(keyword === '' ? null : keyword)
    }, [keyword])
    useEffect(() => {
        if (searchParam && searchParam !== keyword) setKeyword(searchParam)
    }, [searchParam])

    useEffect(() => {
        if (
            categories &&
            (categoryParams === null ||
                !isArrayEqual(
                    categoryParams,
                    categories.map(c => c.value)
                ))
        )
            setCategoryParams(categories.length === 0 ? null : categories.map(c => c.value))
    }, [categories])

    useEffect(() => {
        if (
            categoryParams &&
            !isArrayEqual(
                categoryParams,
                categories.map(c => c.value)
            )
        )
            setCategories(
                (categoryParams?.map(c => ({ value: c, label: c })) as CategoryOption[]) || []
            )
    }, [categoryParams])
    return null
}
