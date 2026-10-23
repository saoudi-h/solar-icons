import { OptimizedImage } from '~/components/ui/image'

type PostCoverPost = {
    data: {
        image?: string
    }
}

export function PostCover({
    post,
    sizes,
    priority = false,
    className,
}: {
    post: PostCoverPost
    sizes: string
    priority?: boolean
    className?: string
}) {
    const image = post.data.image ?? '/blog-fallback-image.webp'

    return (
        <div className={`relative overflow-hidden bg-card ${className ?? ''}`}>
            <OptimizedImage
                src={image}
                alt=""
                fill
                sizes={sizes}
                priority={priority}
                className="object-cover"
            />
        </div>
    )
}
