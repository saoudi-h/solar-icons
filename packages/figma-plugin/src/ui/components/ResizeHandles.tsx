import { useRef, type PointerEvent } from 'react'
import type { UiMessage } from '../../shared/messages'

type Direction = 'n' | 'ne' | 'e' | 'se' | 's' | 'sw' | 'w' | 'nw'

const MIN_WIDTH = 280
const MIN_HEIGHT = 400
const MAX_WIDTH = 900
const MAX_HEIGHT = 900

function postMessage(message: UiMessage): void {
    parent.postMessage({ pluginMessage: message }, '*')
}

export function ResizeHandles() {
    const dragRef = useRef<{
        direction: Direction
        pointerId: number
        startScreenX: number
        startScreenY: number
        startWidth: number
        startHeight: number
    } | null>(null)
    const frameRef = useRef<number | null>(null)
    const pendingRef = useRef<Extract<UiMessage, { type: 'resize-window' }> | null>(null)

    const sendPending = () => {
        frameRef.current = null
        if (!pendingRef.current) return
        postMessage(pendingRef.current)
        pendingRef.current = null
    }

    const start = (event: PointerEvent<HTMLDivElement>, direction: Direction) => {
        event.preventDefault()
        event.currentTarget.setPointerCapture(event.pointerId)
        dragRef.current = {
            direction,
            pointerId: event.pointerId,
            startScreenX: event.screenX,
            startScreenY: event.screenY,
            startWidth: window.innerWidth,
            startHeight: window.innerHeight,
        }
        postMessage({ type: 'resize-start' })
    }

    const move = (event: PointerEvent<HTMLDivElement>) => {
        const drag = dragRef.current
        if (!drag || event.pointerId !== drag.pointerId) return
        // Screen coordinates stay stable when a north/west drag also repositions
        // the Figma plugin window. Client coordinates would shift with the iframe.
        const deltaX = event.screenX - drag.startScreenX
        const deltaY = event.screenY - drag.startScreenY
        const fromLeft = drag.direction.includes('w')
        const fromTop = drag.direction.includes('n')
        const horizontal = fromLeft || drag.direction.includes('e')
        const vertical = fromTop || drag.direction.includes('s')
        const rawWidth = horizontal
            ? drag.startWidth + (fromLeft ? -deltaX : deltaX)
            : drag.startWidth
        const rawHeight = vertical
            ? drag.startHeight + (fromTop ? -deltaY : deltaY)
            : drag.startHeight
        const width = Math.round(Math.max(MIN_WIDTH, Math.min(MAX_WIDTH, rawWidth)))
        const height = Math.round(Math.max(MIN_HEIGHT, Math.min(MAX_HEIGHT, rawHeight)))

        pendingRef.current = {
            type: 'resize-window',
            width,
            height,
            offsetX: fromLeft ? drag.startWidth - width : 0,
            offsetY: fromTop ? drag.startHeight - height : 0,
        }
        if (frameRef.current === null) frameRef.current = requestAnimationFrame(sendPending)
    }

    const end = (event: PointerEvent<HTMLDivElement>) => {
        if (!dragRef.current || event.pointerId !== dragRef.current.pointerId) return
        if (frameRef.current !== null) {
            cancelAnimationFrame(frameRef.current)
            sendPending()
        }
        if (event.currentTarget.hasPointerCapture(event.pointerId)) {
            event.currentTarget.releasePointerCapture(event.pointerId)
        }
        dragRef.current = null
        postMessage({ type: 'resize-end' })
    }

    return (
        <div className="resize-handles" aria-hidden="true">
            {(['n', 'ne', 'e', 'se', 's', 'sw', 'w', 'nw'] as const).map(direction => (
                <div
                    key={direction}
                    className={`resize-handle resize-${direction}`}
                    onPointerDown={event => start(event, direction)}
                    onPointerMove={move}
                    onPointerUp={end}
                    onPointerCancel={end}
                />
            ))}
        </div>
    )
}
