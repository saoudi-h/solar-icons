'use client'
import { cn } from '@/lib/utils'
import { useState } from 'react'
import { CategoryNav } from './CategoryNav'
import { ShowcaseProvider, useStyleURL, WeightNamespaceProvider } from './context'
import { FilterBar } from './FilterBar'
import { IconDetail } from './icon-detail'
import { IconGridVirtualized } from './IconGrid'

export const IconShowcase: React.FC<{ className?: string }> = ({ className }) => {
    const [weight] = useStyleURL()
    // The grid measures its own height
    // (`window.innerHeight - <wrapper top> - 56 - detailHeight` in
    // `IconGrid`) and reports it back via `onHeightChange`. We use
    // that exact value as the height of the sidebar+grid row so the
    // two scrollable panels are pixel-identical — no
    // `calc(100dvh - 7rem)` magic number, no 3-categories-too-tall
    // mismatch. The `detailHeight` offset is reported by the
    // `IconDetail`'s `FloatingDrawer` via a `ResizeObserver`; when
    // the drawer opens, the grid shrinks by exactly its height so
    // the last row of icons + the last sidebar category stay
    // reachable inside the row's native scroll. See DOCS-UI-02.
    const [gridHeight, setGridHeight] = useState(0)
    const [detailHeight, setDetailHeight] = useState(0)

    return (
        <WeightNamespaceProvider weight={weight}>
            <ShowcaseProvider>
                <section
                    className={cn(
                        `
                          relative flex size-full flex-1 flex-col items-center
                          self-center px-0
                        `,
                        className
                    )}>
                    <div
                        className={`
                          relative flex size-full flex-1 flex-col gap-2
                          rounded-2xl
                          md:rounded-3xl
                        `}>
                        <div
                            className={`
                              relative flex h-full flex-1 flex-col gap-4
                              rounded-xl p-4
                            `}>
                            <FilterBar
                                drawerExtras={
                                    <>
                                        <div
                                            className="
                                              my-2 px-1 text-[10px]
                                              font-semibold tracking-widest
                                              text-muted-foreground uppercase
                                            ">
                                            Categories
                                        </div>
                                        <CategoryNav />
                                    </>
                                }
                            />
                            <div
                                className="flex gap-4 overflow-hidden"
                                style={{
                                    height: gridHeight > 0 ? `${gridHeight}px` : undefined,
                                }}>
                                <aside
                                    aria-label="Categories navigation"
                                    className="
                                      sticky top-4 hidden w-50 shrink-0
                                      overflow-y-auto pr-1
                                      md:block
                                    ">
                                    <CategoryNav />
                                </aside>
                                <div className="min-w-0 flex-1">
                                    <IconGridVirtualized
                                        onHeightChange={setGridHeight}
                                        detailHeight={detailHeight}
                                    />
                                </div>
                            </div>
                            <IconDetail onHeightChange={setDetailHeight} />
                        </div>
                    </div>
                </section>
            </ShowcaseProvider>
        </WeightNamespaceProvider>
    )
}

export default IconShowcase
