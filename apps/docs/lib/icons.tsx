'use client'

import type { SVGProps } from 'react'

import icons from '@/generated/icons.json'

export interface BundledIcon {
    body: string
    width: number
    height: number
    left: number
    top: number
}

export type IconSource = string | BundledIcon

export interface IconProps extends Omit<SVGProps<SVGSVGElement>, 'children'> {
    icon: IconSource
}

/**
 * Renders an Iconify icon from the bundle generated at build time
 * (`scripts/generate-icons.ts`). The icon data is inlined in the
 * JavaScript payload, so nothing is ever requested from the Iconify API
 * at runtime.
 */
export function Icon({ icon, className, width, height, ...props }: IconProps) {
    const data = typeof icon === 'string' ? (icons as Record<string, BundledIcon>)[icon] : icon
    if (!data) return null

    const collection = typeof icon === 'string' ? icon.slice(0, icon.indexOf(':')) : undefined

    return (
        <svg
            xmlns="http://www.w3.org/2000/svg"
            aria-hidden="true"
            role="img"
            className={['iconify', collection ? `iconify--${collection}` : null, className]
                .filter(Boolean)
                .join(' ')}
            width={width ?? '1em'}
            height={height ?? '1em'}
            viewBox={`${data.left} ${data.top} ${data.width} ${data.height}`}
            dangerouslySetInnerHTML={{ __html: data.body }}
            {...props}
        />
    )
}
