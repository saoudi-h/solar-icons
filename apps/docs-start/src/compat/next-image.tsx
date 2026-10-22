import type { ComponentProps } from 'react'

type ImageSource = string | { src: string }

type NextImageProps = Omit<ComponentProps<'img'>, 'src'> & {
    src: ImageSource
    priority?: boolean
    fill?: boolean
    quality?: number
    placeholder?: 'blur' | 'empty'
    blurDataURL?: string
    sizes?: string
}

export default function NextImage({
    src,
    priority,
    fill,
    quality: _quality,
    placeholder: _placeholder,
    blurDataURL: _blurDataURL,
    sizes,
    style,
    ...props
}: NextImageProps) {
    const imageStyle = fill
        ? { position: 'absolute' as const, inset: 0, width: '100%', height: '100%', ...style }
        : style

    return (
        <img
            {...props}
            src={typeof src === 'string' ? src : src.src}
            sizes={sizes}
            style={imageStyle}
            data-nimg={fill ? 'fill' : '1'}
            loading={priority ? 'eager' : 'lazy'}
            decoding="async"
        />
    )
}
