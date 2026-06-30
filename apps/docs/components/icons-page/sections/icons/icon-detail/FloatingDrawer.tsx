'use client'
import { Button } from '@/components/ui/button'
import { cn } from '@/lib/utils'
import { CloseCircleIcon } from '@solar-icons/react/bold/close-circle'
import { AnimatePresence, motion } from 'framer-motion'
import type { FC } from 'react'
import { useEffect, useRef } from 'react'
import { useSelectedIcon, useSelectedIconName } from '../context'

export interface FloatingDrawerProps {
    children: React.ReactNode
    /**
     * Fires whenever the drawer's measured pixel height changes
     * (mount, content swap, resize). The parent uses this to
     * subtract the drawer's height from the icon grid + categories
     * sidebar so they stay fully scrollable even when the drawer
     * is open at the bottom of the layout. See the DOCS-UI-02
     * worklog for the reasoning.
     */
    onHeightChange?: (height: number) => void
}

export const FloatingDrawer: FC<FloatingDrawerProps> = ({ children, onHeightChange }) => {
    const selectedIcon = useSelectedIcon()
    const [, setIconName] = useSelectedIconName()
    const drawerRef = useRef<HTMLDivElement>(null)

    const handleClose = () => {
        setIconName(null)
    }

    useEffect(() => {
        const handleKeyDown = (event: KeyboardEvent) => {
            if (event.key === 'Escape') {
                handleClose()
            }
        }
        document.addEventListener('keydown', handleKeyDown)
        return () => document.removeEventListener('keydown', handleKeyDown)
        // eslint-disable-next-line react-hooks/exhaustive-deps
    }, [])

    // Reset the reported height to 0 when the drawer is closed so
    // the grid + sidebar can reclaim the space the drawer was
    // occupying. Mounting a new observer (below) re-syncs on every
    // open; this effect handles the close case which doesn't
    // trigger the observer.
    useEffect(() => {
        if (!selectedIcon) onHeightChange?.(0)
    }, [selectedIcon, onHeightChange])

    useEffect(() => {
        if (!selectedIcon || !drawerRef.current) return
        const el = drawerRef.current
        const report = () => {
            onHeightChange?.(el.getBoundingClientRect().height)
        }
        const observer = new ResizeObserver(report)
        observer.observe(el)
        // Initial measurement on the next frame so the element has
        // its animated-in height (Framer Motion's initial styles
        // can briefly report 0 on the very first paint).
        const rafId = requestAnimationFrame(report)
        return () => {
            cancelAnimationFrame(rafId)
            observer.disconnect()
        }
    }, [selectedIcon, onHeightChange])

    return (
        <AnimatePresence>
            {selectedIcon && (
                <motion.div
                    ref={drawerRef}
                    key="drawer"
                    initial={{ opacity: 0, y: 50, scale: 0.95 }}
                    animate={{ opacity: 1, y: 0, scale: 1 }}
                    exit={{ opacity: 0, y: 50, scale: 0.95 }}
                    transition={{ duration: 0.2, ease: 'easeInOut' }}
                    className={cn(
                        `
                          sticky flex min-h-48 w-full
                          sm:bottom-4 sm:max-h-[calc(40vh)]
                        `,
                        'inset-x-0 bottom-0 max-h-[calc(50vh)]'
                    )}>
                    <div className="relative size-full">
                        <div
                            className={`
                              size-full max-h-[calc(40vh)] overflow-hidden
                              rounded-xl border border-border bg-default-50/90
                              shadow-lg backdrop-blur-lg
                              dark:bg-default-100/80
                            `}>
                            {children}
                        </div>
                        <Button
                            onClick={handleClose}
                            variant="ghost"
                            size="icon"
                            className={`
                              absolute top-0 right-0 translate-x-1/2
                              -translate-y-1/2 rounded-full p-0
                              [&_svg]:size-8
                            `}>
                            <CloseCircleIcon
                                className={`
                                  size-full text-muted-foreground
                                  hover:text-foreground
                                `}
                            />
                        </Button>
                    </div>
                </motion.div>
            )}
        </AnimatePresence>
    )
}
