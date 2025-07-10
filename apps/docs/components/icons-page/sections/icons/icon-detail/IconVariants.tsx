'use client'

import { FC } from 'react'
import { TabContainer } from './TabContainer'
import { iconWeights } from '@/lib/solar'
import { useAtom } from 'jotai'
import { selectedIconAtom } from '../context'

export const IconVariants: FC = () => {
    const [selectedIcon] = useAtom(selectedIconAtom)

    if (!selectedIcon) return null

    return (
        <TabContainer>
            <div className="grid grid-cols-3 gap-4">
                {iconWeights.map((weight) => (
                    <div key={weight} className="flex flex-col items-center gap-2">
                        <selectedIcon.Icon weight={weight} size={32} />
                        <span className="text-xs text-muted-foreground">{weight}</span>
                    </div>
                ))}
            </div>
        </TabContainer>
    )
}


