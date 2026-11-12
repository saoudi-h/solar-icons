'use client'
import { AnimatePresence, motion, useReducedMotion } from 'motion/react'
import type { FC } from 'react'
import { useEffect, useRef } from 'react'

import { cn } from '~/lib/utils'

import { useSelectedIcon, useSelectedIconName } from '../context'
import { PANEL_SURFACE } from '../surface'
import { Content } from './Content'

export interface IconDetailProps {
    /**
     * `side`: a column next to the grid, as tall as the grid. The grid gives
     * up width, which a wide screen has to spare, and keeps all its rows.
     * `sheet`: a panel under the grid, for screens too narrow for a column.
     */
    placement: 'side' | 'sheet'
    /**
     * Height taken under the grid, in pixels. Only a sheet takes any; the
     * parent subtracts it from the grid so the last rows stay reachable.
     */
    onHeightChange?: (height: number) => void
}

export const IconDetail: FC<IconDetailProps> = ({ placement, onHeightChange }) => {
    const selectedIcon = useSelectedIcon()
    const [, setIconName] = useSelectedIconName()
    const panelRef = useRef<HTMLDivElement>(null)
    const reduceMotion = useReducedMotion()
    const isSheet = placement === 'sheet'

    // Name of the icon whose card gets the focus back once the panel is gone.
    const focusAfterClose = useRef<string | null>(null)

    const handleClose = () => {
        // Give the focus back only when it was inside the panel.
        focusAfterClose.current =
            selectedIcon && panelRef.current?.contains(document.activeElement)
                ? selectedIcon.name
                : null
        setIconName(null)
    }

    const restoreFocus = () => {
        const name = focusAfterClose.current
        focusAfterClose.current = null
        if (name === null) return
        // The grid gets its width back when the panel leaves and lays its
        // cells out again, which can remount the card that was just focused.
        // The focus is therefore checked over a few frames and given again
        // while it is lost. The card may also have been virtualized away:
        // the grid itself is the fallback.
        let framesLeft = 8
        const settle = () => {
            const scroller = document.querySelector<HTMLElement>('[data-icon-scroller]')
            if (!scroller) return
            const active = document.activeElement
            const lost = !active || active === document.body
            // The user moved the focus elsewhere in the meantime: leave it.
            if (!lost && !scroller.contains(active) && framesLeft < 8) return
            if (lost || framesLeft === 8) {
                const card = scroller.querySelector<HTMLButtonElement>(
                    `button[aria-label="${CSS.escape(name)}"]`
                )
                ;(card ?? scroller).focus({ preventScroll: true })
            }
            framesLeft -= 1
            if (framesLeft > 0) requestAnimationFrame(settle)
        }
        requestAnimationFrame(() => requestAnimationFrame(settle))
    }

    useEffect(() => {
        // Escape closes the panel only when nothing else has a claim on it:
        // an open popover, drawer or menu closes first, and a text field
        // keeps its own behaviour (clearing the search). A tooltip is not a
        // claim: it also handles Escape, so the key is read on `window`,
        // before any layer, and the open layers are looked up instead.
        const handleKeyDown = (event: KeyboardEvent) => {
            if (event.key !== 'Escape') return
            if (event.isComposing) return
            if (event.altKey || event.ctrlKey || event.metaKey || event.shiftKey) return
            const target = event.target
            if (
                target instanceof HTMLElement &&
                (target.isContentEditable || target.closest('input, textarea, select'))
            ) {
                return
            }
            if (document.querySelector('[role="dialog"], [role="menu"], [role="listbox"]')) return
            handleClose()
        }
        if (!selectedIcon) return
        window.addEventListener('keydown', handleKeyDown, true)
        return () => window.removeEventListener('keydown', handleKeyDown, true)
    })

    const isOpen = selectedIcon !== null
    useEffect(() => {
        if (!isSheet || !isOpen) {
            onHeightChange?.(0)
            return
        }
        const el = panelRef.current
        if (!el) return
        // `offsetHeight` ignores the entrance transform, unlike
        // `getBoundingClientRect`, so the grid gets the settled height.
        const report = () => onHeightChange?.(el.offsetHeight)
        const observer = new ResizeObserver(report)
        observer.observe(el)
        const rafId = requestAnimationFrame(report)
        return () => {
            cancelAnimationFrame(rafId)
            observer.disconnect()
        }
    }, [isSheet, isOpen, onHeightChange])

    const offset = isSheet ? { y: 24 } : { x: 16 }

    return (
        <AnimatePresence initial={false} onExitComplete={restoreFocus}>
            {selectedIcon && (
                <motion.div
                    ref={panelRef}
                    role="region"
                    aria-label="Icon details"
                    key="details"
                    initial={{ opacity: 0, ...offset }}
                    animate={{ opacity: 1, x: 0, y: 0 }}
                    exit={{ opacity: 0, ...offset }}
                    transition={{ duration: reduceMotion ? 0 : 0.16, ease: 'easeOut' }}
                    className={cn(
                        'flex flex-col overflow-hidden rounded-2xl',
                        PANEL_SURFACE,
                        isSheet
                            ? 'sticky inset-x-0 bottom-0 max-h-[52vh] w-full'
                            : 'h-full w-80 shrink-0 xl:w-[23rem]'
                    )}>
                    <Content onClose={handleClose} placement={placement} />
                </motion.div>
            )}
        </AnimatePresence>
    )
}
