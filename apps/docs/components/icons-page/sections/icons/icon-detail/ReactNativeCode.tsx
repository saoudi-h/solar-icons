import { Button } from '@/components/ui/button'
import { ArrowRightUp } from '@solar-icons/react'
import { useAtom } from 'jotai'
import Link from 'next/link'
import type { FC } from 'react'
import { selectedIconAtom } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const ReactNativeCode: FC = () => {
    const [selectedIcon] = useAtom(selectedIconAtom)
    const iconName = selectedIcon?.Icon.displayName

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/packages/react-native">
                    Get started with React Native <ArrowRightUp size={16} weight="Linear" />
                </Link>
            </Button>

            <CodeBlockTemplate
                lang="tsx"
                code={`import { ${iconName} } from '@solar-icons/react-native/Bold'`}
            />
            <CodeBlockTemplate
                lang="tsx"
                code={`<${iconName} size={24} color="#000" />`}
            />

            <CodeBlockTemplate
                lang="tsx"
                code={`import { ${iconName}Bold } from '@solar-icons/react-native'`}
            />
            <CodeBlockTemplate
                lang="tsx"
                code={`<${iconName}Bold size={24} color="#000" />`}
            />
        </>
    )
}
