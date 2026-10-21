'use client'

import { useEffect, useState } from 'react'
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

const bundledIcons = icons as Record<string, BundledIcon>

/**
 * Renders an Iconify icon from the bundle generated at build time
 * (`scripts/generate-icons.ts`). The icon data is inlined in the
 * JavaScript payload, so nothing is ever requested from the Iconify API
 * at runtime.
 *
 * In development, an icon that is not in the bundle yet is fetched from
 * the Iconify API so that a new name works without regenerating
 * anything. Production never hits the network: `pnpm check:icons` fails
 * the build when a name is missing from the bundle.
 */
export function Icon({ icon, className, width, height, ...props }: IconProps) {
    const bundled = typeof icon === 'string' ? bundledIcons[icon] : icon
    const [fetched, setFetched] = useState<BundledIcon | null>(null)

    useEffect(() => {
        if (bundled || typeof icon !== 'string' || process.env.NODE_ENV === 'production') return

        const separator = icon.indexOf(':')
        if (separator === -1) return

        const collection = icon.slice(0, separator)
        const name = icon.slice(separator + 1)
        const controller = new AbortController()

        fetch(`https://api.iconify.design/${collection}.json?icons=${name}`, {
            signal: controller.signal,
        })
            .then(response => (response.ok ? response.json() : null))
            .then(payload => {
                const data = payload?.icons?.[name]
                if (!data) return
                setFetched({
                    body: data.body,
                    width: data.width ?? payload.width ?? 16,
                    height: data.height ?? payload.height ?? 16,
                    left: data.left ?? 0,
                    top: data.top ?? 0,
                })
            })
            .catch(() => undefined)

        return () => controller.abort()
    }, [bundled, icon])

    const data = bundled ?? fetched
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
