'use client'
import { CloseCircle } from '@solar-icons/react'
import { FC, useEffect } from 'react'
import { AnimatePresence, motion } from 'framer-motion'
import { Button } from '@/components/ui/button'
import { cn } from '@/lib/utils'
import { useAtom } from 'jotai'
import { selectedIconAtom } from '../context'

export interface FloatingDrawerProps {

  children: React.ReactNode
}

export const FloatingDrawer: FC<FloatingDrawerProps> = ({children}) => {
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
          className={cn("sm:sticky sm:bottom-4 flex w-full min-h-48 sm:max-h-[calc(33vh)]", "absolute bottom-0 left-0 right-0 max-h-[calc(50vh)]")}
        >
          <div className="relative h-full w-full">
            <div className="h-full w-full bg-card rounded-xl backdrop-blur-lg shadow-lg bg-default-100/80 overflow-hidden border border-border h-[calc(33vh)]">
              {children}
            </div>
            <Button
              onClick={handleClose}
              variant="ghost"
              size="icon"
              className="absolute top-0 -translate-y-1/2 translate-x-1/2 right-0 p-0 [&_svg]:size-8"
            >
              <CloseCircle weight="Bold" className="size-full text-muted-foreground hover:text-foreground" />
            </Button>
          </div>
        </motion.div>
      )}
    </AnimatePresence>
  )
}