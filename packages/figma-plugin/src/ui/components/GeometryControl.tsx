import { useRef, useState, type KeyboardEvent, type PointerEvent } from 'react'

const DRAG_THRESHOLD_PX = 3

type GeometryControlProps = {
    label: string
    description: string
    value: number
    min: number
    max: number
    step: number
    defaultValue: number
    decimals?: number
    unit?: string
    onChange: (value: number) => void
    onCommit: (value: number) => void
}

export function GeometryControl({
    label,
    description,
    value,
    min,
    max,
    step,
    defaultValue,
    decimals = 0,
    unit = 'px',
    onChange,
    onCommit,
}: GeometryControlProps) {
    const controlRef = useRef<HTMLDivElement>(null)
    const startXRef = useRef(0)
    const startValueRef = useRef(0)
    const widthRef = useRef(120)
    const movedRef = useRef(false)
    const latestValueRef = useRef(value)
    const [isDragging, setIsDragging] = useState(false)
    const fillPercent = ((value - min) / (max - min)) * 100

    latestValueRef.current = value

    const normalize = (raw: number) => {
        const clamped = Math.max(min, Math.min(max, raw))
        const stepped = Math.round(clamped / step) * step
        return Number(stepped.toFixed(decimals))
    }

    const change = (raw: number) => {
        const next = normalize(raw)
        latestValueRef.current = next
        onChange(next)
        return next
    }

    const handlePointerDown = (event: PointerEvent<HTMLDivElement>) => {
        event.currentTarget.setPointerCapture(event.pointerId)
        startXRef.current = event.clientX
        startValueRef.current = value
        widthRef.current = controlRef.current?.offsetWidth || 120
        movedRef.current = false
    }

    const handlePointerMove = (event: PointerEvent<HTMLDivElement>) => {
        if (event.buttons === 0) return
        const delta = event.clientX - startXRef.current
        if (!movedRef.current && Math.abs(delta) < DRAG_THRESHOLD_PX) return
        movedRef.current = true
        setIsDragging(true)
        change(startValueRef.current + delta * ((max - min) / widthRef.current))
    }

    const finishPointer = (event: PointerEvent<HTMLDivElement>) => {
        if (event.currentTarget.hasPointerCapture(event.pointerId)) {
            event.currentTarget.releasePointerCapture(event.pointerId)
        }
        if (movedRef.current) onCommit(latestValueRef.current)
        setIsDragging(false)
    }

    const handleKeyDown = (event: KeyboardEvent<HTMLDivElement>) => {
        let next: number | undefined
        if (event.key === 'ArrowLeft' || event.key === 'ArrowDown') next = value - step
        if (event.key === 'ArrowRight' || event.key === 'ArrowUp') next = value + step
        if (event.key === 'Home') next = min
        if (event.key === 'End') next = max
        if (event.key === 'Enter' || event.key === ' ') next = defaultValue
        if (next === undefined) return
        event.preventDefault()
        onCommit(change(next))
    }

    const reset = () => onCommit(change(defaultValue))

    return (
        <div
            ref={controlRef}
            className="geometry-control"
            role="slider"
            tabIndex={0}
            title={`${description}. Drag horizontally to adjust; double-click to reset.`}
            aria-label={`${label}: ${value.toFixed(decimals)} ${unit}`}
            aria-valuenow={value}
            aria-valuemin={min}
            aria-valuemax={max}
            onPointerDown={handlePointerDown}
            onPointerMove={handlePointerMove}
            onPointerUp={finishPointer}
            onPointerCancel={finishPointer}
            onKeyDown={handleKeyDown}
            onDoubleClick={reset}
        >
            <span
                className={`geometry-fill ${isDragging ? 'dragging' : ''}`}
                style={{ width: `${fillPercent}%` }}
                aria-hidden="true"
            />
            <span className="geometry-label">{label}</span>
            <span className="geometry-value">
                {value.toFixed(decimals)}<span className="geometry-unit">{unit}</span>
            </span>
        </div>
    )
}
