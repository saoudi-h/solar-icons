'use client'

import { useState } from 'react'
import { SolarProvider, useSolar } from '@solar-icons/react'
import * as Solar from '@solar-icons/react'

function ProviderDemoInner() {
    const solar = useSolar()
    return (
        <div className="bg-slate-900 rounded-lg p-4 space-y-2">
            <div className="flex gap-2 items-center flex-wrap">
                <button className="px-3 py-1.5 bg-amber-500 text-slate-900 rounded-lg text-sm font-medium" onClick={() => solar.setColor('#ef4444')}>Red</button>
                <button className="px-3 py-1.5 bg-blue-500 text-white rounded-lg text-sm" onClick={() => solar.setColor('#3b82f6')}>Blue</button>
                <button className="px-3 py-1.5 bg-green-500 text-white rounded-lg text-sm" onClick={() => solar.setColor('#22c55e')}>Green</button>
                <button className="px-3 py-1.5 bg-slate-600 text-white rounded-lg text-sm" onClick={() => solar.setSize(48)}>48px</button>
                <button className="px-3 py-1.5 bg-slate-600 text-white rounded-lg text-sm" onClick={() => solar.setSize(24)}>24px</button>
                <button className="px-3 py-1.5 bg-slate-600 text-white rounded-lg text-sm" onClick={() => solar.setMirrored(!solar.mirrored)}>
                    {solar.mirrored ? 'Unmirror' : 'Mirror'}
                </button>
                <span className="text-xs text-slate-500">
                    size: {solar.size ?? 'default'} | mirrored: {solar.mirrored ? 'yes' : 'no'}
                </span>
            </div>
            <div className="flex gap-4">
                <Solar.HomeBold />
                <Solar.StarBold color="#ef4444" />
                <Solar.HeartBold />
            </div>
        </div>
    )
}

export default function ProviderDemo() {
    const [providerSize, setProviderSize] = useState(36)
    const [providerColor, setProviderColor] = useState('#f59e0b')
    const [providerStroke, setProviderStroke] = useState(1.5)
    const [providerMirrored, setProviderMirrored] = useState(false)

    return (
        <div>
            <div className="flex items-center gap-6 mb-4">
                <div className="space-y-1">
                    <label className="text-xs text-slate-400">Color</label>
                    <input type="color" value={providerColor} onChange={(e) => setProviderColor(e.target.value)} className="w-10 h-10 rounded cursor-pointer border-0" />
                </div>
                <div className="space-y-1">
                    <label className="text-xs text-slate-400">Size ({providerSize}px)</label>
                    <input type="range" min="16" max="64" value={providerSize} onChange={(e) => setProviderSize(parseInt(e.target.value))} className="w-32 accent-amber-500" />
                </div>
                <div className="space-y-1">
                    <label className="text-xs text-slate-400">Stroke ({providerStroke})</label>
                    <input type="range" min="0.5" max="3" step="0.1" value={providerStroke} onChange={(e) => setProviderStroke(parseFloat(e.target.value))} className="w-32 accent-amber-500" />
                </div>
                <div className="space-y-1">
                    <label className="text-xs text-slate-400">Mirror</label>
                    <label className="flex items-center gap-2 cursor-pointer">
                        <input type="checkbox" checked={providerMirrored} onChange={(e) => setProviderMirrored(e.target.checked)} className="accent-amber-500" />
                        <span className="text-sm text-slate-300">{providerMirrored ? 'On' : 'Off'}</span>
                    </label>
                </div>
            </div>
            <SolarProvider color={providerColor} size={providerSize} strokeWidth={providerStroke} mirrored={providerMirrored}>
                <ProviderDemoInner />
            </SolarProvider>
        </div>
    )
}
