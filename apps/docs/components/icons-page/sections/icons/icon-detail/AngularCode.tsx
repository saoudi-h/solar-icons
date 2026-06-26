import { Button } from '@/components/ui/button'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import { useAtom } from 'jotai'
import Link from 'next/link'
import type { FC } from 'react'
import { selectedIconAtom, weightAtom } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const AngularCode: FC = () => {
    const [selectedIcon] = useAtom(selectedIconAtom)
    const [weight] = useAtom(weightAtom)

    if (!selectedIcon) return null

    const bare = selectedIcon.Icon.displayName?.replace(/Icon$/, '') ?? 'Icon'
    const iconName = bare + weight

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
                code={`import { ${iconName} } from '@solar-icons/angular'`}
            />
            <CodeBlockTemplate
                lang="tsx"
                code={`<svg solar${iconName} size="24" color="currentColor" />`}
            />
        </>
    )
}
