import { IconData } from '@/core/generated/descriptions'
import { motion } from 'framer-motion'
import { forwardRef } from 'react'

interface IconCardProps extends IconData {}

export const IconCard = forwardRef<HTMLDivElement, IconCardProps>(
    ({ name, Icon, tags, category, categoryTags, ...props }, ref) => {
        return (
            <motion.div
                {...props}
                ref={ref}
                exit={{ scale: 0, opacity: 0 }}
                initial={{ scale: 0, opacity: 0 }}
                animate={{ scale: 1, opacity: 1 }}
                transition={{
                    duration: 0.3,
                }}
                className="flex flex-col items-center justify-center hover:bg-default-200/50 will-change-transform rounded-lg gap-2 py-4 px-2 transition-colors duration-300 ease-in group">
                <Icon className="group-hover:scale-125 transition-transform duration-300 ease-in" />
                <p className="text-xs font-extralight text-center text-muted-foreground text-nowrap truncate w-full group-hover:translate-y-1 transition-transform duration-300 ease-in">
                    {name}
                </p>
            </motion.div>
        )
    }
)

IconCard.displayName = 'IconCard'
