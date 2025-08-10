'use client'

import { MotionTabs } from '@/components/ui/MotionTabs'
import { Toggle } from '@/components/ui/toggle'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { InfoCircle } from '@solar-icons/react'
import { useAtom } from 'jotai'
import type { FC } from 'react'
import { categoriesAtom, selectedIconAtom } from '../context'
import type { CategoryOption } from '../utils'
import { Actions } from './Actions'
import { FloatingDrawer } from './FloatingDrawer'
import { IconVariants } from './IconVariants'
import { ReactCode } from './ReactCode'
import { ReactPerfCode } from './ReactPerf'
import { VueCode } from './VueCode'
import { NuxtCode } from './NuxtCode'
import { Tags } from './Tags'

export function IconDetail() {
    return (
        <FloatingDrawer>
            <Content />
        </FloatingDrawer>
    )
}

const Content: FC = () => {
    const [selectedIcon] = useAtom(selectedIconAtom)
    const [categories, setCategories] = useAtom(categoriesAtom)

    const handleCategorySelection = (category: string) => {
        if (categories.some(c => c.value === category)) {
            setCategories([])
        } else {
            setCategories([{ value: category, label: category } as CategoryOption])
        }
    }

    if (!selectedIcon) return null

    return (
        <div
            className={`
          flex h-full w-full flex-col p-4
          lg:flex-row
        `}>
            <div>
                <div
                    className={`
                      flex h-full min-w-64 flex-row items-start justify-start
                      gap-4 border-dashed border-border
                      max-lg:mb-2 max-lg:border-b max-lg:pb-2
                      lg:mr-4 lg:flex-col-reverse lg:justify-end lg:border-r
                      lg:pr-4
                    `}>
                    <div
                        className={`
                      flex items-center justify-center
                      lg:size-56
                    `}>
                        <selectedIcon.Icon
                            className={`
                          size-12
                          lg:size-48
                        `}
                        />
                    </div>

                    <div className="flex flex-col items-start justify-between">
                        <h3 className="text-left font-heading text-xl font-bold">
                            {selectedIcon?.name}
                        </h3>
                        <div className="flex gap-2">
                            <Toggle
                                pressed={categories.some(c => c.value === selectedIcon?.category)}
                                onClick={() => handleCategorySelection(selectedIcon?.category)}
                                variant="outline"
                                size="default"
                                colors="accent"
                                className="font-heading capitalize">
                                {selectedIcon?.category}
                            </Toggle>
                            <Tooltip>
                                <TooltipTrigger>
                                    <InfoCircle size={16} color={''} weight="Linear" />
                                </TooltipTrigger>
                                <TooltipContent>Category</TooltipContent>
                            </Tooltip>
                        </div>
                    </div>
                </div>
            </div>

            <Actions />
            <MotionTabs
                tabs={[
                    { title: 'Icon Variants', value: 'variants', content: <IconVariants /> },
                    { title: 'Tags', value: 'tags', content: <Tags /> },
                    { title: 'React', value: 'react', content: <ReactCode /> },
                    { title: 'React Perf', value: 'react-perf', content: <ReactPerfCode /> },
                    { title: 'Vue', value: 'vue', content: <VueCode /> },
                    { title: 'Nuxt', value: 'nuxt', content: <NuxtCode /> },
                ]}
            />
        </div>
    )
}
