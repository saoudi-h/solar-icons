'use client'
import { Input } from '@/components/ui/input'
import { cn } from '@/lib/utils'
import NumberFlow from '@number-flow/react'
import { MinimalisticMagnifierIcon } from '@solar-icons/react/linear/minimalistic-magnifier'

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
    return (
        <div className={cn('relative flex h-10 w-72 items-center', className)}>
            <MinimalisticMagnifierIcon
                className="
                  pointer-events-none absolute top-1/2 left-2.5 z-10 size-4
                  -translate-y-1/2 text-muted-foreground
                "
                isolated
            />
            <Input
                type="search"
                placeholder={placeholder}
                value={value}
                onChange={e => onChange(e.target.value)}
                className="
                  h-10 w-full rounded-lg border-0 border-none! bg-default-200
                  pr-12 pl-9 text-sm shadow-none
                  placeholder:text-muted-foreground
                "
            />
            <span
                aria-label={`${count} icons`}
                className="
                  pointer-events-none absolute top-1/2 right-3 z-10
                  -translate-y-1/2 font-mono text-xs text-foreground/60
                  tabular-nums
                ">
                <NumberFlow value={count} format={{ minimumIntegerDigits: 1 }} />
            </span>
        </div>
    )
}
