'use client'
import { cn } from '@/lib/utils'
import { CategoryNav } from './CategoryNav'
import { ShowcaseProvider } from './context'
import { FilterBar } from './FilterBar'
import { IconDetail } from './icon-detail'
import { IconGridVirtualized } from './IconGrid'
import { InitState } from './InitState'

export const IconShowcase: React.FC<{ className?: string }> = ({ className }) => {
    return (
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
                      relative flex size-full flex-1 flex-col gap-2 rounded-2xl
                      md:rounded-3xl
                    `}>
                    <div
                        className={`
                          relative flex h-full flex-1 flex-col gap-4 rounded-xl
                          p-4
                        `}>
                        <InitState />
                        <FilterBar
                            drawerExtras={
                                <>
                                    <div
                                        className="
                                          my-2 px-1 text-[10px] font-semibold
                                          tracking-widest text-muted-foreground
                                          uppercase
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
                                  sticky top-4 hidden w-50 shrink-0 self-start
                                  pr-1
                                  lg:block
                                ">
                                <CategoryNav />
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
    )
}

export default IconShowcase
