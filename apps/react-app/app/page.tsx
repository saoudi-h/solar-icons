'use client'

import { useState } from 'react'
import Link from 'next/link'
import { SolarProvider } from '@solar-icons/react'
import Gallery from './components/Gallery'
import ProviderDemo from './components/ProviderDemo'
import { ALL_ICONS } from './icon-list'

import { AccessibilityIcon } from '@solar-icons/react/dynamic/accessibility'
import { AlarmIcon } from '@solar-icons/react/dynamic/alarm'
import { BellIcon } from '@solar-icons/react/dynamic/bell'
import { BookmarkIcon } from '@solar-icons/react/dynamic/bookmark'
import { CalendarIcon } from '@solar-icons/react/dynamic/calendar'
import { CameraIcon } from '@solar-icons/react/dynamic/camera'
import { CartIcon } from '@solar-icons/react/dynamic/cart'
import { ChatDotsIcon } from '@solar-icons/react/dynamic/chat-dots'
import { CheckCircleIcon } from '@solar-icons/react/dynamic/check-circle'
import { CloudIcon } from '@solar-icons/react/dynamic/cloud'
import { HomeIcon } from '@solar-icons/react/dynamic/home'
import { HeartIcon } from '@solar-icons/react/dynamic/heart'
import { SettingsIcon } from '@solar-icons/react/dynamic/settings'
import { StarIcon } from '@solar-icons/react/dynamic/star'
import { UserIcon } from '@solar-icons/react/dynamic/user'
import { VolumeLoudIcon } from '@solar-icons/react/dynamic/volume-loud'

import { AccessibilityBoldIcon, AccessibilityLinearIcon } from '@solar-icons/react'
import { AlarmBoldIcon, AlarmLinearIcon } from '@solar-icons/react'
import { BellBoldIcon, BellLinearIcon } from '@solar-icons/react'
import { HeartBoldIcon } from '@solar-icons/react'
import { HomeBoldIcon, HomeLinearIcon } from '@solar-icons/react'
import { InfoCircleBoldIcon } from '@solar-icons/react'
import { SettingsBoldIcon } from '@solar-icons/react'
import { StarBoldIcon } from '@solar-icons/react'
import { UserBoldIcon } from '@solar-icons/react'


const DYNAMIC_ICONS = [
    { Icon: AccessibilityIcon, name: 'Accessibility' },
    { Icon: AlarmIcon, name: 'Alarm' },
    { Icon: BellIcon, name: 'Bell' },
    { Icon: BookmarkIcon, name: 'Bookmark' },
    { Icon: CalendarIcon, name: 'Calendar' },
    { Icon: CameraIcon, name: 'Camera' },
    { Icon: CartIcon, name: 'Cart' },
    { Icon: ChatDotsIcon, name: 'ChatDots' },
    { Icon: CheckCircleIcon, name: 'CheckCircle' },
    { Icon: CloudIcon, name: 'Cloud' },
    { Icon: HomeIcon, name: 'Home' },
    { Icon: HeartIcon, name: 'Heart' },
    { Icon: SettingsIcon, name: 'Settings' },
    { Icon: StarIcon, name: 'Star' },
    { Icon: UserIcon, name: 'User' },
    { Icon: VolumeLoudIcon, name: 'VolumeLoud' },
] as const

function Section({ number, title, desc, children }: { number: number; title: string; desc: string; children: React.ReactNode }) {
    return (
        <div className="
          rounded-2xl border border-slate-700/50 bg-slate-800/30 p-6
        ">
            <h2 className="mb-1 text-xl font-bold text-white">{number}. {title}</h2>
            <p className="mb-4 text-sm text-slate-400">{desc}</p>
            {children}
        </div>
    )
}

export default function Home() {
    const [cssColor, setCssColor] = useState('#f59e0b')
    const [cssSize, setCssSize] = useState(40)
    const [dynamicWeight, setDynamicWeight] = useState<'Bold' | 'BoldDuotone' | 'Broken' | 'Linear' | 'LineDuotone' | 'Outline'>('Bold')

    const weights = ['Bold', 'BoldDuotone', 'Broken', 'Linear', 'LineDuotone', 'Outline'] as const

    return (
        <div className="min-h-screen bg-slate-900 text-slate-200">
            <div className="
              mx-auto max-w-7xl space-y-12 px-4 py-8
              sm:px-8
            ">
                <div className="
                  flex flex-col items-center justify-between gap-4 text-center
                  sm:flex-row sm:text-left
                ">
                    <div className="space-y-2">
                        <h1 className="text-4xl font-bold text-white">Solar Icons - React</h1>
                        <p className="text-slate-400">{ALL_ICONS.length} icons x 6 styles = {ALL_ICONS.length * 6} variants</p>
                    </div>
                    <Link href="/compare" className="
                      rounded-xl border border-amber-400/30 bg-amber-400/10 px-4
                      py-3 text-sm font-semibold text-amber-300
                      transition-colors
                      hover:border-amber-300/60 hover:bg-amber-400/20
                      hover:text-amber-200
                    ">
                        Open parity workbench →
                    </Link>
                </div>

                <Section number={1} title="Dynamic Icons" desc={`Import from @solar-icons/react/dynamic/name. One component per icon, style via weight prop.`}>
                    <div className="mb-4 flex flex-wrap gap-2">
                        {weights.map((w) => (
                            <button
                                key={w}
                                className={`
                                  rounded-lg px-3 py-1.5 text-sm font-medium
                                  transition-all
                                  ${
                                    dynamicWeight === w
                                        ? 'bg-amber-500 text-slate-900'
                                        : `
                                          bg-slate-700 text-slate-300
                                          hover:bg-slate-600
                                        `
                                }
                                `}
                                onClick={() => setDynamicWeight(w)}
                            >
                                {w}
                            </button>
                        ))}
                    </div>
                    <p className="mb-4 text-xs text-slate-500">
                        <code className="
                          rounded-sm bg-slate-700 px-1 text-amber-400
                        ">{'import { HomeIcon } from "@solar-icons/react/dynamic/home"'}</code>
                        {' '}&rarr;{' '}
                        <code className="
                          rounded-sm bg-slate-700 px-1 text-emerald-400
                        ">{'<HomeIcon weight="Bold" size={32} />'}</code>
                    </p>
                    <div className="
                      grid grid-cols-4 gap-4
                      sm:grid-cols-6
                      md:grid-cols-8
                    ">
                        {DYNAMIC_ICONS.map(({ Icon, name }) => (
                            <div key={name} className="
                              flex flex-col items-center gap-2 rounded-xl border
                              border-slate-700/30 bg-slate-800/30 p-3
                            ">
                                <Icon weight={dynamicWeight} size={32} color={cssColor} />
                                <span className="
                                  w-full truncate text-center text-xs
                                  text-slate-500
                                ">
                                    {name}
                                </span>
                            </div>
                        ))}
                    </div>
                </Section>

                <Section number={2} title="Static Icons" desc="Direct per-style imports. No weight prop needed — import exactly what you need.">
                    <p className="mb-4 text-xs text-slate-500">
                        <code className="
                          rounded-sm bg-slate-700 px-1 text-amber-400
                        ">{'import { HomeBoldIcon, HomeLinearIcon } from "@solar-icons/react"'}</code>
                    </p>
                    <div className="flex flex-wrap gap-4">
                        <div className="
                          flex flex-col items-center gap-1 rounded-xl border
                          border-slate-700/30 bg-slate-800/30 p-3
                        ">
                            <HomeBoldIcon size={40} color={cssColor} />
                            <span className="text-xs text-slate-500">HomeBold</span>
                        </div>
                        <div className="
                          flex flex-col items-center gap-1 rounded-xl border
                          border-slate-700/30 bg-slate-800/30 p-3
                        ">
                            <HomeLinearIcon size={40} color={cssColor} />
                            <span className="text-xs text-slate-500">HomeLinear</span>
                        </div>
                        <div className="
                          flex flex-col items-center gap-1 rounded-xl border
                          border-slate-700/30 bg-slate-800/30 p-3
                        ">
                            <BellBoldIcon size={40} color={cssColor} />
                            <span className="text-xs text-slate-500">BellBold</span>
                        </div>
                        <div className="
                          flex flex-col items-center gap-1 rounded-xl border
                          border-slate-700/30 bg-slate-800/30 p-3
                        ">
                            <BellLinearIcon size={40} color={cssColor} />
                            <span className="text-xs text-slate-500">BellLinear</span>
                        </div>
                        <div className="
                          flex flex-col items-center gap-1 rounded-xl border
                          border-slate-700/30 bg-slate-800/30 p-3
                        ">
                            <AlarmBoldIcon size={40} color={cssColor} />
                            <span className="text-xs text-slate-500">AlarmBold</span>
                        </div>
                        <div className="
                          flex flex-col items-center gap-1 rounded-xl border
                          border-slate-700/30 bg-slate-800/30 p-3
                        ">
                            <AlarmLinearIcon size={40} color={cssColor} />
                            <span className="text-xs text-slate-500">AlarmLinear</span>
                        </div>
                        <div className="
                          flex flex-col items-center gap-1 rounded-xl border
                          border-slate-700/30 bg-slate-800/30 p-3
                        ">
                            <AccessibilityBoldIcon size={40} color={cssColor} />
                            <span className="text-xs text-slate-500">AccessBold</span>
                        </div>
                        <div className="
                          flex flex-col items-center gap-1 rounded-xl border
                          border-slate-700/30 bg-slate-800/30 p-3
                        ">
                            <AccessibilityLinearIcon size={40} color={cssColor} />
                            <span className="text-xs text-slate-500">AccessLinear</span>
                        </div>
                    </div>
                </Section>

                <Section number={3} title="Icon Gallery (DynamicIcon)" desc="Browse all {ALL_ICONS.length} icons using {'<DynamicIcon weight={...}>'}. Uses SolarProvider + useSolar() for controls.">
                    <SolarProvider color="#f59e0b" size={32} strokeWidth={1.5} secondaryColor="#60a5fa" secondaryOpacity={0.5}>
                        <Gallery />
                    </SolarProvider>
                </Section>

                <Section number={4} title="CSS Custom Properties" desc="Control icons via CSS custom properties on parent elements. No provider needed.">
                    <div className="mb-4 flex items-center gap-6">
                        <div className="space-y-1">
                            <label className="text-xs text-slate-400">Color</label>
                            <input type="color" value={cssColor} onChange={(e) => setCssColor(e.target.value)} className="
                              size-10 cursor-pointer rounded-sm border-0
                            " />
                        </div>
                        <div className="space-y-1">
                            <label className="text-xs text-slate-400">Size ({cssSize}px)</label>
                            <input type="range" min="16" max="64" value={cssSize} onChange={(e) => setCssSize(parseInt(e.target.value))} className="
                              w-32 accent-amber-500
                            " />
                        </div>
                    </div>
                    <div className="
                      grid grid-cols-1 gap-4
                      sm:grid-cols-2
                    ">
                        <div className="space-y-2">
                            <code className="block text-xs text-slate-500">{'style={{"--solar-color": ...}}'}</code>
                            <div className="
                              flex gap-4 rounded-lg bg-slate-900 p-4
                            " style={{ '--solar-color': cssColor, '--solar-size': `${cssSize}px` } as React.CSSProperties}>
                                <HomeBoldIcon />
                                <SettingsBoldIcon />
                                <UserBoldIcon />
                            </div>
                        </div>
                        <div className="space-y-2">
                            <code className="block text-xs text-slate-500">Tailwind [--solar-color:...]</code>
                            <div className="
                              flex gap-4 rounded-lg bg-slate-900 p-4
                              [--solar-color:var(--demo-color)]
                              [--solar-size:var(--demo-size)]
                            " style={{ '--demo-color': cssColor, '--demo-size': `${cssSize}px` } as React.CSSProperties}>
                                <HeartBoldIcon />
                                <StarBoldIcon />
                                <BellBoldIcon />
                            </div>
                        </div>
                    </div>
                </Section>

                <Section number={5} title="SolarProvider + useSolar" desc="A separate provider with its own controls.">
                    <ProviderDemo />
                </Section>

                <Section number={6} title="CSS Class Styling" desc="Every icon has class 'solar' and 'solar-{'{name}'}'. Target them with CSS selectors.">
                    <code className="mb-2 block text-xs text-slate-500">{'.solar { color: var(--solar-color, currentColor); }'}</code>
                    <code className="mb-4 block text-xs text-slate-500">{'.solar-home { /* specific icon */ }'}</code>
                    <div className="
                      flex gap-4 rounded-lg bg-slate-900 p-4
                      [&_.solar]:text-amber-500
                      [&_.solar-star]:text-blue-400
                    ">
                        <HomeBoldIcon />
                        <StarBoldIcon />
                        <HeartBoldIcon />
                    </div>
                </Section>

                <Section number={7} title="Accessibility" desc="Icons have aria-hidden='true' by default. Pass alt, aria-label, or title.">
                    <div className="
                      grid grid-cols-1 gap-4
                      sm:grid-cols-3
                    ">
                        <div className="space-y-2 rounded-lg bg-slate-900 p-4">
                            <code className="block text-xs text-green-400">Default (aria-hidden)</code>
                            <InfoCircleBoldIcon size={32} />
                        </div>
                        <div className="space-y-2 rounded-lg bg-slate-900 p-4">
                            <code className="block text-xs text-green-400">alt="Information"</code>
                            <InfoCircleBoldIcon size={32} alt="Information" />
                        </div>
                        <div className="space-y-2 rounded-lg bg-slate-900 p-4">
                            <code className="block text-xs text-green-400">aria-label</code>
                            <InfoCircleBoldIcon size={32} aria-label="Information about this icon" />
                        </div>
                    </div>
                </Section>
            </div>
        </div>
    )
}
