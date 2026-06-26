import { Button } from '@/components/ui/button'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import { useAtom } from 'jotai'
import Link from 'next/link'
import type { FC } from 'react'
import { selectedIconAtom, weightAtom } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const SvelteCode: FC = () => {
    const [selectedIcon] = useAtom(selectedIconAtom)
    const [weight] = useAtom(weightAtom)

    if (!selectedIcon) return null
    const bare = selectedIcon.Icon.displayName?.replace(/Icon$/, '') ?? 'Icon'

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/packages/svelte">
                    Get started with <span className="font-heading">Svelte</span>{' '}
                    <ArrowRightUpIcon size={16} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="svelte"
                code={`import { ${bare} } from '@solar-icons/svelte/${weight.toLowerCase()}'`}
            />
            <CodeBlockTemplate lang="svelte" code={`<${bare} size={24} color="currentColor" />`} />
        </>
    )
}
