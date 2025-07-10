import { IconData } from '@/core/generated/descriptions'
import { motion } from 'framer-motion'
import { useAtom } from 'jotai'
import { forwardRef } from 'react'
import { selectedIconAtom } from './context'
import clsx from 'clsx'

interface IconCardProps extends IconData {}

export const IconCard = forwardRef<HTMLDivElement, IconCardProps>(
    ({ name, Icon, tags, category, categoryTags, ...props }, ref) => {
        const [selectedIcon, setSelectedIcon] = useAtom(selectedIconAtom)
        const isSelected = selectedIcon?.name === name
        const iconData = { name, Icon, tags, category, categoryTags }

        return (
            <motion.div
                {...props}
                ref={ref}
                onClick={() => setSelectedIcon(iconData)}
                exit={{ scale: 0, opacity: 0 }}
                initial={{ scale: 0, opacity: 0 }}
                animate={{ scale: 1, opacity: 1 }}
                transition={{ duration: 0.3 }}
                className={clsx(
                    'flex flex-col items-center justify-center will-change-transform rounded-lg gap-2 py-4 px-2 transition-all duration-300 ease-in group cursor-pointer',
                    {
                        'bg-primary/10 border border-primary': isSelected,
                        'hover:bg-default-200/50': !isSelected,
                    }
                )}
            >
                <Icon
                    className={clsx(
                        'transition-transform duration-300 ease-in',
                        {
                            'group-hover:scale-125': !isSelected,
                            'scale-125 text-primary': isSelected,
                        }
                    )}
                />
                <p className="text-xs font-extralight text-center text-muted-foreground truncate w-full transition-transform duration-300 ease-in group-hover:translate-y-1">
                    {name}
                </p>
            </motion.div>
        )
    }
)

IconCard.displayName = 'IconCard'
