import { useState, useEffect, useMemo, useRef } from 'react'
import { IconCard } from './IconCard'
import { IconData, searchIcons } from './utils'
import { cn } from '@/lib/utils'
import { Category } from '@/core/generated/utils'
import { AnimatePresence } from 'framer-motion'
import { Skeleton } from '@/components/ui/skeleton'
import { useAtom } from 'jotai'
import { categoriesAtom, keywordAtom } from '.'


export const IconGrid: React.FC = () => {
    const [keyword, setKeyword] = useAtom(keywordAtom)
    const [categories, setCategories] = useAtom(categoriesAtom)
    const [displayedIcons, setDisplayedIcons] = useState<IconData[]>([])
    const [hasMore, setHasMore] = useState(true)
    const itemsPerLoad = 50
    const isLoadingRef = useRef(true)
    const pageRef = useRef(0)
    const [isResetting, setIsResetting] = useState(false)

    const filteredIcons = useMemo(() => {
        return searchIcons({ keyword, categories })
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
            if (window.innerHeight + window.scrollY >= document.body.offsetHeight - 100) {
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
            {isLoadingRef.current && (
                <Skeleton className="h-[125px] w-[250px] rounded-xl"></Skeleton>
            )}
        </div>
    )
}
