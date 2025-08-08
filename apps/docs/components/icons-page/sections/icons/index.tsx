'use client'
import { cn } from '@/lib/utils'
import { FilterBar } from './FilterBar'
import { IconGridVirtualized } from './IconGrid'
import { InitState } from './InitState'
import { ShowcaseProvider } from './context'
import { IconDetail } from './icon-detail'

export const IconShowcase: React.FC<{ className?: string }> = ({ className }) => {
    return (
        <ShowcaseProvider>
            <section
                className={cn(
                    `
                      relative flex h-full w-full max-w-fd-container flex-1
                      flex-col items-center self-center px-0
                    `,
                    className
                )}>
                <div
                    className={`
                      relative flex h-full w-full flex-1 flex-col gap-2
                      rounded-2xl
                      md:rounded-3xl
                    `}>
                    <div
                        className={`
                      relative flex h-full flex-1 flex-col gap-4 rounded-xl p-4
                    `}>
                        <InitState />
                        <FilterBar />
                        <IconGridVirtualized />
                        <IconDetail />
                    </div>
                </div>
            </section>
        </ShowcaseProvider>
    )
}

export default IconShowcase
