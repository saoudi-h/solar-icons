import { Button } from '@/components/ui/button'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import Link from 'next/link'
import type { FC } from 'react'
import { useSelectedIcon, useStyleURL } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const ReactPerfCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()

    if (!selectedIcon) return null
    const bare = selectedIcon.Icon.displayName?.replace(/Icon$/, '') ?? 'Icon'

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/packages/react-perf">
                    Get started with <span className="font-heading">React Perf</span>{' '}
                    <ArrowRightUpIcon size={16} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="tsx"
                code={`import { ${bare} } from '@solar-icons/react-perf/${weight.toLowerCase()}'`}
            />
            <CodeBlockTemplate lang="tsx" code={`<${bare} size={24} color="currentColor" />`} />
        </>
    )
}
