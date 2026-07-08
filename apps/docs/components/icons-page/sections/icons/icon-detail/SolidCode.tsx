import { Button } from '@/components/ui/button'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import Link from 'next/link'
import type { FC } from 'react'
import { useSelectedIcon, useStyleURL } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const SolidCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()

    if (!selectedIcon) return null
    const bare = selectedIcon.Icon.displayName?.replace(/Icon$/, '') ?? 'Icon'

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/packages/solid">
                    Get started with <span className="font-heading">Solid</span>{' '}
                    <ArrowRightUpIcon size={16} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="tsx"
                code={`import { ${bare} } from '@solar-icons/solid/${weight.toLowerCase()}'`}
            />
            <CodeBlockTemplate lang="tsx" code={`<${bare} size={24} color="currentColor" />`} />
        </>
    )
}
