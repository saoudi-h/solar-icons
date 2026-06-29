'use client'
import { ScrollFade } from '@/components/ui/scroll-fade'
import { cn } from '@/lib/utils'
import { CategoryNav } from './CategoryNav'
import { ShowcaseProvider, useStyleURL, WeightNamespaceProvider } from './context'
import { FilterBar } from './FilterBar'
import { IconDetail } from './icon-detail'
import { IconGridVirtualized } from './IconGrid'

export const IconShowcase: React.FC<{ className?: string }> = ({ className }) => {
    const [weight] = useStyleURL()

    return (
        <WeightNamespaceProvider weight={weight}>
            <ShowcaseProvider>
                <section
                    className={cn(
                        `
                          relative container flex size-full flex-1 flex-col
                          items-center self-center px-0
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
                            {/* Fixed-height frame for the sidebar + grid
                                row. The previous `flex-1` let the
                                container grow with the content
                                (categories list > viewport -> no
                                scroll), defeating the whole point of
                                the layout. A fixed height capped at
                                `100dvh - 7rem` (viewport minus the
                                FilterBar + wrapper padding + gap)
                                gives the sidebar and the grid the
                                same constrained frame; both scroll
                                internally when their content overflows. */}
                            <div
                                className="
                                  flex h-[calc(100dvh-7rem)] gap-4
                                  overflow-hidden
                                ">
                                <aside
                                    aria-label="Categories navigation"
                                    className="
                                      sticky top-4 hidden w-50 shrink-0 pr-1
                                      md:block
                                    ">
                                    <ScrollFade fadeSize={20} className="
                                      h-full pr-1
                                    ">
                                        <CategoryNav />
                                    </ScrollFade>
                                </aside>
                                <div className="min-w-0 flex-1">
                                    <IconGridVirtualized />
                                </div>
                            </div>
                            <IconDetail />
                        </div>
                    </div>
                </section>
            </ShowcaseProvider>
        </WeightNamespaceProvider>
    )
}

export default IconShowcase
