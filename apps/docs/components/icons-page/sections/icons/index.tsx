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
                            <div className="flex flex-1 gap-4">
                                <aside
                                    aria-label="Categories navigation"
                                    className="
                                      sticky top-4 hidden w-50 shrink-0 pr-1
                                      md:block
                                    ">
                                    {/* h-full fills the aside (which is
                                        stretched to the flex row's height
                                        by align-items: stretch). The
                                        content scrolls inside. */}
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
