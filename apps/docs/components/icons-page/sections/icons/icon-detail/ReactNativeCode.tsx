import { Button } from '@/components/ui/button'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import Link from 'next/link'
import type { FC } from 'react'
import { useSelectedIcon } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const ReactNativeCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const bare = selectedIcon?.Icon.displayName?.replace(/Icon$/, '') ?? 'Icon'

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/packages/react-native">
                    Get started with React Native <ArrowRightUpIcon size={16} />
                </Link>
            </Button>

            <CodeBlockTemplate
                lang="tsx"
                code={`import { ${bare} } from '@solar-icons/react-native/bold'`}
            />
            <CodeBlockTemplate lang="tsx" code={`<${bare} size={24} color="#000" />`} />
        </>
    )
}
