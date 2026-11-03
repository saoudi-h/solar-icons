'use client'
import NumberFlow from '@number-flow/react'
import { CloseIcon } from '@solar-icons/react/linear/close'
import { MinimalisticMagnifierIcon } from '@solar-icons/react/linear/minimalistic-magnifier'
import { useRef } from 'react'

import { Input } from '~/components/ui/input'
import { cn } from '~/lib/utils'

interface SearchInputProps {
    value: string
    onChange: (value: string) => void
    count: number
    className?: string
    placeholder?: string
}

export const SearchInput: React.FC<SearchInputProps> = ({
    value,
    onChange,
    count,
    className,
    placeholder = 'Search…',
}) => {
    const inputRef = useRef<HTMLInputElement>(null)

    return (
        <div className={cn('relative flex h-10 w-72 items-center', className)}>
            <MinimalisticMagnifierIcon
                className="
                  pointer-events-none absolute top-1/2 left-2.5 z-10 size-4 -translate-y-1/2
                  text-muted-foreground
                "
                isolated
            />
            <Input
                ref={inputRef}
                type="search"
                placeholder={placeholder}
                value={value}
                onChange={e => onChange(e.target.value)}
                className="
                  h-10 w-full rounded-lg border-0 border-none! bg-default-200 pr-12 pl-9 text-sm
                  shadow-none
                  placeholder:text-muted-foreground
                  [&::-webkit-search-cancel-button]:appearance-none
                "
            />
            <span
                className={cn(
                    'group absolute top-1/2 right-3 z-10 flex -translate-y-1/2 items-center',
                    !value && 'pointer-events-none'
                )}>
                <span
                    aria-label={`${count} icons`}
                    className="
                      font-mono text-xs text-foreground/60 tabular-nums
                      transition-[opacity,scale] duration-200
                      group-hover:scale-75 group-hover:opacity-0
                      group-focus-within:scale-75 group-focus-within:opacity-0
                    ">
                    <NumberFlow value={count} format={{ minimumIntegerDigits: 1 }} />
                </span>
                {value && (
                    <button
                        type="button"
                        aria-label="Clear search"
                        onClick={() => {
                            onChange('')
                            inputRef.current?.focus()
                        }}
                        className="
                          absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 scale-75
                          rounded-md p-1 text-foreground/60 opacity-0
                          transition-[opacity,scale] duration-200
                          focus-visible:ring-1 focus-visible:ring-ring focus-visible:outline-hidden
                          group-hover:scale-100 group-hover:opacity-100
                          group-focus-within:scale-100 group-focus-within:opacity-100
                        ">
                        <CloseIcon className="size-4" isolated />
                    </button>
                )}
            </span>
        </div>
    )
}
