'use client'

import {
    CheckCircle,
    CloseCircle,
    InfoCircle,
    ShieldCross,
    ShieldWarning,
} from '@solar-icons/react/ssr'
import { useTheme } from 'next-themes'
import type { ToasterProps } from 'sonner'
import { Toaster as Sonner } from 'sonner'

const Toaster = ({ ...props }: ToasterProps) => {
    const { theme = 'system' } = useTheme()

    return (
        <Sonner
            theme={theme as ToasterProps['theme']}
            className=""
            icons={{
                success: <CheckCircle size={20} weight="Linear" color={''} />,
                error: <ShieldCross size={20} weight="Linear" color={''} />,
                warning: <ShieldWarning size={20} weight="Linear" color={''} />,
                info: <InfoCircle size={20} weight="Linear" color={''} />,
                close: <CloseCircle size={20} weight="Linear" color={''} />,
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
