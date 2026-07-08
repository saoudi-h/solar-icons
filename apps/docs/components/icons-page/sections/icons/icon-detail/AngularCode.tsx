import { Button } from '@/components/ui/button'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import Link from 'next/link'
import type { FC } from 'react'
import { useSelectedIcon } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const AngularCode: FC = () => {
    const selectedIcon = useSelectedIcon()

    if (!selectedIcon) return null

    const bare = selectedIcon.Icon.displayName?.replace(/Icon$/, '') ?? 'Icon'
    const importName = 'Solar' + bare
    const selectorName = 'solar' + bare

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/packages/angular">
                    Get started with <span className="font-heading">Angular</span>{' '}
                    <ArrowRightUpIcon size={16} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="tsx"
                code={`import { ${importName} } from '@solar-icons/angular'`}
            />
            <CodeBlockTemplate
                lang="tsx"
                code={`<svg ${selectorName} size="24" color="currentColor" />`}
            />
        </>
    )
}
