import { useState, useEffect, useRef } from 'react'
import { IconCard } from './IconCard'
import { IconData, searchIcons } from './utils'
import { cn } from '@/lib/utils'
import { AnimatePresence } from 'framer-motion'
import { Skeleton } from '@/components/ui/skeleton'
import { useAtom } from 'jotai'
import { categoriesAtom, displayedIconsAtom, filteredIconsAtom, keywordAtom } from '.'
import { Button } from '@/components/ui/button'
import { DoubleAltArrowDown, Traffic } from '@solar-icons/react/ssr'

export const IconGrid: React.FC = () => {
    const ref = useRef<HTMLDivElement>(null)
    const [keyword] = useAtom(keywordAtom)
    const [categories] = useAtom(categoriesAtom)
    const [displayedIcons, setDisplayedIcons] = useAtom<IconData[]>(displayedIconsAtom)
    const [filteredIcons, setFilteredIcons] = useAtom<IconData[]>(filteredIconsAtom)
    const [hasMore, setHasMore] = useState(true)
    const itemsPerLoad = 50
    const isLoadingRef = useRef(true)
    const pageRef = useRef(0)
    const [isResetting, setIsResetting] = useState(false)

    useEffect(() => {
        setFilteredIcons(searchIcons({ keyword, categories }))
    }, [keyword, categories])

    useEffect(() => {
        isLoadingRef.current = false
        setDisplayedIcons([])
        setHasMore(true)
        pageRef.current = 0
        setIsResetting(true)
        const timeout = setTimeout(() => {
            setIsResetting(false)
        }, 0)

        return () => clearTimeout(timeout)
    }, [filteredIcons])

    useEffect(() => {
        if (!isResetting) {
            loadIcons()
        }
    }, [isResetting])

    const loadIcons = () => {
        if (!hasMore || isLoadingRef.current) return
        isLoadingRef.current = true
        const startIndex = pageRef.current * itemsPerLoad
        const endIndex = startIndex + itemsPerLoad
        const nextIcons = filteredIcons.slice(startIndex, endIndex)

        setDisplayedIcons(prevIcons => [...prevIcons, ...nextIcons])
        pageRef.current += 1

        if (endIndex >= filteredIcons.length) {
            setHasMore(false)
        }
        isLoadingRef.current = false
    }

    useEffect(() => {
        let timeout: NodeJS.Timeout | null = null
        
        const handleScroll = () => {
            if(!ref.current) return
            if (window.innerHeight + window.scrollY >= ref.current.clientHeight + ref.current.offsetTop + 200) {
                if (timeout) return
                timeout = setTimeout(() => {
                    loadIcons()
                    timeout = null
                }, 200)
            }
        }

        window.addEventListener('scroll', handleScroll)
        return () => {
            window.removeEventListener('scroll', handleScroll)
            if (timeout) clearTimeout(timeout)
        }
    }, [hasMore, filteredIcons])

    return (
        <div ref={ref}>
            <div
                className={cn(
                    'text-muted-foreground rounded-xl p-4 grid grid-cols-3 sm:grid-cols-4 md:grid-cols-6 lg:grid-cols-8 gap-2'
                )}>
                <AnimatePresence initial={false}>
                    {displayedIcons.map((icon, index) => {
                        return (
                            <IconCard
                                index={index - (displayedIcons.length - itemsPerLoad)}
                                key={icon.name}
                                {...icon}
                            />
                        )
                    })}
                </AnimatePresence>
                {isLoadingRef.current && <GridPlaceholder />}
            </div>
            {hasMore && <LoadMore isLoading={isLoadingRef.current} loadMore={loadIcons} />}
        </div>
    )
}

const GridPlaceholder: React.FC = () => {
    return (
        <>
            {Array(50)
                .fill(0)
                .map((_, index) => (
                    <div
                        key={index}
                        className="flex flex-col items-center justify-center rounded-lg gap-2 p-2">
                        <Skeleton className="size-8 rounded-3xl" />
                        <Skeleton className="h-2 w-28" />
                    </div>
                ))}
        </>
    )
}

const LoadMore: React.FC<{ isLoading: boolean, loadMore: () => void }> = ({ isLoading, loadMore }) => {
    
    const Icon = isLoading ? Traffic : DoubleAltArrowDown
    return (
        <div className="flex flex-col items-center justify-center rounded-lg gap-2 p-2 my-12">
            <Button
                disabled={isLoading}
                onClick={loadMore}
                colors="accent"
                className="flex flex-row items-center justify-center rounded-lg gap-2 p-2">
                <Icon weight="LineDuotone" className={cn(isLoading && "animate-spin")} size={24} />
                <span className="text-xs font-extralight text-muted-foreground">Load More</span>
            </Button>
        </div>
    )
}
