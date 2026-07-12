'use client'

import { CheckCircleIcon } from '@solar-icons/react/linear/check-circle'
import { CloseCircleIcon } from '@solar-icons/react/linear/close-circle'
import { InfoCircleIcon } from '@solar-icons/react/linear/info-circle'
import { ShieldCrossIcon } from '@solar-icons/react/linear/shield-cross'
import { ShieldWarningIcon } from '@solar-icons/react/linear/shield-warning'
import { useTheme } from 'next-themes'
import type { ToasterProps } from 'sonner'
import { Toaster as Sonner } from 'sonner'

const Toaster = ({ ...props }: ToasterProps) => {
    const { theme } = useTheme()

    return (
        <Sonner
            theme={(theme as ToasterProps['theme']) || 'system'}
            className=""
            icons={{
                success: <CheckCircleIcon size={20} isolated />,
                error: <ShieldCrossIcon size={20} isolated />,
                warning: <ShieldWarningIcon size={20} isolated />,
                info: <InfoCircleIcon size={20} isolated />,
                close: <CloseCircleIcon size={20} isolated />,
            }}
            style={
                {
                    '--normal-bg': 'hsl(var(--popover))',
                    '--normal-text': 'hsl(var(--popover-foreground))',
                    '--normal-border': 'hsl(var(--border))',
                } as React.CSSProperties
            }
            {...props}
        />
    )
}

export { Toaster }
