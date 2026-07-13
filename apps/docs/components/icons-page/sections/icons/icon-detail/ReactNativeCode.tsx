import { Button } from '@/components/ui/button'
import { toPascalCase } from '@/lib/utils'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import Link from 'next/link'
import type { FC } from 'react'
import { useSelectedIcon, useStyleURL, weightToStyleSlug } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const ReactNativeCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()

    if (!selectedIcon) return null
    const importName = toPascalCase(selectedIcon.name) + 'Icon'
    const base = selectedIcon.name
    const styleSlug = weightToStyleSlug(weight)

    return (
        <div className="flex flex-col gap-2">
            <Button variant="link" size="default" asChild>
                <Link href="/docs/v2/packages/react-native">
                    Get started with React Native <ArrowRightUpIcon size={16} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="tsx"
                code={`import { ${importName} } from '@solar-icons/react-native/${styleSlug}/${base}'`}
            />
            <CodeBlockTemplate lang="tsx" code={`<${importName} size={24} />`} />
        </div>
    )
}
