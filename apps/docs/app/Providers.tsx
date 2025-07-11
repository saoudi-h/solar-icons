'use client'
import { forcedThemeAtom } from '@/atom/forcedThemeAtom'
import { Toaster } from '@/components/ui/sonner'
import { TooltipProvider } from '@radix-ui/react-tooltip'
import { RootProvider } from 'fumadocs-ui/provider'
import { useAtom } from 'jotai'
import { ReactLenis } from 'lenis/react'
import { usePathname } from 'next/navigation'
import { NuqsAdapter } from 'nuqs/adapters/next/app'
import React, { useEffect } from 'react'

/**
 * Providers wraps the app in the following providers:
 * - JotaiProvider for state management
 * - RootProvider to provide the theme
 * - TooltipProvider to provide tooltips
 * - ReactLenis to provide smooth scrolling
 */
const Providers = ({ children }: { children: React.ReactNode }) => {
    const [forcedTheme, setForcedTheme] = useAtom(forcedThemeAtom)
    const pathname = usePathname()
    useEffect(() => {
        setForcedTheme(undefined)
    }, [pathname])
    return (
        <RootProvider theme={{ forcedTheme: forcedTheme }}>
            <NuqsAdapter>
                <TooltipProvider>
                    <ReactLenis
                        root
                        options={{
                            autoRaf: true,
                            prevent: node => node.classList.contains('ReactVirtualized__Grid'),
                        }}>
                        {children}
                        <Toaster />
                    </ReactLenis>
                </TooltipProvider>
            </NuqsAdapter>
        </RootProvider>
    )
}

export default Providers
