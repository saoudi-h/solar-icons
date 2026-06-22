'use client'

import { useState } from 'react'
import * as Solar from '@solar-icons/react'
import { SolarProvider } from '@solar-icons/react'
import Gallery from './components/Gallery'
import ProviderDemo from './components/ProviderDemo'
import { ALL_ICONS } from './icon-list'

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

    return (
        <div className="min-h-screen bg-slate-900 text-slate-200">
            <div className="max-w-7xl mx-auto px-4 sm:px-8 py-8 space-y-12">
                <div className="text-center space-y-2">
                    <h1 className="text-4xl font-bold text-white">Solar Icons - React</h1>
                    <p className="text-slate-400">{ALL_ICONS.length} icons x 6 styles = {ALL_ICONS.length * 6} variants</p>
                </div>

                <Section number={1} title="Icon Gallery" desc="Browse all icons. Controls use SolarProvider + useSolar().">
                    <SolarProvider color="#f59e0b" size={32} strokeWidth={1.5} duotoneColor="#60a5fa" duotoneOpacity={0.5}>
                        <Gallery />
                    </SolarProvider>
                </Section>

                <Section number={2} title="CSS Custom Properties" desc="Control icons via CSS custom properties on parent elements. No provider needed.">
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
                            <code className="text-xs text-slate-500 block">{'style={{"--solar-icon-color": ...}}'}</code>
                            <div className="bg-slate-900 rounded-lg p-4 flex gap-4" style={{ '--solar-icon-color': cssColor, '--solar-icon-size': `${cssSize}px` } as React.CSSProperties}>
                                <Solar.HomeBold />
                                <Solar.SettingsBold />
                                <Solar.UserBold />
                            </div>
                        </div>
                        <div className="space-y-2">
                            <code className="text-xs text-slate-500 block">Tailwind [--solar-icon-color:...]</code>
                            <div className="bg-slate-900 rounded-lg p-4 flex gap-4 [--solar-icon-color:var(--demo-color)] [--solar-icon-size:var(--demo-size)]" style={{ '--demo-color': cssColor, '--demo-size': `${cssSize}px` } as React.CSSProperties}>
                                <Solar.HeartBold />
                                <Solar.StarBold />
                                <Solar.BellBold />
                            </div>
                        </div>
                    </div>
                </Section>

                <Section number={3} title="SolarProvider + useSolar" desc="A separate provider with its own controls.">
                    <ProviderDemo />
                </Section>

                <Section number={4} title="CSS Class Styling" desc="Every icon has class 'solar' and 'solar-{'name'}'. Target them with CSS selectors.">
                    <code className="text-xs text-slate-500 block mb-2">{'.solar { color: var(--solar-icon-color, currentColor); }'}</code>
                    <code className="text-xs text-slate-500 block mb-4">{'.solar-home { /* specific icon */ }'}</code>
                    <div className="bg-slate-900 rounded-lg p-4 flex gap-4 [&_.solar]:text-amber-500 [&_.solar-star]:text-blue-400">
                        <Solar.HomeBold />
                        <Solar.StarBold />
                        <Solar.HeartBold />
                    </div>
                </Section>

                <Section number={5} title="Accessibility" desc="Icons have aria-hidden='true' by default. Pass alt, aria-label, or title.">
                    <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
                        <div className="bg-slate-900 rounded-lg p-4 space-y-2">
                            <code className="text-xs text-green-400 block">Default (aria-hidden)</code>
                            <Solar.InfoCircleBold size={32} />
                        </div>
                        <div className="bg-slate-900 rounded-lg p-4 space-y-2">
                            <code className="text-xs text-green-400 block">alt="Information"</code>
                            <Solar.InfoCircleBold size={32} alt="Information" />
                        </div>
                        <div className="bg-slate-900 rounded-lg p-4 space-y-2">
                            <code className="text-xs text-green-400 block">aria-label</code>
                            <Solar.InfoCircleBold size={32} aria-label="Information about this icon" />
                        </div>
                    </div>
                </Section>
            </div>
        </div>
    )
}
