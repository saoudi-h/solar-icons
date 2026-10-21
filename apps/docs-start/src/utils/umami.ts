/**
 * Umami analytics.
 *
 * The loader is copied from the Umami host at build time (`scripts/sync-umami.ts`)
 * and served from our own origin as `/p.js`. That keeps the current
 * behaviour of the Next app, where the script is first-party, without a
 * runtime proxy and without a Worker invocation.
 *
 * The recorder (`r.js`) is not loaded: it is disabled by default.
 */
export const umamiId = import.meta.env.VITE_UMAMI_ID ?? ''
export const umamiUrl = import.meta.env.VITE_UMAMI_URL ?? ''

export const umamiEnabled = Boolean(umamiId && umamiUrl)
