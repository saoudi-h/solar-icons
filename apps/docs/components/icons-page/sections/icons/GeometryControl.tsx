'use client'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { cn } from '@/lib/utils'
import { useCallback, useRef, useState } from 'react'

interface GeometryControlProps {
    label: string
    tooltip: string
    value: number
    onChange: (value: number) => void
    min: number
    max: number
    step: number
    defaultValue: number
    decimals?: number
    unit?: string
    disabled?: boolean
    className?: string
}

const DRAG_THRESHOLD_PX = 3

export const GeometryControl: React.FC<GeometryControlProps> = ({
    label,
    tooltip,
    value,
    onChange,
    min,
    max,
    step,
    defaultValue,
    decimals = 0,
    unit = 'px',
    disabled,
    className,
}) => {
    const chipRef = useRef<HTMLDivElement>(null)
    const startXRef = useRef(0)
    const startValueRef = useRef(0)
    const widthRef = useRef(144)
    const movedRef = useRef(false)
    const [isDragging, setIsDragging] = useState(false)

    const displayValue = value.toFixed(decimals)
    const fillPercent = ((value - min) / (max - min)) * 100
    const isModified = value !== defaultValue

    const commit = useCallback(
        (raw: number) => {
            const clamped = Math.max(min, Math.min(max, raw))
            const stepped = Math.round(clamped / step) * step
            onChange(Number(stepped.toFixed(decimals)))
        },
        [min, max, step, decimals, onChange]
    )

    const handlePointerDown = (e: React.PointerEvent<HTMLDivElement>) => {
        if (disabled) return
        e.currentTarget.setPointerCapture(e.pointerId)
        startXRef.current = e.clientX
        startValueRef.current = value
        widthRef.current = chipRef.current?.offsetWidth || 144
        movedRef.current = false
    }

    const handlePointerMove = (e: React.PointerEvent<HTMLDivElement>) => {
        if (e.buttons === 0) return
        const delta = e.clientX - startXRef.current
        if (!movedRef.current && Math.abs(delta) < DRAG_THRESHOLD_PX) return
        movedRef.current = true
        if (!isDragging) setIsDragging(true)
        const range = max - min
        const sensitivity = range / widthRef.current
        commit(startValueRef.current + delta * sensitivity)
    }

    const handlePointerUp = (e: React.PointerEvent<HTMLDivElement>) => {
        e.currentTarget.releasePointerCapture(e.pointerId)
        if (isDragging) {
            setIsDragging(false)
        }
    }

    const handleKeyDown = (e: React.KeyboardEvent<HTMLDivElement>) => {
        if (disabled) return
        if (e.key === 'ArrowLeft' || e.key === 'ArrowDown') {
            e.preventDefault()
            commit(value - step)
        } else if (e.key === 'ArrowRight' || e.key === 'ArrowUp') {
            e.preventDefault()
            commit(value + step)
        } else if (e.key === 'Home') {
            e.preventDefault()
            commit(min)
        } else if (e.key === 'End') {
            e.preventDefault()
            commit(max)
        } else if (e.key === 'Enter' || e.key === ' ') {
            e.preventDefault()
            commit(defaultValue)
        }
    }

    const handleDoubleClick = () => {
        if (disabled) return
        commit(defaultValue)
    }

    return (
        <Tooltip>
            <TooltipTrigger asChild>
                <div
                    ref={chipRef}
                    role="slider"
                    tabIndex={disabled ? -1 : 0}
                    aria-label={`${label}: ${displayValue}${unit}`}
                    aria-valuenow={value}
                    aria-valuemin={min}
                    aria-valuemax={max}
                    aria-disabled={disabled}
                    data-vaul-no-drag
                    onPointerDown={handlePointerDown}
                    onPointerMove={handlePointerMove}
                    onPointerUp={handlePointerUp}
                    onPointerCancel={handlePointerUp}
                    onKeyDown={handleKeyDown}
                    onDoubleClick={handleDoubleClick}
                    className={cn(
                        `
                          relative flex h-10 w-36 items-center justify-center
                          gap-1.5 overflow-hidden rounded-lg bg-default-200
                          select-none
                        `,
                        !disabled &&
                            `
                              cursor-ew-resize
                              hover:bg-default-300
                              focus-visible:ring-1 focus-visible:ring-ring
                              focus-visible:outline-hidden
                            `,
                        disabled && 'pointer-events-none opacity-30',
                        className
                    )}>
                    <div
                        aria-hidden="true"
                        className={cn(
                            `
                              pointer-events-none absolute inset-y-0 left-0
                              bg-foreground/10
                            `,
                            !isDragging && 'transition-[width] duration-150'
                        )}
                        style={{ width: `${fillPercent}%` }}
                    />
                    <div
                        className="
                          relative text-xs font-medium text-muted-foreground
                        ">
                        {label}
                    </div>
                    <div
                        className={cn(
                            `relative font-mono text-sm tabular-nums`,
                            isModified
                                ? 'text-foreground'
                                : `text-foreground/80`
                        )}>
                        {displayValue}
                        {unit}
                    </div>
                </div>
            </TooltipTrigger>
            <TooltipContent>
                <p>{tooltip}</p>
            </TooltipContent>
        </Tooltip>
    )
}
