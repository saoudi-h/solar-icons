'use client'

import { MotionTabs } from '@/components/ui/MotionTabs'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'
import { InfoCircleIcon } from '@solar-icons/react/linear/info-circle'
import { useAtom } from 'jotai'
import type { FC } from 'react'
import { activeCategoryAtom, useSelectedIcon, useStyleURL, useViewModeURL } from '../context'
import { Actions } from './Actions'
import { AngularCode } from './AngularCode'
import { FloatingDrawer } from './FloatingDrawer'
import { IconVariants } from './IconVariants'
import { NuxtCode } from './NuxtCode'
import { ReactCode } from './ReactCode'
import { ReactNativeCode } from './ReactNativeCode'
import { SolidCode } from './SolidCode'
import { SvelteCode } from './SvelteCode'
import { Tags } from './Tags'
import { VueCode } from './VueCode'

export interface IconDetailProps {
    /**
     * Forwarded to {@link FloatingDrawer}. The parent uses the
     * drawer's measured height to shrink the icon grid + categories
     * sidebar by the same amount, keeping both fully scrollable
     * when the detail panel is open at the bottom of the layout.
     * See DOCS-UI-02 in `.autonomos/TASKS.md`.
     */
    onHeightChange?: (height: number) => void
}

export function IconDetail({ onHeightChange }: IconDetailProps = {}) {
    return (
        <FloatingDrawer onHeightChange={onHeightChange}>
            <Content />
        </FloatingDrawer>
    )
}

const Content: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()
    const [viewMode, setViewMode] = useViewModeURL()
    const [, setActiveCategory] = useAtom(activeCategoryAtom)

    const handleCategoryClick = (category: string) => {
        if (viewMode !== 'grouped') setViewMode('grouped')
        setActiveCategory(category)
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
                              lg:size-44
                            `}
                            isolated
                        />
                    </div>

                    <div className="flex flex-col items-start justify-between">
                        <h3 className="text-left font-heading text-xl font-bold">
                            {selectedIcon.fullName}
                        </h3>
                        <div className="flex gap-2">
                            <button
                                type="button"
                                onClick={() => handleCategoryClick(selectedIcon.category)}
                                className="
                                  rounded-md border border-accent bg-accent px-3
                                  py-1 font-heading text-xs
                                  text-accent-foreground capitalize
                                  transition-colors
                                  hover:bg-accent/80
                                ">
                                {selectedIcon.category}
                            </button>
                            <Tooltip>
                                <TooltipTrigger>
                                    <InfoCircleIcon size={16} isolated />
                                </TooltipTrigger>
                                <TooltipContent>Jump to category</TooltipContent>
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
