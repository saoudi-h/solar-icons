import { Button } from '@/components/ui/button'
import { ArrowRightUp, useSolar } from '@solar-icons/react'
import { useAtom } from 'jotai'
import Link from 'next/link'
import type { FC } from 'react'
import { selectedIconAtom } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const AngularCode: FC = () => {
    const [selectedIcon] = useAtom(selectedIconAtom)
    const { value } = useSolar()

    if (!selectedIcon) return null

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/packages/angular">
                    Get started with <span className="font-heading">Angular</span>{' '}
                    <ArrowRightUp size={16} weight="Linear" color={''} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="tsx"
                code={`import { ${selectedIcon?.Icon.displayName} } from '@solar-icons/angular/${value.weight}'`}
            />
            <CodeBlockTemplate
                lang="tsx"
                code={`<svg solar${selectedIcon?.Icon.displayName}${value.weight} [size]="${value.size}" [color]="'${value.color}'" />`}
            />
        </>
    )
}
