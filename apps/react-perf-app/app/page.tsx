'use client'

import React from 'react'
import {
    MinimalisticMagnifer,
    MinimalisticMagnifier,
} from '@solar-icons/react-perf/Linear'
import * as Solar from '@solar-icons/react-perf'

export default function Home() {
    // Filter exported icons (exclude types, internal components, etc)
    const iconNames = Object.keys(Solar).filter(name => /^[A-Z]/.test(name) && name !== 'IconBase')

    return (
        <div className="font-[family-name:var(--font-geist-sans)] grid min-h-screen items-start justify-items-center gap-16 p-8 pb-20 sm:p-20">
            <main className="flex flex-col items-center gap-8 w-full max-w-7xl">
                <h1 className="text-3xl font-bold mb-4">React Perf Icon Test</h1>

                <section className="mb-8 w-full border border-gray-200 dark:border-gray-800 rounded-lg p-6 bg-white dark:bg-gray-900 shadow-sm">
                    <h2 className="mb-6 text-xl font-bold border-b pb-2">Alias Verification (Bug Reproduction)</h2>
                    <div className="grid grid-cols-2 md:grid-cols-4 gap-8">
                        <div className="flex flex-col items-center gap-3 p-4 bg-blue-50 dark:bg-blue-900/20 rounded-md">
                            <span className="text-sm font-mono text-gray-600 dark:text-gray-300">MinimalisticMagnifier</span>
                            <span className="text-xs bg-green-100 text-green-800 px-2 py-0.5 rounded">Correct</span>
                            <MinimalisticMagnifier className="h-12 w-12 text-blue-600" />
                        </div>
                        <div className="flex flex-col items-center gap-3 p-4 bg-red-50 dark:bg-red-900/20 rounded-md border border-red-200 dark:border-red-800">
                            <span className="text-sm font-mono text-gray-600 dark:text-gray-300">MinimalisticMagnifer</span>
                             <span className="text-xs bg-yellow-100 text-yellow-800 px-2 py-0.5 rounded">Alias (Typo)</span>
                            {/* This is expected to fail if the bug is present */}
                            <MinimalisticMagnifer className="h-12 w-12 text-red-600" />
                        </div>
                    </div>
                </section>

                <section className="w-full">
                    <div className="flex justify-between items-center mb-6">
                        <h2 className="text-xl font-bold">All Icons ({iconNames.length})</h2>
                        <span className="text-sm text-gray-500">Filtered view</span>
                    </div>
                    
                    <div className="grid grid-cols-[repeat(auto-fill,minmax(120px,1fr))] gap-4">
                        {iconNames.map(name => {
                            const Icon = (Solar as any)[name]
                            if (typeof Icon !== 'function' && typeof Icon !== 'object') return null

                            return (
                                <div
                                    key={name}
                                    className="flex flex-col items-center justify-center p-4 border border-gray-100 dark:border-gray-800 rounded-lg hover:bg-gray-50 dark:hover:bg-gray-800 transition-colors group cursor-pointer"
                                    title={name}
                                >
                                    <Icon className="mb-3 h-8 w-8 text-gray-700 dark:text-gray-300 group-hover:scale-110 transition-transform" />
                                    <span className="w-full overflow-hidden text-ellipsis text-center text-[10px] text-gray-500 font-mono">
                                        {name}
                                    </span>
                                </div>
                            )
                        })}
                    </div>
                </section>
            </main>
        </div>
    )
}
