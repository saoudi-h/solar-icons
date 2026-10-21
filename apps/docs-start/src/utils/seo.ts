import { absoluteUrl, site } from './site'

export interface SeoOptions {
    title: string
    description: string
    path?: string
    image?: string
    type?: 'website' | 'article'
    noIndex?: boolean
}

/**
 * Builds the meta/canonical tags for a route. TanStack Router's `head` API
 * expects plain descriptors, so the result is a flat list of meta objects
 * plus the canonical link.
 */
export function seo({ title, description, path = '/', image, type = 'website', noIndex }: SeoOptions) {
    const url = absoluteUrl(path)
    const fullTitle = title === site.title ? title : `${title} | ${site.name}`
    const imageUrl = image ? absoluteUrl(image) : undefined

    return {
        meta: [
            { title: fullTitle },
            { name: 'description', content: description },
            { property: 'og:type', content: type },
            { property: 'og:site_name', content: site.name },
            { property: 'og:title', content: fullTitle },
            { property: 'og:description', content: description },
            { property: 'og:url', content: url },
            { property: 'og:locale', content: site.locale },
            ...(imageUrl
                ? [
                      { property: 'og:image', content: imageUrl },
                      { name: 'twitter:card', content: 'summary_large_image' },
                  ]
                : [{ name: 'twitter:card', content: 'summary' }]),
            { name: 'twitter:title', content: fullTitle },
            { name: 'twitter:description', content: description },
            ...(imageUrl ? [{ name: 'twitter:image', content: imageUrl }] : []),
            ...(noIndex ? [{ name: 'robots', content: 'noindex, nofollow' }] : []),
        ],
        links: [{ rel: 'canonical', href: url }],
    }
}
