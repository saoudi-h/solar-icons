import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import Link from 'next/link'
import type { FC } from 'react'

import { Button } from '@/components/ui/button'

import { useSelectedIcon, useStyleURL, weightToStyleSlug } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const BladeCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()

    if (!selectedIcon) return null
    const styleSlug = weightToStyleSlug(weight)

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/v2/packages/blade">
                    Get started with <span className="font-heading">Blade</span>{' '}
                    <ArrowRightUpIcon size={16} />
                </Link>
            </Button>
            <CodeBlockTemplate lang="html" code={`<x-solar-${styleSlug}-${selectedIcon.name} />`} />
            <CodeBlockTemplate
                lang="html"
                code={`<x-solar-icon name="${selectedIcon.name}" weight="${styleSlug}" />`}
            />
        </>
    )
}
