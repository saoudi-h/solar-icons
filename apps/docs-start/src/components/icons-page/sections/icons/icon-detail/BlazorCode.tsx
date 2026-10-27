import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import type { FC } from 'react'

import { Button } from '~/components/ui/button'
import { Link } from '~/components/ui/link'
import { toPascalCase } from '~/lib/utils'

import { useSelectedIcon, useStyleURL } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const BlazorCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()
    if (!selectedIcon) return null
    const name = toPascalCase(selectedIcon.name)

    return (
        <div className="flex flex-col gap-2">
            <Button variant="link" size="default" asChild>
                <Link href="/docs/v2/packages/blazor">
                    Get started with Blazor <ArrowRightUpIcon size={16} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="razor"
                code={`@using SolarIcons.Blazor\n\n<${name}${weight}Icon Size="24" />`}
            />
            <CodeBlockTemplate
                lang="razor"
                code={`<${name}Icon Weight="IconWeight.${weight}" Size="24" />`}
            />
        </div>
    )
}
