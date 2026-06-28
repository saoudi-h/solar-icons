'use client'
import { Toaster } from '@/components/ui/sonner'
import { TooltipProvider } from '@radix-ui/react-tooltip'
import { RootProvider } from 'fumadocs-ui/provider/next'
import { ReactLenis } from 'lenis/react'
import { NuqsAdapter } from 'nuqs/adapters/next/app'
import React from 'react'

/**
 * Providers wraps the app in the following providers:
 * - RootProvider to provide the theme (toggle always visible in the header)
 * - NuqsAdapter for URL-persistent state
 * - TooltipProvider to provide tooltips
 * - ReactLenis for smooth scrolling
 */
const Providers = ({ children }: { children: React.ReactNode }) => {
    return (
        <RootProvider>
            <NuqsAdapter>
                <TooltipProvider>
                    <ReactLenis
                        root
                        options={{
                            allowNestedScroll: true,
                            autoRaf: true,
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
