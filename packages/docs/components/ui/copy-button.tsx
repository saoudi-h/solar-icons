'use client'

import * as React from 'react'
import { CheckCircle, Copy } from '@Solar-icons/react/ssr'
import { cn } from '@/lib/utils'
import { Button, ButtonProps } from '@/components/ui/button'

interface CopyButtonProps extends ButtonProps {
    value: string
    src?: string
}

export async function copyToClipboard(value: string) {
    navigator.clipboard.writeText(value)
}

export function CopyButton({
    value,
    className,
    src,
    variant = 'default',
    ...props
}: CopyButtonProps) {
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
            className={cn(
                '',
                className
            )}
            onClick={() => {
                copyToClipboard(
                    value
                )
                setHasCopied(true)
            }}
            {...props}>
            <span className="sr-only">Copy</span>
            {hasCopied ? <CheckCircle weight="Bold" size={24} /> : <Copy size={24} weight="Bold" />}
        </Button>
    )
}