'use client'

import { SolarProvider, useSolar } from '@solar-icons/react'
import { HomeBoldIcon, StarBoldIcon, HeartBoldIcon } from '@solar-icons/react'
import { useState } from 'react'

function ProviderDemoInner() {
    const solar = useSolar()
    return (
        <div className="space-y-2 rounded-lg bg-slate-900 p-4">
            <div className="flex flex-wrap items-center gap-2">
                <button
                    className="
                  rounded-lg bg-amber-500 px-3 py-1.5 text-sm font-medium text-slate-900
                "
                    onClick={() => solar.setColor('#ef4444')}>
                    Red
                </button>
                <button
                    className="rounded-lg bg-blue-500 px-3 py-1.5 text-sm text-white"
                    onClick={() => solar.setColor('#3b82f6')}>
                    Blue
                </button>
                <button
                    className="rounded-lg bg-green-500 px-3 py-1.5 text-sm text-white"
                    onClick={() => solar.setColor('#22c55e')}>
                    Green
                </button>
                <button
                    className="rounded-lg bg-slate-600 px-3 py-1.5 text-sm text-white"
                    onClick={() => solar.setSize(48)}>
                    48px
                </button>
                <button
                    className="rounded-lg bg-slate-600 px-3 py-1.5 text-sm text-white"
                    onClick={() => solar.setSize(24)}>
                    24px
                </button>
            </div>
            <div className="flex gap-4">
                <HomeBoldIcon />
                <StarBoldIcon color="#ef4444" />
                <HeartBoldIcon />
            </div>
        </div>
    )
}

export default function ProviderDemo() {
    const [providerSize, setProviderSize] = useState(36)
    const [providerColor, setProviderColor] = useState('#f59e0b')
    const [providerStroke, setProviderStroke] = useState(1.5)

    return (
        <div>
            <div className="mb-4 flex items-center gap-6">
                <div className="space-y-1">
                    <label className="text-xs text-slate-400">Color</label>
                    <input
                        type="color"
                        value={providerColor}
                        onChange={e => setProviderColor(e.target.value)}
                        className="
                      size-10 cursor-pointer rounded-sm border-0
                    "
                    />
                </div>
                <div className="space-y-1">
                    <label className="text-xs text-slate-400">Size ({providerSize}px)</label>
                    <input
                        type="range"
                        min="16"
                        max="64"
                        value={providerSize}
                        onChange={e => setProviderSize(parseInt(e.target.value))}
                        className="
                      w-32 accent-amber-500
                    "
                    />
                </div>
                <div className="space-y-1">
                    <label className="text-xs text-slate-400">Stroke ({providerStroke})</label>
                    <input
                        type="range"
                        min="0.5"
                        max="3"
                        step="0.1"
                        value={providerStroke}
                        onChange={e => setProviderStroke(parseFloat(e.target.value))}
                        className="
                      w-32 accent-amber-500
                    "
                    />
                </div>
            </div>
            <SolarProvider color={providerColor} size={providerSize} strokeWidth={providerStroke}>
                <ProviderDemoInner />
            </SolarProvider>
        </div>
    )
}
