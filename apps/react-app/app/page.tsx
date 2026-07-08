'use client'

import { useState } from 'react'
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
        <div className="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
            <h2 className="text-xl font-bold text-white mb-1">{number}. {title}</h2>
            <p className="text-slate-400 text-sm mb-4">{desc}</p>
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
            <div className="max-w-7xl mx-auto px-4 sm:px-8 py-8 space-y-12">
                <div className="text-center space-y-2">
                    <h1 className="text-4xl font-bold text-white">Solar Icons - React</h1>
                    <p className="text-slate-400">{ALL_ICONS.length} icons x 6 styles = {ALL_ICONS.length * 6} variants</p>
                </div>

                <Section number={1} title="Dynamic Icons" desc={`Import from @solar-icons/react/dynamic/name. One component per icon, style via weight prop.`}>
                    <div className="flex flex-wrap gap-2 mb-4">
                        {weights.map((w) => (
                            <button
                                key={w}
                                className={`px-3 py-1.5 rounded-lg text-sm font-medium transition-all ${
                                    dynamicWeight === w
                                        ? 'bg-amber-500 text-slate-900'
                                        : 'bg-slate-700 text-slate-300 hover:bg-slate-600'
                                }`}
                                onClick={() => setDynamicWeight(w)}
                            >
                                {w}
                            </button>
                        ))}
                    </div>
                    <p className="text-xs text-slate-500 mb-4">
                        <code className="text-amber-400 bg-slate-700 px-1 rounded">{'import { HomeIcon } from "@solar-icons/react/dynamic/home"'}</code>
                        {' '}&rarr;{' '}
                        <code className="text-emerald-400 bg-slate-700 px-1 rounded">{'<HomeIcon weight="Bold" size={32} />'}</code>
                    </p>
                    <div className="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-8 gap-4">
                        {DYNAMIC_ICONS.map(({ Icon, name }) => (
                            <div key={name} className="flex flex-col items-center gap-2 p-3 bg-slate-800/30 rounded-xl border border-slate-700/30">
                                <Icon weight={dynamicWeight} size={32} color={cssColor} />
                                <span className="text-xs text-slate-500 truncate w-full text-center">
                                    {name}
                                </span>
                            </div>
                        ))}
                    </div>
                </Section>

                <Section number={2} title="Static Icons" desc="Direct per-style imports. No weight prop needed — import exactly what you need.">
                    <p className="text-xs text-slate-500 mb-4">
                        <code className="text-amber-400 bg-slate-700 px-1 rounded">{'import { HomeBoldIcon, HomeLinearIcon } from "@solar-icons/react"'}</code>
                    </p>
                    <div className="flex flex-wrap gap-4">
                        <div className="flex flex-col items-center gap-1 p-3 bg-slate-800/30 rounded-xl border border-slate-700/30">
                            <HomeBoldIcon size={40} color={cssColor} />
                            <span className="text-xs text-slate-500">HomeBold</span>
                        </div>
                        <div className="flex flex-col items-center gap-1 p-3 bg-slate-800/30 rounded-xl border border-slate-700/30">
                            <HomeLinearIcon size={40} color={cssColor} />
                            <span className="text-xs text-slate-500">HomeLinear</span>
                        </div>
                        <div className="flex flex-col items-center gap-1 p-3 bg-slate-800/30 rounded-xl border border-slate-700/30">
                            <BellBoldIcon size={40} color={cssColor} />
                            <span className="text-xs text-slate-500">BellBold</span>
                        </div>
                        <div className="flex flex-col items-center gap-1 p-3 bg-slate-800/30 rounded-xl border border-slate-700/30">
                            <BellLinearIcon size={40} color={cssColor} />
                            <span className="text-xs text-slate-500">BellLinear</span>
                        </div>
                        <div className="flex flex-col items-center gap-1 p-3 bg-slate-800/30 rounded-xl border border-slate-700/30">
                            <AlarmBoldIcon size={40} color={cssColor} />
                            <span className="text-xs text-slate-500">AlarmBold</span>
                        </div>
                        <div className="flex flex-col items-center gap-1 p-3 bg-slate-800/30 rounded-xl border border-slate-700/30">
                            <AlarmLinearIcon size={40} color={cssColor} />
                            <span className="text-xs text-slate-500">AlarmLinear</span>
                        </div>
                        <div className="flex flex-col items-center gap-1 p-3 bg-slate-800/30 rounded-xl border border-slate-700/30">
                            <AccessibilityBoldIcon size={40} color={cssColor} />
                            <span className="text-xs text-slate-500">AccessBold</span>
                        </div>
                        <div className="flex flex-col items-center gap-1 p-3 bg-slate-800/30 rounded-xl border border-slate-700/30">
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
                    <div className="flex items-center gap-6 mb-4">
                        <div className="space-y-1">
                            <label className="text-xs text-slate-400">Color</label>
                            <input type="color" value={cssColor} onChange={(e) => setCssColor(e.target.value)} className="w-10 h-10 rounded cursor-pointer border-0" />
                        </div>
                        <div className="space-y-1">
                            <label className="text-xs text-slate-400">Size ({cssSize}px)</label>
                            <input type="range" min="16" max="64" value={cssSize} onChange={(e) => setCssSize(parseInt(e.target.value))} className="w-32 accent-amber-500" />
                        </div>
                    </div>
                    <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div className="space-y-2">
                            <code className="text-xs text-slate-500 block">{'style={{"--solar-color": ...}}'}</code>
                            <div className="bg-slate-900 rounded-lg p-4 flex gap-4" style={{ '--solar-color': cssColor, '--solar-size': `${cssSize}px` } as React.CSSProperties}>
                                <HomeBoldIcon />
                                <SettingsBoldIcon />
                                <UserBoldIcon />
                            </div>
                        </div>
                        <div className="space-y-2">
                            <code className="text-xs text-slate-500 block">Tailwind [--solar-color:...]</code>
                            <div className="bg-slate-900 rounded-lg p-4 flex gap-4 [--solar-color:var(--demo-color)] [--solar-size:var(--demo-size)]" style={{ '--demo-color': cssColor, '--demo-size': `${cssSize}px` } as React.CSSProperties}>
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
                    <code className="text-xs text-slate-500 block mb-2">{'.solar { color: var(--solar-color, currentColor); }'}</code>
                    <code className="text-xs text-slate-500 block mb-4">{'.solar-home { /* specific icon */ }'}</code>
                    <div className="bg-slate-900 rounded-lg p-4 flex gap-4 [&_.solar]:text-amber-500 [&_.solar-star]:text-blue-400">
                        <HomeBoldIcon />
                        <StarBoldIcon />
                        <HeartBoldIcon />
                    </div>
                </Section>

                <Section number={7} title="Accessibility" desc="Icons have aria-hidden='true' by default. Pass alt, aria-label, or title.">
                    <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
                        <div className="bg-slate-900 rounded-lg p-4 space-y-2">
                            <code className="text-xs text-green-400 block">Default (aria-hidden)</code>
                            <InfoCircleBoldIcon size={32} />
                        </div>
                        <div className="bg-slate-900 rounded-lg p-4 space-y-2">
                            <code className="text-xs text-green-400 block">alt="Information"</code>
                            <InfoCircleBoldIcon size={32} alt="Information" />
                        </div>
                        <div className="bg-slate-900 rounded-lg p-4 space-y-2">
                            <code className="text-xs text-green-400 block">aria-label</code>
                            <InfoCircleBoldIcon size={32} aria-label="Information about this icon" />
                        </div>
                    </div>
                </Section>
            </div>
        </div>
    )
}
