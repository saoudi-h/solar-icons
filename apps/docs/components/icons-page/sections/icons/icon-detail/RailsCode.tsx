import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import type { FC } from 'react'

import { Button } from '@/components/ui/button'
import { Link } from '@/components/ui/link'

import { useSelectedIcon, useStyleURL, weightToStyleSlug } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const RailsCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()

    if (!selectedIcon) return null
    const styleSlug = weightToStyleSlug(weight)

    return (
        <div className="flex flex-col gap-2">
            <Button variant="link" size="default" asChild>
                <Link href="/docs/v2/packages/rails">
                    Get started with <span className="font-heading">Rails</span>{' '}
                    <ArrowRightUpIcon size={16} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="erb"
                code={`<%= solar_icon("${selectedIcon.name}", weight: "${styleSlug}") %>`}
            />
            <CodeBlockTemplate
                lang="erb"
                code={`<%= solar_icon("${selectedIcon.name}", weight: "${styleSlug}", size: 32, class: "text-primary") %>`}
            />
        </div>
    )
}
