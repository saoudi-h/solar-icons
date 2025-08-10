import { Button } from '@/components/ui/button'
import { ArrowRightUp, useSolar } from '@solar-icons/react'
import { useAtom } from 'jotai'
import Link from 'next/link'
import type { FC } from 'react'
import { selectedIconAtom } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const NuxtCode: FC = () => {
    const { value } = useSolar()
    const [selectedIcon] = useAtom(selectedIconAtom)
    const prefix = "Solar"

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/packages/nuxt">
                    Get started with Nuxt <ArrowRightUp size={16} weight="Linear" color={''} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="vue"
                code={`<${prefix}${selectedIcon?.Icon.displayName} weight="${value.weight}" size="${value.size}" color='${value.color}' />`}
            />
        </>
    )
}
