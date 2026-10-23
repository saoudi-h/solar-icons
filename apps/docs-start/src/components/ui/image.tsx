import type { ComponentProps } from 'react'

import { getWidths, optimizedImageUrl } from '~/utils/image-optimization'

type ImageSource = string | { src: string }

type OptimizedImageProps = Omit<ComponentProps<'img'>, 'src'> & {
    src: ImageSource
    priority?: boolean
    fill?: boolean
    sizes?: string
}

const fillStyle = {
    position: 'absolute' as const,
    height: '100%',
    width: '100%',
    left: 0,
    top: 0,
    right: 0,
    bottom: 0,
    color: 'transparent',
}

export function OptimizedImage({
    src,
    priority,
    fill,
    sizes,
    width,
    height: _height,
    style,
    ...props
}: OptimizedImageProps) {
    const source = typeof src === 'string' ? src : src.src
    const { widths, kind } = getWidths(fill ? undefined : (width as number | undefined), sizes)
    const urls = widths.map(candidate => optimizedImageUrl(source, candidate))
    const optimized = urls.every(url => url !== null)

    const srcSet = optimized
        ? widths
              .map(
                  (candidate, index) =>
                      `${urls[index]} ${kind === 'w' ? candidate : index + 1}${kind}`
              )
              .join(', ')
        : undefined
    const resolvedSrc = optimized ? urls[urls.length - 1]! : source
    const resolvedSizes = sizes ?? (kind === 'w' ? '100vw' : undefined)

    const imageStyle = fill ? { ...fillStyle, ...style } : { color: 'transparent', ...style }

    return (
        <img
            {...props}
            src={resolvedSrc}
            srcSet={srcSet}
            sizes={resolvedSizes}
            style={imageStyle}
            data-nimg={fill ? 'fill' : '1'}
            loading={priority ? 'eager' : 'lazy'}
            decoding="async"
        />
    )
}
