import { Button } from '@/components/ui/button'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import Link from 'next/link'
import type { FC } from 'react'
import { useSelectedIcon } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const ReactCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const componentName = selectedIcon?.Icon.displayName?.replace(/Icon$/, '') ?? 'Icon'

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/packages/react">
                    Get started with React <ArrowRightUpIcon size={16} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="tsx"
                code={`import { ${componentName} } from '@solar-icons/react/linear/${selectedIcon?.fullName}'`}
            />
            <CodeBlockTemplate
                lang="tsx"
                code={`<${componentName} size={24} color="currentColor" />`}
            />
        </>
    )
}
