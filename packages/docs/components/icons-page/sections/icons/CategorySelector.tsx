'use client'
import { categories, Category } from '@/core/generated/utils'
import React, { FocusEventHandler, useState } from 'react'
import ReactSelect, { MultiValue } from 'react-select'
import { categoriesAtom } from '.'
import { useAtom } from 'jotai'
import './categorySelector.css'

const categoryOptions = categories.map(c => ({ value: c, label: c }))

export const CategorySelector: React.FC = () => {
    const [categories, setCategories] = useAtom(categoriesAtom)

    const [isFocused, setIsFocused] = useState(false)

    const onFocus: FocusEventHandler<HTMLInputElement> = () => {
        setIsFocused(true)
    }
    const onBlur: FocusEventHandler<HTMLInputElement> = () => {
        setIsFocused(false)
    }
    return (
        <ReactSelect
            defaultInputValue="Categories"
            onFocus={onFocus}
            onBlur={onBlur}
            isMulti
            name="Categories"
            options={categoryOptions}
            className="!bg-accent/30 !rounded-lg !border-none shadow-none"
            classNames={{
                multiValue: _ => '!bg-accent/70 !text-foreground',
                multiValueLabel: _ => '!bg-accent !text-foreground !rounded-xl',
                control: _ => 'min-h-10 w-full !rounded-lg border-none !shadow-none !border-none !backdrop-blur-md !bg-accent/30',
                container: _ => '!bg-transparent',
                option: _ => '!hover:!bg-red-500 !focus:bg-blue-500 !active:!bg-green-500',
                menu: _ => '!rounded-lg !bg-background !backdrop-blur-lg border-border/30',
                menuList: () => '!bg-accent/30',
                input: _ => '!text-foreground',
            }}
            classNamePrefix="select"
            isClearable
            value={categories.map(c => ({ value: c, label: c }))}
            onChange={(e: MultiValue<{ value: Category; label: Category }>) => {
                setCategories(e.map(c => c.value))
            }}
        />
    )
}

export default CategorySelector
