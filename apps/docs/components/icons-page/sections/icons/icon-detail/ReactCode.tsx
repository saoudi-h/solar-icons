import { Button } from '@/components/ui/button'
import { ArrowRightUp, useSolar } from '@solar-icons/react'
import { useAtom } from 'jotai'
import Link from 'next/link'
import type { FC } from 'react'
import { selectedIconAtom } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const ReactCode: FC = () => {
    const { value } = useSolar()
    const [selectedIcon] = useAtom(selectedIconAtom)

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/packages/react">
                    Get started with React <ArrowRightUp size={16} weight="Linear" color={''} />
                </Link>
            </Button>
            <CodeBlockTemplate
                code={`import { ${selectedIcon?.Icon.displayName} } from '@solar-icons/react'`}
            />
            <CodeBlockTemplate
                code={`<${selectedIcon?.Icon.displayName} weight={${value.weight}} size={${value.size}} color='${value.color}' />`}
            />
        </>
    )
}
