'use client'

import { CloseIcon } from '@solar-icons/react/linear/close'
import { CopyIcon } from '@solar-icons/react/linear/copy'
import { useAtom } from 'jotai'
import { useEffect, useRef, useState, type FC, type ReactNode } from 'react'
import { toast } from 'sonner'

import { Tooltip, TooltipContent, TooltipTrigger } from '~/components/ui/tooltip'
import { Icon } from '~/lib/icons'
import { cn } from '~/lib/utils'

import {
    activeCategoryAtom,
    categoryNavigationAtom,
    useSelectedIcon,
    useShowcaseReady,
    useStyleURL,
    useViewModeURL,
} from '../context'
import { useIconComponent } from '../icon-registry'
import { STYLE_LABELS } from '../StylePicker'
import { Actions } from './Actions'
import { AngularCode } from './AngularCode'
import { BladeCode } from './BladeCode'
import { BlazorCode } from './BlazorCode'
import { FlutterCode } from './FlutterCode'
import { IconVariants } from './IconVariants'
import { JsCode } from './JsCode'
import { NuxtCode } from './NuxtCode'
import { RailsCode } from './RailsCode'
import { ReactCode } from './ReactCode'
import { ReactNativeCode } from './ReactNativeCode'
import { SolidCode } from './SolidCode'
import { StaticCode } from './StaticCode'
import { SvelteCode } from './SvelteCode'
import { Tags } from './Tags'
import { VueCode } from './VueCode'

interface Framework {
    value: string
    title: string
    icon: string
    /** Short mark for a package that shares its logo with another one. */
    mark?: string
    Code: FC
}

const FRAMEWORKS: Framework[] = [
    { value: 'react', title: 'React', icon: 'devicon:react', Code: ReactCode },
    {
        value: 'react-native',
        title: 'React Native',
        icon: 'devicon:react',
        mark: 'N',
        Code: ReactNativeCode,
    },
    { value: 'vue', title: 'Vue', icon: 'devicon:vuejs', Code: VueCode },
    { value: 'nuxt', title: 'Nuxt', icon: 'devicon:nuxtjs', Code: NuxtCode },
    { value: 'svelte', title: 'Svelte', icon: 'devicon:svelte', Code: SvelteCode },
    { value: 'solid', title: 'Solid', icon: 'devicon:solidjs', Code: SolidCode },
    { value: 'angular', title: 'Angular', icon: 'devicon:angular', Code: AngularCode },
    { value: 'blade', title: 'Blade', icon: 'devicon:laravel', Code: BladeCode },
    { value: 'rails', title: 'Rails', icon: 'thesvg-color:ruby-on-rails', Code: RailsCode },
    { value: 'flutter', title: 'Flutter', icon: 'devicon:flutter', Code: FlutterCode },
    { value: 'blazor', title: 'Blazor', icon: 'devicon:blazor', Code: BlazorCode },
    { value: 'static', title: 'Static', icon: 'vscode-icons:file-type-svg', Code: StaticCode },
    { value: 'js', title: 'JS', icon: 'devicon:javascript', Code: JsCode },
]

const FRAMEWORK_STORAGE_KEY = 'solar-icons:explorer-framework'

/** The package chosen once stays chosen for every icon and every visit. */
function useFramework() {
    const [value, setValue] = useState(FRAMEWORKS[0]!.value)
    useEffect(() => {
        try {
            const stored = localStorage.getItem(FRAMEWORK_STORAGE_KEY)
            if (stored && FRAMEWORKS.some(framework => framework.value === stored)) setValue(stored)
        } catch {
            // Storage can be unavailable; the default package is fine.
        }
    }, [])
    const select = (next: string) => {
        setValue(next)
        try {
            localStorage.setItem(FRAMEWORK_STORAGE_KEY, next)
        } catch {
            // Same as above.
        }
    }
    return [value, select] as const
}

const SectionLabel: FC<{ children: ReactNode }> = ({ children }) => (
    <h4 className="text-[11px] font-semibold tracking-widest text-muted-foreground uppercase">
        {children}
    </h4>
)

const HEADER_BUTTON = `
  flex size-8 shrink-0 items-center justify-center rounded-lg text-muted-foreground
  transition-colors
  hover:bg-foreground/[0.08] hover:text-foreground
  focus-visible:ring-2 focus-visible:ring-primary/70 focus-visible:outline-hidden
`

interface ContentProps {
    onClose: () => void
    /** The layout follows where the panel sits, not the viewport width. */
    placement: 'side' | 'sheet'
}

export const Content: FC<ContentProps> = ({ onClose, placement }) => {
    const isSide = placement === 'side'
    const ready = useShowcaseReady()
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()
    const [viewMode, setViewMode] = useViewModeURL()
    const [, setActiveCategory] = useAtom(activeCategoryAtom)
    const [, requestCategoryNavigation] = useAtom(categoryNavigationAtom)
    const IconComponent = useIconComponent(selectedIcon?.name, weight)
    const [framework, setFramework] = useFramework()
    const tabsRef = useRef<HTMLDivElement>(null)

    if (!selectedIcon) return null

    const active = FRAMEWORKS.find(item => item.value === framework) ?? FRAMEWORKS[0]!
    const ActiveCode = active.Code

    const goToCategory = () => {
        if (viewMode !== 'grouped') setViewMode('grouped')
        setActiveCategory(selectedIcon.category)
        requestCategoryNavigation(count => count + 1)
    }

    const copyName = async () => {
        try {
            await navigator.clipboard.writeText(selectedIcon.name)
            toast.success('Name copied to clipboard')
        } catch {
            toast.error('Failed to copy the name')
        }
    }

    const handleTabKeyDown = (event: React.KeyboardEvent<HTMLDivElement>) => {
        const index = FRAMEWORKS.findIndex(item => item.value === active.value)
        const last = FRAMEWORKS.length - 1
        const next =
            event.key === 'ArrowRight'
                ? (index + 1) % FRAMEWORKS.length
                : event.key === 'ArrowLeft'
                  ? (index + last) % FRAMEWORKS.length
                  : event.key === 'Home'
                    ? 0
                    : event.key === 'End'
                      ? last
                      : null
        if (next === null) return
        event.preventDefault()
        setFramework(FRAMEWORKS[next]!.value)
        tabsRef.current?.querySelectorAll<HTMLButtonElement>('[role="tab"]')[next]?.focus()
    }

    return (
        <div className="flex min-h-0 w-full flex-1 flex-col text-left">
            {/* The name never drives the layout: one line, truncated, with the
                full value in the tooltip and behind the copy button. */}
            <header className="flex items-center gap-3 py-3 pr-3 pl-4">
                {!isSide && (
                    <div className="flex size-10 shrink-0 items-center justify-center">
                        {IconComponent && <IconComponent weight={weight} size={36} />}
                    </div>
                )}
                <div className="min-w-0 flex-1">
                    <h3
                        aria-label={selectedIcon.fullName}
                        title={selectedIcon.name}
                        className="truncate font-heading text-lg/6 font-bold">
                        {selectedIcon.name}
                    </h3>
                    <p className="flex items-center gap-1.5 truncate text-xs text-muted-foreground">
                        <span>{STYLE_LABELS[weight]}</span>
                        <span aria-hidden="true">·</span>
                        <button
                            type="button"
                            onClick={goToCategory}
                            aria-label={`Show the ${selectedIcon.category.replace(/-/g, ' ')} category`}
                            className="
                              truncate rounded-sm capitalize underline decoration-foreground/25
                              underline-offset-2 transition-colors
                              hover:text-foreground hover:decoration-foreground/60
                              focus-visible:ring-2 focus-visible:ring-primary/70
                              focus-visible:outline-hidden
                            ">
                            {selectedIcon.category.replace(/-/g, ' ')}
                        </button>
                    </p>
                </div>
                <Tooltip>
                    <TooltipTrigger asChild>
                        <button
                            type="button"
                            onClick={() => void copyName()}
                            aria-label="Copy icon name"
                            className={HEADER_BUTTON}>
                            <CopyIcon size={16} isolated />
                        </button>
                    </TooltipTrigger>
                    <TooltipContent>Copy name</TooltipContent>
                </Tooltip>
                <button
                    type="button"
                    onClick={onClose}
                    aria-label="Close icon details"
                    className={HEADER_BUTTON}>
                    <CloseIcon size={18} isolated />
                </button>
            </header>

            {/* The sheet is wide and short: once it has the width, the
                snippets sit beside the variants instead of under them. */}
            <div data-detail-scroll className="@container min-h-0 flex-1 overflow-y-auto px-4 pb-4">
                <div
                    className={cn(
                        isSide
                            ? 'flex flex-col gap-4'
                            : 'grid grid-cols-1 gap-4 @3xl:grid-cols-2 @3xl:gap-x-6'
                    )}>
                    {/* The stage shows the icon as the toolbar set it: style,
                        colours, stroke and duotone opacity. */}
                    {isSide && (
                        <div
                            className="
                              flex h-40 shrink-0 items-center justify-center rounded-xl
                              bg-foreground/[0.04]
                            ">
                            {IconComponent ? (
                                <IconComponent weight={weight} size={96} />
                            ) : (
                                <div className="size-24" aria-hidden="true" />
                            )}
                        </div>
                    )}

                    <div className="flex min-w-0 flex-col gap-4">
                        <IconVariants square={isSide} />
                        <Actions key={selectedIcon.name} />
                    </div>

                    <section
                        className={cn('flex min-w-0 flex-col gap-2', !isSide && '@3xl:row-span-2')}>
                        <SectionLabel>Use it with</SectionLabel>
                        <div
                            ref={tabsRef}
                            role="tablist"
                            aria-label="Package"
                            onKeyDown={handleTabKeyDown}
                            className="flex flex-wrap gap-1">
                            {FRAMEWORKS.map(item => {
                                const isActive = item.value === active.value
                                return (
                                    <Tooltip key={item.value}>
                                        <TooltipTrigger asChild>
                                            <button
                                                type="button"
                                                role="tab"
                                                id={`explorer-tab-${item.value}`}
                                                aria-controls="explorer-tabpanel"
                                                aria-selected={isActive}
                                                aria-label={item.title}
                                                tabIndex={isActive ? 0 : -1}
                                                disabled={!ready}
                                                onClick={() => setFramework(item.value)}
                                                className={cn(
                                                    `
                                                  relative flex size-9 items-center justify-center
                                                  rounded-lg transition-colors
                                                  focus-visible:ring-2 focus-visible:ring-primary/70
                                                  focus-visible:outline-hidden
                                                `,
                                                    isActive
                                                        ? `
                                                      bg-foreground/[0.1] ring-1 ring-foreground/15
                                                      ring-inset
                                                    `
                                                        : `
                                                      opacity-70
                                                      hover:bg-foreground/[0.06] hover:opacity-100
                                                    `
                                                )}>
                                                <Icon icon={item.icon} className="size-[18px]" />
                                                {item.mark && (
                                                    <span
                                                        aria-hidden="true"
                                                        className="
                                                      absolute right-1 bottom-0.5 text-[9px]/none
                                                      font-bold text-foreground
                                                    ">
                                                        {item.mark}
                                                    </span>
                                                )}
                                            </button>
                                        </TooltipTrigger>
                                        <TooltipContent>{item.title}</TooltipContent>
                                    </Tooltip>
                                )
                            })}
                        </div>
                        <div
                            id="explorer-tabpanel"
                            role="tabpanel"
                            aria-labelledby={`explorer-tab-${active.value}`}
                            className="min-w-0 [&_figure]:my-0">
                            <ActiveCode />
                        </div>
                    </section>

                    <section className="flex min-w-0 flex-col gap-2">
                        <SectionLabel>Tags</SectionLabel>
                        <Tags />
                    </section>
                </div>
            </div>
        </div>
    )
}
