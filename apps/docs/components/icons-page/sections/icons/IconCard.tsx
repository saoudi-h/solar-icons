import type { IconData } from '@/generated/descriptions'
import { cn } from '@/lib/utils'
import { motion, useReducedMotion } from 'framer-motion'
import { forwardRef } from 'react'
import { splitFullIconName, useSelectedIcon, useSelectedIconName, useStyleURL } from './context'

type IconCardProps = IconData

export const IconCard = forwardRef<HTMLDivElement, IconCardProps>(
    (
        { name, Icon, tags: _tags, category: _category, categoryTags: _categoryTags, ...props },
        ref
    ) => {
        const [, setIconName] = useSelectedIconName()
        const [, setStyleURL] = useStyleURL()
        const selectedIcon = useSelectedIcon()
        const [weight] = useStyleURL()
        const isSelected = selectedIcon?.name === name
        const handleClick = () => {
            const split = splitFullIconName(name)
            if (split) {
                setIconName(split.base)
                setStyleURL(split.weight)
            } else {
                setIconName(name)
            }
        }

        // A 150ms opacity-only fade is much less fatiguing on a grid of
        // 200+ icons than the previous scale+opacity pop (300ms). The
        // scale transform was also causing a small stutter on Firefox
        // because it forces a new compositing layer on every mount.
        // We skip the animation entirely (duration: 0) when the user
        // has the OS-level "reduce motion" preference enabled.
        const reduceMotion = useReducedMotion()
        const enterDuration = reduceMotion ? 0 : 0.15

        return (
            <motion.div
                {...props}
                ref={ref}
                onClick={handleClick}
                initial={{ opacity: 0 }}
                animate={{ opacity: 1 }}
                transition={{ duration: enterDuration, ease: 'easeOut' }}
                className={cn(
                    `
                      group flex cursor-pointer flex-col items-center
                      justify-center gap-2 rounded-lg px-2 py-4
                      transition-colors duration-200
                    `,
                    {
                        'border border-primary bg-primary/10': isSelected,
                        'hover:bg-default-200/50': !isSelected,
                    }
                )}>
                <Icon
                    weight={weight}
                    className={cn('transition-transform duration-300 ease-out', {
                        'group-hover:scale-125': !isSelected,
                        'scale-125 text-primary': isSelected,
                    })}
                />
                <p
                    className={cn(
                        `
                          w-full truncate text-center text-xs font-extralight
                          text-muted-foreground
                        `,
                        'transition-transform duration-300 ease-out',
                        'group-hover:translate-y-1'
                    )}>
                    {name}
                </p>
            </motion.div>
        )
    }
)

IconCard.displayName = 'IconCard'
