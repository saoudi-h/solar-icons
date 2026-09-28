'use client'

import { Icon } from '@iconify/react'
import { InfoCircleIcon } from '@solar-icons/react/linear/info-circle'
import { useAtom } from 'jotai'
import type { FC } from 'react'

import { MotionTabs } from '@/components/ui/MotionTabs'
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip'

import { activeCategoryAtom, useSelectedIcon, useStyleURL, useViewModeURL } from '../context'
import { Actions } from './Actions'
import { AngularCode } from './AngularCode'
import { BladeCode } from './BladeCode'
import { FloatingDrawer } from './FloatingDrawer'
import { IconVariants } from './IconVariants'
import { JsCode } from './JsCode'
import { NuxtCode } from './NuxtCode'
import { ReactCode } from './ReactCode'
import { ReactNativeCode } from './ReactNativeCode'
import { SolidCode } from './SolidCode'
import { StaticCode } from './StaticCode'
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
        <div className={`flex size-full flex-col p-4 lg:flex-row`}>
            <div>
                <div
                    className={`
                      flex h-full min-w-64 flex-row items-start justify-start gap-4 border-dashed
                      border-border
                      max-lg:mb-2 max-lg:border-b max-lg:pb-2
                      lg:mr-4 lg:flex-col-reverse lg:justify-end lg:border-r lg:pr-4
                    `}>
                    <div className={`flex items-center justify-center lg:size-56`}>
                        <selectedIcon.Icon
                            weight={weight}
                            className={`size-12 lg:size-44`}
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
                                  rounded-md border border-accent bg-accent px-3 py-1 font-heading
                                  text-xs text-accent-foreground capitalize transition-colors
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
                    {
                        title: 'React',
                        value: 'react',
                        icon: <Icon icon="devicon:react" className="size-4" />,
                        content: <ReactCode />,
                    },
                    {
                        title: 'React Native',
                        value: 'react-native',
                        icon: <Icon icon="devicon:react" className="size-4" />,
                        content: <ReactNativeCode />,
                    },
                    {
                        title: 'Vue',
                        value: 'vue',
                        icon: <Icon icon="devicon:vuejs" className="size-4" />,
                        content: <VueCode />,
                    },
                    {
                        title: 'Nuxt',
                        value: 'nuxt',
                        icon: <Icon icon="devicon:nuxtjs" className="size-4" />,
                        content: <NuxtCode />,
                    },
                    {
                        title: 'Svelte',
                        value: 'svelte',
                        icon: <Icon icon="devicon:svelte" className="size-4" />,
                        content: <SvelteCode />,
                    },
                    {
                        title: 'Solid',
                        value: 'solid',
                        icon: <Icon icon="devicon:solidjs" className="size-4" />,
                        content: <SolidCode />,
                    },
                    {
                        title: 'Angular',
                        value: 'angular',
                        icon: <Icon icon="devicon:angular" className="size-4" />,
                        content: <AngularCode />,
                    },
                    {
                        title: 'Blade',
                        value: 'blade',
                        icon: <Icon icon="devicon:laravel" className="size-4" />,
                        content: <BladeCode />,
                    },
                    {
                        title: 'Static',
                        value: 'static',
                        icon: <Icon icon="vscode-icons:file-type-svg" className="size-4" />,
                        content: <StaticCode />,
                    },
                    {
                        title: 'JS',
                        value: 'js',
                        icon: <Icon icon="devicon:javascript" className="size-4" />,
                        content: <JsCode />,
                    },
                ]}
            />
        </div>
    )
}
