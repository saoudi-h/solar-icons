import type { Metadata } from 'next/types';

export function createMetadata(override: Metadata): Metadata {
  return {
    ...override,
    openGraph: {
      title: override.title ?? undefined,
      description: override.description ?? undefined,
      url: 'https://solar-icons.vercel.app',
      images: '/banner.png',
      siteName: 'Solar Icons',
      ...override.openGraph,
    },
    twitter: {
      card: 'summary_large_image',
      creator: '@hakim__saoudi',
      title: override.title ?? undefined,
      description: override.description ?? undefined,
      images: '/banner.png',
      ...override.twitter,
    },
  };
}


/**
 * Canonical site URL - Always points to the primary production domain
 * (or localhost in development). Should be used for all public-facing URLs.
 * 
 * @example 'https://solar-icons.vercel.app' in production
 * @example 'http://localhost:3000' in development
 */
export const siteUrl = new URL(process.env.NEXT_PUBLIC_SITE_URL || 'http://localhost:3000');

/**
 * Active deployment URL - Reflects the current Vercel deployment URL
 * (including preview branches). Useful for internal routing.
 * 
 * @note In production, differs from siteUrl when using custom domains
 * @example 'https://solar-icons-git-feature.vercel.app' for preview deployments
 * @example 'https://solar-icons.vercel.app' for production (if matching siteUrl)
 */
export const baseUrl = !process.env.VERCEL_URL
  ? siteUrl
  : new URL(`https://${process.env.VERCEL_URL}`);


