'use client'

import * as Solar from '@solar-icons/react-perf'
import { MinimalisticMagnifer, MinimalisticMagnifier } from '@solar-icons/react-perf/Linear'

export default function Home() {
    // Filter exported icons (exclude types, internal components, etc)
    const iconNames = Object.keys(Solar).filter(name => /^[A-Z]/.test(name) && name !== 'IconBase')

    return (
        <div
            className="
              grid min-h-screen items-start justify-items-center gap-16 p-8
              pb-20 font-(family-name:--font-geist-sans)
              sm:p-20
            ">
            <main className="flex w-full max-w-7xl flex-col items-center gap-8">
                <h1 className="mb-4 text-3xl font-bold">React Perf Icon Test</h1>

                <section
                    className="
                      mb-8 w-full rounded-lg border border-gray-200 bg-white p-6
                      shadow-sm
                      dark:border-gray-800 dark:bg-gray-900
                    ">
                    <h2 className="mb-6 border-b pb-2 text-xl font-bold">
                        Alias Verification (Bug Reproduction)
                    </h2>
                    <div
                        className="
                          grid grid-cols-2 gap-8
                          md:grid-cols-4
                        ">
                        <div
                            className="
                              flex flex-col items-center gap-3 rounded-md
                              bg-blue-50 p-4
                              dark:bg-blue-900/20
                            ">
                            <span
                                className="
                                  font-mono text-sm text-gray-600
                                  dark:text-gray-300
                                ">
                                MinimalisticMagnifier
                            </span>
                            <span
                                className="
                                  rounded-sm bg-green-100 px-2 py-0.5 text-xs
                                  text-green-800
                                ">
                                Correct
                            </span>
                            <MinimalisticMagnifier className="
                              size-12 text-blue-600
                            " />
                        </div>
                        <div
                            className="
                              flex flex-col items-center gap-3 rounded-md border
                              border-red-200 bg-red-50 p-4
                              dark:border-red-800 dark:bg-red-900/20
                            ">
                            <span
                                className="
                                  font-mono text-sm text-gray-600
                                  dark:text-gray-300
                                ">
                                MinimalisticMagnifer
                            </span>
                            <span
                                className="
                                  rounded-sm bg-yellow-100 px-2 py-0.5 text-xs
                                  text-yellow-800
                                ">
                                Alias (Typo)
                            </span>
                            {/* This is expected to fail if the bug is present */}
                            <MinimalisticMagnifer className="
                              size-12 text-red-600
                            " />
                        </div>
                    </div>
                </section>

                <section className="w-full">
                    <div className="mb-6 flex items-center justify-between">
                        <h2 className="text-xl font-bold">All Icons ({iconNames.length})</h2>
                        <span className="text-sm text-gray-500">Filtered view</span>
                    </div>

                    <div
                        className="
                          grid grid-cols-[repeat(auto-fill,minmax(120px,1fr))]
                          gap-4
                        ">
                        {iconNames.map(name => {
                            const Icon = (Solar as any)[name]
                            if (typeof Icon !== 'function' && typeof Icon !== 'object') return null

                            return (
                                <div
                                    key={name}
                                    className="
                                      group flex cursor-pointer flex-col
                                      items-center justify-center rounded-lg
                                      border border-gray-100 p-4
                                      transition-colors
                                      hover:bg-gray-50
                                      dark:border-gray-800
                                      dark:hover:bg-gray-800
                                    "
                                    title={name}>
                                    <Icon
                                        className="
                                          mb-3 size-8 text-gray-700
                                          transition-transform
                                          group-hover:scale-110
                                          dark:text-gray-300
                                        "
                                    />
                                    <span
                                        className="
                                          w-full overflow-hidden text-center
                                          font-mono text-[10px] text-ellipsis
                                          text-gray-500
                                        ">
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
