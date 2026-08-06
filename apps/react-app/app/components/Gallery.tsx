'use client'

import { useState, useMemo } from 'react'
import * as Solar from '@solar-icons/react'
import { useSolar } from '@solar-icons/react'
import { ALL_ICONS, STYLES, type IconStyle } from '../icon-list'

const STYLE_SUFFIX: Record<IconStyle, string> = {
    Bold: 'Bold',
    BoldDuotone: 'BoldDuotone',
    Broken: 'Broken',
    Linear: 'Linear',
    LineDuotone: 'LineDuotone',
    Outline: 'Outline',
}

function isLinearLike(s: IconStyle): boolean {
    return s === 'Linear' || s === 'LineDuotone' || s === 'Broken'
}
function isDuotone(s: IconStyle): boolean {
    return s === 'BoldDuotone' || s === 'LineDuotone'
}

function getIcon(name: string, style: IconStyle) {
    return (Solar as any)[name + STYLE_SUFFIX[style]]
}

export default function Gallery() {
    const solar = useSolar()
    const [selectedStyle, setSelectedStyle] = useState<IconStyle>('Bold')
    const [searchQuery, setSearchQuery] = useState('')

    const filteredIcons = useMemo(() => {
        const q = searchQuery.toLowerCase()
        if (!q) return ALL_ICONS
        return ALL_ICONS.filter((n) => n.toLowerCase().includes(q))
    }, [searchQuery])

    return (
        <div className="space-y-4">
            <div className="
              grid grid-cols-1 gap-6
              sm:grid-cols-2
              lg:grid-cols-5
            ">
                <div className="space-y-2">
                    <label className="text-sm font-medium text-slate-300">Style</label>
                    <div className="flex flex-wrap gap-2">
                        {STYLES.map((s) => (
                            <button key={s} className={`
                              rounded-lg px-3 py-1.5 text-sm font-medium
                              transition-all
                              ${selectedStyle === s ? `
                                bg-amber-500 text-slate-900
                              ` : `
                                bg-slate-700 text-slate-300
                                hover:bg-slate-600
                              `}
                            `} onClick={() => setSelectedStyle(s)}>{s}</button>
                        ))}
                    </div>
                </div>
                <div className="space-y-2">
                    <label className="text-sm font-medium text-slate-300">Color</label>
                    <div className="flex items-center gap-3">
                        <input type="color" value={solar.color ?? '#f59e0b'} onChange={(e) => solar.setColor(e.target.value)} className="
                          size-10 cursor-pointer rounded-lg border-0
                        " />
                        <input type="text" value={solar.color ?? '#f59e0b'} onChange={(e) => solar.setColor(e.target.value)} className="
                          flex-1 rounded-lg border border-slate-600 bg-slate-700
                          px-3 py-2 font-mono text-sm text-slate-200
                        " />
                    </div>
                </div>
                <div className="space-y-2">
                    <label className="text-sm font-medium text-slate-300">Size: <span className="
                      text-amber-400
                    ">{solar.size ?? 32}px</span></label>
                    <input type="range" min="16" max="64" value={Number(solar.size) || 32} onChange={(e) => solar.setSize(parseInt(e.target.value))} className="
                      w-full accent-amber-500
                    " />
                </div>
                <div className={`
                  space-y-2
                  ${!isLinearLike(selectedStyle) ? `
                    pointer-events-none opacity-30
                  ` : ''}
                `}>
                    <label className="text-sm font-medium text-slate-300">Stroke: <span className="
                      text-amber-400
                    ">{solar.strokeWidth ?? 1.5}</span></label>
                    <input type="range" min="0.5" max="4" step="0.1" value={solar.strokeWidth ?? 1.5} onChange={(e) => solar.setStrokeWidth(parseFloat(e.target.value))} disabled={!isLinearLike(selectedStyle)} className="
                      w-full accent-amber-500
                    " />
                </div>
                <div className="space-y-2">
                    <label className="text-sm font-medium text-slate-300">Search</label>
                    <input type="text" placeholder="Filter icons..." value={searchQuery} onChange={(e) => setSearchQuery(e.target.value)} className="
                      w-full rounded-lg border border-slate-600 bg-slate-700
                      px-3 py-2 text-slate-200 placeholder-slate-500
                    " />
                </div>
            </div>

            {isDuotone(selectedStyle) && (
                <div className="border-t border-slate-700/50 pt-6">
                    <div className="mb-4 flex items-center gap-2">
                        <span className="
                          text-sm font-semibold tracking-wide text-blue-400
                          uppercase
                        ">Duotone</span>
                        <span className="
                          rounded-sm bg-slate-700/50 px-2 py-0.5 text-xs
                          text-slate-500
                        ">--solar-secondary-color / --solar-secondary-opacity</span>
                    </div>
                    <div className="
                      grid grid-cols-1 gap-6
                      sm:grid-cols-2
                    ">
                        <div className="space-y-2">
                            <label className="
                              text-sm font-medium text-slate-300
                            ">Accent Color: <span className="
                              font-mono text-xs text-blue-400
                            ">{solar.secondaryColor ?? '#60a5fa'}</span></label>
                            <div className="flex items-center gap-3">
                                <input type="color" value={solar.secondaryColor ?? '#60a5fa'} onChange={(e) => solar.setSecondaryColor(e.target.value)} className="
                                  size-10 cursor-pointer rounded-lg border-0
                                " />
                                <input type="text" value={solar.secondaryColor ?? '#60a5fa'} onChange={(e) => solar.setSecondaryColor(e.target.value)} className="
                                  flex-1 rounded-lg border border-slate-600
                                  bg-slate-700 px-3 py-2 font-mono text-sm
                                  text-slate-200
                                " />
                            </div>
                        </div>
                        <div className="space-y-2">
                            <label className="
                              text-sm font-medium text-slate-300
                            ">Accent Opacity: <span className="text-blue-400">{solar.secondaryOpacity ?? 0.5}</span></label>
                            <input type="range" min="0" max="1" step="0.05" value={solar.secondaryOpacity ?? 0.5} onChange={(e) => solar.setSecondaryOpacity(parseFloat(e.target.value))} className="
                              w-full accent-blue-400
                            " />
                        </div>
                    </div>
                </div>
            )}

            <div className="
              grid grid-cols-4 gap-4
              sm:grid-cols-6
              md:grid-cols-8
              lg:grid-cols-10
              xl:grid-cols-12
            ">
                {filteredIcons.map((name) => {
                    const IconComponent = getIcon(name, selectedStyle)
                    if (!IconComponent) return null
                    return (
                        <div key={name} className="
                          group flex cursor-pointer flex-col items-center
                          justify-center gap-2 rounded-xl border
                          border-slate-700/30 bg-slate-800/30 p-4 transition-all
                          hover:border-amber-500/30 hover:bg-slate-700/50
                        " title={name}>
                            <div className="flex items-center justify-center" style={{ minHeight: '64px' }}>
                                <IconComponent strokeWidth={isLinearLike(selectedStyle) ? Number(solar.strokeWidth) : undefined} />
                            </div>
                            <span className="
                              w-full truncate text-center text-xs text-slate-500
                              transition-colors
                              group-hover:text-slate-300
                            ">{name}</span>
                        </div>
                    )
                })}
            </div>
        </div>
    )
}
