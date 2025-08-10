import { Button } from '@/components/ui/button'
import { ArrowRightUp, useSolar } from '@solar-icons/react'
import { useAtom } from 'jotai'
import Link from 'next/link'
import type { FC } from 'react'
import { selectedIconAtom } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const VueCode: FC = () => {
    const { value } = useSolar()
    const [selectedIcon] = useAtom(selectedIconAtom)

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/packages/vue">
                    Get started with Vue <ArrowRightUp size={16} weight="Linear" color={''} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="vue"
                code={`<script setup>
        import { ${selectedIcon?.Icon.displayName} } from '@solar-icons/vue'
</script>`}
            />
            <CodeBlockTemplate
                lang="vue"
                code={
`<template>
    <${selectedIcon?.Icon.displayName} weight="${value.weight}" size="${value.size}" color="${value.color}" />
</template>`}
            />
        </>
    )
}
