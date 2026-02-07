'use client'
import { Button } from '@/components/ui/button'
import { cn } from '@/lib/utils'
import { CloseCircle } from '@solar-icons/react'
import { AnimatePresence, motion } from 'framer-motion'
import { useAtom } from 'jotai'
import type { FC } from 'react'
import { useEffect } from 'react'
import { selectedIconAtom } from '../context'

export interface FloatingDrawerProps {
    children: React.ReactNode
}

export const FloatingDrawer: FC<FloatingDrawerProps> = ({ children }) => {
    const [selectedIcon, setSelectedIcon] = useAtom(selectedIconAtom)

    const handleClose = () => {
        setSelectedIcon(null)
    }

    useEffect(() => {
        const handleKeyDown = (event: KeyboardEvent) => {
            if (event.key === 'Escape') {
                handleClose()
            }
        }
        document.addEventListener('keydown', handleKeyDown)
        return () => document.removeEventListener('keydown', handleKeyDown)
    }, [])

    return (
        <AnimatePresence>
            {selectedIcon && (
                <motion.div
                    key="drawer"
                    initial={{ opacity: 0, y: 50, scale: 0.95 }}
                    animate={{ opacity: 1, y: 0, scale: 1 }}
                    exit={{ opacity: 0, y: 50, scale: 0.95 }}
                    transition={{ duration: 0.2, ease: 'easeInOut' }}
                    className={cn(
                        `
                          sticky flex min-h-48 w-full
                          sm:bottom-4 sm:max-h-[calc(33vh)]
                        `,
                        'right-0 bottom-0 left-0 max-h-[calc(50vh)]'
                    )}>
                    <div className="relative h-full w-full">
                        <div
                            className={`
                              border-border bg-default-50/90 h-full
                              max-h-[calc(33vh)] w-full overflow-hidden
                              rounded-xl border shadow-lg backdrop-blur-lg
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
                            <CloseCircle
                                weight="Bold"
                                className={`
                                  text-muted-foreground size-full
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
