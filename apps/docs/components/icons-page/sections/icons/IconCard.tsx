import type { IconData } from '@/generated/descriptions'
import { cn } from '@/lib/utils'
import { motion } from 'framer-motion'
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

        return (
            <motion.div
                {...props}
                ref={ref}
                onClick={handleClick}
                exit={{ scale: 0, opacity: 0 }}
                initial={{ scale: 0, opacity: 0 }}
                animate={{ scale: 1, opacity: 1 }}
                transition={{ duration: 0.3 }}
                className={cn(
                    `
                      group flex cursor-pointer flex-col items-center
                      justify-center gap-2 rounded-lg px-2 py-4 transition-all
                      duration-300 ease-in will-change-transform
                    `,
                    {
                        'border border-primary bg-primary/10': isSelected,
                        'hover:bg-default-200/50': !isSelected,
                    }
                )}>
                <Icon
                    weight={weight}
                    className={cn('transition-transform duration-300 ease-in', {
                        'group-hover:scale-125': !isSelected,
                        'scale-125 text-primary': isSelected,
                    })}
                />
                <p
                    className={`
                      w-full truncate text-center text-xs font-extralight
                      text-muted-foreground transition-transform duration-300
                      ease-in
                      group-hover:translate-y-1
                    `}>
                    {name}
                </p>
            </motion.div>
        )
    }
)

IconCard.displayName = 'IconCard'
