/**
 * Umami analytics.
 *
 * The loader is copied from the Umami host at build time (`scripts/sync-umami.ts`)
 * and served from our own origin as `/p.js`. That keeps the current
 * behaviour of the Next app, where the script is first-party, without a
 * runtime proxy and without a Worker invocation.
 *
 * The session replay (`r.js`) is loaded the same way, with the sampling and
 * the masking of the Next app (15 % of the sessions, moderate masking).
 */
export const umamiId = import.meta.env.VITE_UMAMI_ID ?? ''
export const umamiUrl = import.meta.env.VITE_UMAMI_URL ?? ''

export const umamiEnabled = Boolean(umamiId && umamiUrl)
