import { Button } from '@/components/ui/button'
import { toPascalCase } from '@/lib/utils'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import Link from 'next/link'
import type { FC } from 'react'
import { useSelectedIcon, useStyleURL, weightToStyleSlug } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const StaticCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()

    if (!selectedIcon) return null
    const importName = toPascalCase(selectedIcon.name) + 'Icon'
    const styleSlug = weightToStyleSlug(weight)
    const iconName = selectedIcon.name + `-${styleSlug}`

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
                code={`import { ${importName} } from '@solar-icons/static/${styleSlug}'`}
            />
            <CodeBlockTemplate
                lang="html"
                code={`<img src="@solar-icons/static/sprite.svg#${iconName}" />`}
            />
        </>
    )
}
