import { Button } from '@/components/ui/button'
import { ArrowRightUp, useSolar } from '@solar-icons/react'
import { useAtom } from 'jotai'
import Link from 'next/link'
import type { FC } from 'react'
import { selectedIconAtom } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const SvelteCode: FC = () => {
    const [selectedIcon] = useAtom(selectedIconAtom)
    const { value } = useSolar()

    if (!selectedIcon) return null

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/packages/svelte">
                    Get started with <span className="font-heading">Svelte</span>{' '}
                    <ArrowRightUp size={16} weight="Linear" color={''} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="svelte"
                code={`import { ${selectedIcon?.Icon.displayName} } from '@solar-icons/svelte/${value.weight}'`}
            />
            <CodeBlockTemplate
                lang="svelte"
                code={`<${selectedIcon?.Icon.displayName} size={${value.size}} color="${value.color}" />`}
            />
        </>
    )
}
