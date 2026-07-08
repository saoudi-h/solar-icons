import { Button } from '@/components/ui/button'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import Link from 'next/link'
import type { FC } from 'react'
import { useSelectedIcon } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const NuxtCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const prefix = 'Solar'
    const bare = selectedIcon?.Icon.displayName?.replace(/Icon$/, '') ?? 'Icon'

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/packages/nuxt">
                    Get started with Nuxt <ArrowRightUpIcon size={16} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="vue"
                code={`<${prefix}${bare} size="24" color="currentColor" />`}
            />
        </>
    )
}
