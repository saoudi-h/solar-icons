'use client'
import { CheckCircleIcon } from '@solar-icons/react/linear/check-circle'
import { CopyIcon } from '@solar-icons/react/linear/copy'
import { useCopyButton } from 'fumadocs-ui/utils/use-copy-button'
import React from 'react'
import type { ButtonProps } from './button'
import { Button } from './button'

interface CopyButtonProps extends ButtonProps {
    onCopy: () => void
}

export const CopyButton = React.forwardRef<HTMLButtonElement, CopyButtonProps>(
    ({ onCopy, children, ...props }: CopyButtonProps, ref) => {
        const [checked, onClick] = useCopyButton(onCopy)

        return (
            <Button ref={ref} {...props} onClick={onClick}>
                {children}
                {checked ? <CheckCircleIcon isolated /> : <CopyIcon isolated />}
            </Button>
        )
    }
)

CopyButton.displayName = 'CopyButton'
