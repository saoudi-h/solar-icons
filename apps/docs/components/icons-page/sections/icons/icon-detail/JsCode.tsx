import { Button } from '@/components/ui/button'
import { toPascalCase } from '@/lib/utils'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import Link from 'next/link'
import type { FC } from 'react'
import { useSelectedIcon, useStyleURL, weightToStyleSlug } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const JsCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()

    if (!selectedIcon) return null
    const styleSlug = weightToStyleSlug(weight)
    const iconName = selectedIcon.name + `-${styleSlug}`
    const importName = toPascalCase(iconName) + 'Icon'

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/v2/packages/js">
                    Get started with <span className="font-heading">JS</span>{' '}
                    <ArrowRightUpIcon size={16} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="js"
                code={`import { ${importName} } from '@solar-icons/js'`}
            />
            <CodeBlockTemplate
                lang="html"
                code={`<i data-solar="${iconName}"></i>`}
            />
        </>
    )
}
