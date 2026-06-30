import { docsOptions } from '@/app/layout.config'
import { V3BetaBanner } from '@/components/beta-banner'
import { source } from '@/lib/source'
import { DocsLayout } from 'fumadocs-ui/layouts/docs'
import type { ReactNode } from 'react'

export default function Layout({ children }: { children: ReactNode }) {
    return (
        <>
            <V3BetaBanner />
            <DocsLayout tree={source.pageTree} {...docsOptions} tabs>
                {children}
            </DocsLayout>
        </>
    )
}
