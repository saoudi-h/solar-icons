import { Button } from '@/components/ui/button'
import { toPascalCase } from '@/lib/utils'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import Link from 'next/link'
import type { FC } from 'react'
import { useSelectedIcon, useStyleURL } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const AngularCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()

    if (!selectedIcon) return null
    const pascalBase = toPascalCase(selectedIcon.name)
    const importName = `Solar${pascalBase}${weight}`
    const selector = `solar${pascalBase}${weight}`

    return (
        <div className="flex flex-col gap-2">
            <Button variant="link" size="default" asChild>
                <Link href="/docs/v2/frameworks/angular">
                    Get started with <span className="font-heading">Angular</span>{' '}
                    <ArrowRightUpIcon size={16} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="typescript"
                code={`import { ${importName} } from '@solar-icons/angular'`}
            />
            <CodeBlockTemplate lang="html" code={`<svg ${selector} [size]="24" />`} />
        </div>
    )
}
