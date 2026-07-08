'use client'

import type { ButtonProps } from '@/components/ui/button'
import { Button } from '@/components/ui/button'
import { cn } from '@/lib/utils'
import { CheckCircleIcon, CopyIcon } from '@solar-icons/react/dynamic'
import * as React from 'react'

interface CopyButtonProps extends ButtonProps {
    value: string
}

export async function copyToClipboard(value: string) {
    navigator.clipboard.writeText(value)
}

export function CopyButton({ value, className, variant = 'default', ...props }: CopyButtonProps) {
    const [hasCopied, setHasCopied] = React.useState(false)

    React.useEffect(() => {
        setTimeout(() => {
            setHasCopied(false)
        }, 2000)
    }, [hasCopied])

    return (
        <Button
            size="icon"
            colors="accent"
            variant={variant}
            className={cn('', className)}
            onClick={() => {
                copyToClipboard(value)
                setHasCopied(true)
            }}
            {...props}>
            <span className="sr-only">Copy</span>
            {hasCopied ? (
                <CheckCircleIcon weight="Bold" isolated />
            ) : (
                <CopyIcon weight="Bold" isolated />
            )}
        </Button>
    )
}
