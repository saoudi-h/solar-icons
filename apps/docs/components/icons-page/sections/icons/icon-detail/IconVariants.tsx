'use client'

import type { Weight } from '@solar-icons/core/runtime'
import type { FC } from 'react'
import { useEffect, useState, type ComponentType } from 'react'

import { iconWeights } from '@/lib/resolveIconUtils'

import { useSelectedIcon } from '../context'
import { toComponentName } from '../utils'

type VariantIcon = ComponentType<{ weight?: Weight; size?: number }>

export const IconVariants: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [Icon, setIcon] = useState<VariantIcon | null>(null)

    useEffect(() => {
        if (!selectedIcon) {
            setIcon(null)
            return
        }

        let active = true
        import(`@solar-icons/react/dynamic/${selectedIcon.name}`).then(module => {
            if (!active) return
            setIcon(() => module[toComponentName(selectedIcon.name)] as VariantIcon)
        })

        return () => {
            active = false
        }
    }, [selectedIcon])

    if (!selectedIcon) return null

    return (
        <>
            <div className="grid grid-cols-3 gap-4">
                {iconWeights.map(weight => (
                    <div key={weight} className={`flex flex-col items-center gap-2`}>
                        {Icon ? <Icon weight={weight} size={32} /> : <div className="size-8" />}
                        <span className="text-xs text-muted-foreground">{weight}</span>
                    </div>
                ))}
            </div>
        </>
    )
}
