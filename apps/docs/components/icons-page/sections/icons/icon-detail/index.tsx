'use client'

import { MotionTabs } from '@/components/ui/MotionTabs'
import { Toggle } from '@/components/ui/toggle'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { InfoCircleIcon } from '@solar-icons/react/linear/info-circle'
import { useAtom } from 'jotai'
import type { FC } from 'react'
import { selectedIconAtom, useSearchCategories, weightAtom } from '../context'
import type { CategoryOption } from '../utils'
import { Actions } from './Actions'
import { AngularCode } from './AngularCode'
import { FloatingDrawer } from './FloatingDrawer'
import { IconVariants } from './IconVariants'
import { NuxtCode } from './NuxtCode'
import { ReactCode } from './ReactCode'
import { ReactNativeCode } from './ReactNativeCode'
import { ReactPerfCode } from './ReactPerf'
import { SolidCode } from './SolidCode'
import { SvelteCode } from './SvelteCode'
import { Tags } from './Tags'
import { VueCode } from './VueCode'

export function IconDetail() {
    return (
        <FloatingDrawer>
            <Content />
        </FloatingDrawer>
    )
}

const Content: FC = () => {
    const [selectedIcon] = useAtom(selectedIconAtom)
    const [weight] = useAtom(weightAtom)
    const [categories, setCategories] = useSearchCategories()

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
              flex size-full flex-col p-4
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
                            weight={weight}
                            className={`
                              size-12
                              lg:size-48
                            `}
                        />
                    </div>

                    <div className="flex flex-col items-start justify-between">
                        <h3 className="text-left font-heading text-xl font-bold">
                            {selectedIcon.name}
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
                                    <InfoCircleIcon size={16} isolated />
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
                    { title: 'React Native', value: 'react-native', content: <ReactNativeCode /> },
                    { title: 'Vue', value: 'vue', content: <VueCode /> },
                    { title: 'Nuxt', value: 'nuxt', content: <NuxtCode /> },
                    { title: 'Svelte', value: 'svelte', content: <SvelteCode /> },
                    { title: 'Solid', value: 'solid', content: <SolidCode /> },
                    { title: 'Angular', value: 'angular', content: <AngularCode /> },
                ]}
            />
        </div>
    )
}
