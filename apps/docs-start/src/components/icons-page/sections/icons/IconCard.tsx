import { motion, useReducedMotion } from 'motion/react'
import { forwardRef } from 'react'
import type { IconData } from '~generated/descriptions'

import { cn } from '~/lib/utils'

import {
    splitFullIconName,
    useSelectedIcon,
    useSelectedIconName,
    useStyleURL,
    useWeightNamespaceContext,
} from './context'
import { isRecentExtension, RecentIconDot } from './OriginControls'
import { toComponentName } from './utils'

type IconCardProps = IconData

export const IconCard = forwardRef<HTMLDivElement, IconCardProps>(
    (
        {
            name,
            tags: _tags,
            category: _category,
            categoryTags: _categoryTags,
            origin,
            addedAt,
            author: _author,
            state: _state,
            priority: _priority,
            priorityReason: _priorityReason,
            // `deprecatedAliases` (objects) is not a valid DOM prop. The grid
            // passes the full `IconData` record, so strip it here instead of
            // spreading it onto `motion.div` (React warns `Invalid DOM property`
            // otherwise).
            deprecatedAliases: _deprecatedAliases,
            ...props
        },
        ref
    ) => {
        const [, setIconName] = useSelectedIconName()
        const [, setStyleURL] = useStyleURL()
        const selectedIcon = useSelectedIcon()
        const [weight] = useStyleURL()
        const ns = useWeightNamespaceContext()
        const Icon = ns?.[toComponentName(name)]
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

        const reduceMotion = useReducedMotion()
        const enterDuration = reduceMotion ? 0 : 0.15

        // The namespace chunk for the current weight hasn't loaded
        // yet (first render or weight switch). Render a skeleton
        // placeholder of the same shape so the grid doesn't shift
        // when the real icon lands.
        if (!Icon) {
            return (
                <div
                    ref={ref}
                    style={{ width: 120, height: 120 }}
                    className="flex flex-col items-center justify-center gap-2 rounded-lg"
                    aria-hidden="true"
                />
            )
        }

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
                      group relative flex cursor-pointer flex-col items-center justify-center gap-2
                      rounded-lg px-2 py-4 transition-colors duration-200
                    `,
                    {
                        'border border-primary bg-primary/10': isSelected,
                        'hover:bg-default-200/50': !isSelected,
                    }
                )}>
                {origin === 'extended' && isRecentExtension(addedAt) && <RecentIconDot />}
                <Icon
                    weight={weight}
                    className={cn('transition-transform duration-300 ease-out', {
                        'group-hover:scale-125': !isSelected,
                        'scale-125 text-primary': isSelected,
                    })}
                />
                <p
                    className={cn(
                        `w-full truncate text-center text-xs font-extralight text-muted-foreground`,
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
