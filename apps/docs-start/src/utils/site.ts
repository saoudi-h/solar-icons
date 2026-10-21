/**
 * Canonical origin of the site. Baked at build time, so the test environment
 * can point its canonical URLs at the production domain while staying
 * `noindex`.
 */
export const siteUrl = (import.meta.env.VITE_SITE_URL ?? 'https://solar-icons.dev').replace(
    /\/+$/,
    ''
)

export const site = {
    name: 'Solar Icons',
    url: siteUrl,
    title: 'Solar Icons',
    description: 'The icon library for React applications and more',
    locale: 'en_US',
} as const

export function absoluteUrl(path = '/') {
    return `${siteUrl}${path.startsWith('/') ? path : `/${path}`}`
}
