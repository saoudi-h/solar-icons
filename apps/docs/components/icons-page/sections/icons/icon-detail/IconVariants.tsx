'use client'

import { iconWeights } from '@/lib/resolveIconUtils'
import { useAtom } from 'jotai'
import type { FC } from 'react'
import { selectedIconAtom } from '../context'

export const IconVariants: FC = () => {
    const [selectedIcon] = useAtom(selectedIconAtom)

    if (!selectedIcon) return null

    return (
        <>
            <div className="grid grid-cols-3 gap-4">
                {iconWeights.map(weight => (
                    <div
                        key={weight}
                        className={`flex flex-col items-center gap-2`}>
                        <selectedIcon.Icon weight={weight} size={32} />
                        <span className="text-muted-foreground text-xs">{weight}</span>
                    </div>
                ))}
            </div>
        </>
    )
}
