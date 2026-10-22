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
            <img
                src={image}
                alt=""
                sizes={sizes}
                loading={priority ? 'eager' : 'lazy'}
                fetchPriority={priority ? 'high' : 'auto'}
                className="absolute inset-0 size-full object-cover"
            />
        </div>
    )
}
