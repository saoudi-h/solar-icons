import { Button } from '@/components/ui/button'
import { toPascalCase } from '@/lib/utils'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import Link from 'next/link'
import type { FC } from 'react'
import { useSelectedIcon, useStyleURL } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const NuxtCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()

    if (!selectedIcon) return null
    const pascalBase = toPascalCase(selectedIcon.name) + 'Icon'
    const componentName = `Solar${pascalBase}${weight}`

    return (
        <div className="flex flex-col gap-2">
            <Button variant="link" size="default" asChild>
                <Link href="/docs/v2/packages/nuxt">
                    Get started with Nuxt <ArrowRightUpIcon size={16} />
                </Link>
            </Button>
            <CodeBlockTemplate lang="vue" code={`<${componentName} size="24" />`} />
        </div>
    )
}
