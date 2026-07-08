import { Button } from '@/components/ui/button'
import { ArrowRightUpIcon } from '@solar-icons/react/linear/arrow-right-up'
import Link from 'next/link'
import type { FC } from 'react'
import { useSelectedIcon, useStyleURL } from '../context'
import { CodeBlockTemplate } from './CodeBlockTemplate'

export const VueCode: FC = () => {
    const selectedIcon = useSelectedIcon()
    const [weight] = useStyleURL()
    const bare = selectedIcon?.Icon.displayName?.replace(/Icon$/, '') ?? 'Icon'

    return (
        <>
            <Button variant="link" size="default" asChild>
                <Link href="/docs/packages/vue">
                    Get started with Vue <ArrowRightUpIcon size={16} />
                </Link>
            </Button>
            <CodeBlockTemplate
                lang="vue"
                code={`<script setup>
        import { ${bare} } from '@solar-icons/vue/${weight}'
</script>`}
            />
            <CodeBlockTemplate
                lang="vue"
                code={`<template>
    <${bare} size="24" color="currentColor" />
</template>`}
            />
        </>
    )
}
