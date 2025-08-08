'use client'
import { cn } from '@/lib/utils'
import { motion, type HTMLMotionProps } from 'framer-motion'
import Link from 'next/link'
import React from 'react'
import type { ButtonProps } from './button'
import { Button } from './button'

const MotionButton = motion(Button)

interface BaseProps {
    Icon?: React.ReactNode
    label: string
    className?: string
    hoverRotation?: number
    hoverScale?: number
    rounded?: 'default' | 'full' | 'none'
}

interface LinkProps extends BaseProps {
    href: string
    onClick?: never
}

interface ButtonOnlyProps extends BaseProps {
    href?: never
    onClick: () => void
}

export type SuperButtonProps = (LinkProps | ButtonOnlyProps) &
    Omit<ButtonProps, 'asChild' | 'children'> &
    Omit<HTMLMotionProps<'button'>, 'onClick' | 'className' | 'children'>

const SuperButton = React.forwardRef<HTMLButtonElement, SuperButtonProps>(
    (
        {
            href,
            onClick,
            Icon,
            label,
            className,
            hoverRotation = 6,
            hoverScale = 1.1,
            rounded = 'full',
            variant = 'default',
            size = 'xl',
            colors = 'default',
            initial,
            animate,
            exit,
            whileHover,
            whileTap,
            transition,
            ...buttonProps
        },
        ref
    ) => {
        const defaultClasses = cn(
            `
              px-4 transition-none
              hover:shadow-md
            `,
            {
                'rounded-full': rounded === 'full',
                'rounded-md': rounded === 'default',
                'rounded-none': rounded === 'none',
            },
            className
        )

        const defaultMotionProps = {
            initial: initial || { scale: 1 },
            whileHover: whileHover || {
                rotate: href ? hoverRotation : -hoverRotation,
                scale: hoverScale,
                transition: { type: 'spring', stiffness: 500, damping: 10 },
            },
            whileTap: whileTap || { scale: 0.95 },
            transition: transition || { type: 'spring', stiffness: 500, damping: 20 },
            ...(animate && { animate }),
            ...(exit && { exit }),
        }

        const buttonContent = (
            <>
                {Icon && Icon}
                {label}
            </>
        )

        if (href) {
            return (
                <MotionButton
                    ref={ref}
                    asChild
                    variant={variant}
                    size={size}
                    colors={colors}
                    className={defaultClasses}
                    {...defaultMotionProps}
                    {...buttonProps}>
                    <Link
                        href={href}
                        className={`
                      flex flex-row items-center gap-4
                    `}>
                        {buttonContent}
                    </Link>
                </MotionButton>
            )
        }

        return (
            <MotionButton
                ref={ref}
                variant={variant}
                size={size}
                colors={colors}
                className={cn(defaultClasses, 'flex flex-row items-center gap-4')}
                onClick={onClick}
                {...defaultMotionProps}
                {...buttonProps}>
                {buttonContent}
            </MotionButton>
        )
    }
)

SuperButton.displayName = 'SuperButton'

export { SuperButton }
