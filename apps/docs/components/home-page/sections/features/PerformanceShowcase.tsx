'use client'

export const PerformanceShowcase = () => {
    return (
        <div
            className="
              mt-auto flex w-full flex-col gap-3.5 text-left font-mono
              text-[9.5px]
            ">
            {/* Standard Package */}
            <div
                className="
                  flex flex-col gap-1.5 rounded-2xl border border-neutral-200/50
                  bg-white p-3
                  dark:border-neutral-800 dark:bg-neutral-950
                ">
                <div
                    className="
                      flex items-center gap-1.5 text-[9px] font-bold
                      tracking-wider text-neutral-500 uppercase select-none
                    ">
                    <span className="size-2 rounded-full bg-sky-500" />
                    Standard: Dynamic Morphing
                </div>
                <div
                    className="
                      overflow-x-auto leading-normal text-neutral-800
                      dark:text-neutral-300
                    ">
                    <div>
                        <span className="text-pink-500">import</span> {`{ Star }`}{' '}
                        <span
                            className="text-pink-500">
                            from
                        </span>{' '}
                        <span
                            className="
                              text-emerald-600
                              dark:text-emerald-400
                            ">
                            "@solar-icons/react"
                        </span>
                    </div>
                    <div className="mt-1 text-neutral-400">
                        {`// Renders all 6 weights dynamically at runtime`}
                    </div>
                    <div className="text-neutral-500">
                        &lt;<span className="text-rose-500">Star</span>{' '}
                        <span
                            className="text-orange-500">
                            weight
                        </span>
                        ={`{currentWeight}`} /&gt;
                    </div>
                </div>
            </div>

            {/* Performance Package */}
            <div
                className="
                  flex flex-col gap-1.5 rounded-2xl border border-neutral-200/50
                  bg-white p-3
                  dark:border-neutral-800 dark:bg-neutral-950
                ">
                <div
                    className="
                      flex items-center gap-1.5 text-[9px] font-bold
                      tracking-wider text-neutral-500 uppercase select-none
                    ">
                    <span className="size-2 rounded-full bg-emerald-500" />
                    Performance: Static Compile-Time
                </div>
                <div
                    className="
                      overflow-x-auto leading-normal text-neutral-800
                      dark:text-neutral-300
                    ">
                    <div>
                        <span className="text-pink-500">import</span> {`{ StarBold }`}{' '}
                        <span
                            className="text-pink-500">
                            from
                        </span>{' '}
                        <span className="text-primary">"@solar-icons/react-perf"</span>
                    </div>
                    <div className="mt-1 text-neutral-400">
                        {`// Bundles only the Bold style for minimal weight`}
                    </div>
                    <div className="text-neutral-500">
                        &lt;<span className="text-rose-500">StarBold</span> /&gt;
                    </div>
                </div>
            </div>
        </div>
    )
}
