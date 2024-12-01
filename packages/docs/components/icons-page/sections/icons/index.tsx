'use client'
import { FilterBar } from './FilterBar'
import { cn } from '@/lib/utils'
import { IconGridVirtualized } from './IconGrid'
import { InitState } from './InitState'
import { ShowcaseProvider } from './context'

export const IconShowcase: React.FC<{ className?: string }> = ({ className }) => {
    return (
        <ShowcaseProvider>
            <section
                className={cn(
                    'relative flex flex-col items-center px-3 md:px-0 max-w-fd-container self-center w-full h-full flex-1',
                    className
                )}>
                <div className="relative flex flex-col gap-2 rounded-2xl md:rounded-3xl w-full h-full flex-1">
                    <div className="relative flex flex-col gap-4 p-4 rounded-xl h-full flex-1">
                        <InitState />
                        <FilterBar />
                        <IconGridVirtualized />
                    </div>
                </div>
            </section>
        </ShowcaseProvider>
    )
}

export default IconShowcase
