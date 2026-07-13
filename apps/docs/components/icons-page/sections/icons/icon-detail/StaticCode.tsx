import { Button } from '@/components/ui/button'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import Link from 'next/link'
import type { FC } from 'react'
import { useSelectedIcon, useStyleURL } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const StaticCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()

    if (!selectedIcon) return null
    const bare = selectedIcon.Icon.displayName?.replace(/Icon$/, '') ?? 'Icon'

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/packages/static">
                    Get started with <span className="font-heading">Static</span>{' '}
                    <ArrowRightUpIcon size={16} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="js"
                code={`import { ${bare}Icon } from '@solar-icons/static/${weight.toLowerCase()}'`}
            />
            <CodeBlockTemplate
                lang="html"
                code={`<!-- SVG Sprite -->\n<img src="@solar-icons/static/sprite.svg#${selectedIcon.metadata.name}-${weight.toLowerCase()}" />`}
            />
        </>
    )
}
