# Solar Icons migration — M0–M3

**Status:** M0 and M1 are complete. M3 was validated and ported first, then M2 was completed. The work is local on `feat/docs-tanstack-start`; nothing was pushed or deployed. The Next app under `apps/docs` and its Vercel configuration remain in place.

## M0 — static TanStack Start foundation

- `apps/docs-start` is a sibling app in the pnpm workspace. The root install remains valid with `pnpm install --frozen-lockfile`.
- Wrangler serves the prerendered `dist/client` assets. `wrangler.jsonc` has no Worker entry point, custom domain, or route. This migration does not add request-time Worker code.
- The app uses `VITE_SITE_URL` for canonical URLs (default `https://solar-icons.dev`). `SITE_NOINDEX=1` adds `X-Robots-Tag: noindex, nofollow` and a `Disallow: /` robots file for test builds.
- The local Wrangler asset simulator previously verified slash handling, the `/docs` redirect, 404 behavior, noindex headers, and MIME types. These checks do not establish behavior on the public Workers network; use the checklist below after deploying the test build.

## M1 — `/icons` explorer

The route uses TanStack Router's `validateSearch`, with no `nuqs`. It preserves the existing shared URL parameters:

| Parameter | Accepted values |
| --- | --- |
| `icon` | Icon slug string |
| `view` | `flat`, `grouped` |
| `search` | Free text |
| `style` | `bold`, `bold-duotone`, `broken`, `linear`, `line-duotone`, `outline` |
| `category` | One of the existing catalog categories |
| `origin` | `all`, `extended` |

The generated catalog contains 1,451 records (319,969 bytes uncompressed). The explorer uses 282 ignored, lazy icon modules grouped by category and style. The catalog and icon chunks load in the browser after hydration and as the virtualized grid is scrolled.

### Reproduced network measurement

Both production builds were served locally and measured with the same `apps/docs-start/scripts/measure-network.mjs` harness: headless Chromium at 1440×900, a fresh context, cache disabled through CDP, `networkidle`, then all scrollable regions scrolled to the bottom. The URL explicitly sets `?style=bold-duotone`, which matches both apps' default style. Byte totals are CDP `encodedDataLength`, shown in KiB.

| Build | Initial requests | Initial transfer | Initial JS | After scroll requests | After scroll transfer | After scroll JS | Prefetches |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| Current Next build | 42 | 1,416.5 KiB | 1,274.3 KiB | 42 | 1,416.5 KiB | 1,274.3 KiB | 0 |
| TanStack Start build | 43 | 436.5 KiB | 317.1 KiB | 132 | 1,092.9 KiB | 973.4 KiB | 0 |

The Next comparison build used local placeholder Umami settings: its `/p.js` and `/r.js` requests returned 502 with zero transferred bytes. The TanStack build had no Umami configuration. These figures establish a repeatable local baseline with the same URL state and harness; they do not model live analytics or Cloudflare edge transfer.

## M3 — Fumadocs docs, blog, and search

### Spike and implementation

The first spike used the React migration page to validate MDX rendering with Fumadocs components, static search, and light/dark themes before expanding to the rest of the content. It passed typecheck, build, browser rendering, search, and theme checks; no structural blocker appeared.

- The dependency uses the requested alias exactly: `fumadocs-ui: npm:@fumadocs/base-ui@16.17.7`.
- `source.config.ts` and `src/lib/source.ts` load the existing `apps/docs/content` MDX and blog content through Fumadocs. The `/docs/$` and `/blog/$` routes render those collections with page navigation and the existing custom components.
- Search is exported as a static Orama index at `/api/search`; the Fumadocs dialog reads that index. The root theme provider supports light and dark modes.
- Markdown pages are emitted as `.mdx` files with explicit `text/markdown` headers. `/llms.txt`, `/llms-full.txt`, the sitemap, RSS, and search index are prerendered.
- The production build prerendered 120 pages, including both docs versions, the blog, per-page Markdown, and search data.
- Three pages were compared in both themes at 1280×800: React package docs, React migration docs, and Global Styling. The captures were reviewed side by side; the pages are visually close. A global serif heading rule was removed from docs content to match the current Next pages.

The build emits non-fatal warnings for Vite's native config loader and the `::highlight(fd-search)` CSS selector. Fumadocs also imports its `node:fs/promises` server runtime from a browser-compatible bundle; the static build and all 10 Playwright tests pass, and the tested docs pages and search work in Chromium.

## M2 — homepage and build-time statistics

The homepage is implemented in `apps/docs-start`. GitHub stars and last-week npm downloads for 13 Solar Icons packages are fetched during the build and written to ignored `src/generated/site-stats.json`. The page imports that JSON, so visitors do not call GitHub or npm APIs. The latest successful build fetched 223 stars and 46,064 weekly downloads on 2026-10-22.

GitHub and npm are fetched independently. If GitHub fails, its count falls back to 220. The npm total is all-or-nothing: any failed or malformed package response uses the 15,200 fallback instead of displaying a partial sum. The JSON includes its fetch time and whether each value came from the API or fallback. A build still succeeds when either API fails.

### Daily refresh proposal

A future GitHub Actions schedule can run a daily static build and deploy it to the test Worker. The build-time JSON changes only when a new build is deployed; running the build without deploying does not update the public site. No scheduled workflow or Cloudflare credential was added. The user will deploy the test build. API rate limits and transient failures may therefore leave fallback or older values in the deployed assets until the next successful build and deploy.

## Generated files and tracking

| File or directory | Status | Producer and behavior |
| --- | --- | --- |
| `apps/docs/content/docs/v2/community/changelog.mdx` | Tracked | Generated by the existing Next app's `scripts/generate-changelog.ts`. A Next build can rewrite it when package changelogs are newer; the comparison build's generated diff was restored. The TanStack Start build does not generate or modify this file. |
| `apps/docs-start/src/routeTree.gen.ts` | Tracked | TanStack file-route output. It is committed with the route changes and remains stable across the clean Start build. |
| `apps/docs-start/.source/` | Ignored | Fumadocs-generated collection metadata. |
| `apps/docs-start/public/data/icons.json` | Ignored | Generated icon catalog. |
| `apps/docs-start/src/generated/icon-chunks/` | Ignored | Generated lazy icon modules (282 chunks). |
| `apps/docs-start/src/generated/icon-chunk-loaders.ts` | Ignored | Generated icon chunk loader. |
| `apps/docs-start/src/generated/site-stats.json` | Ignored | Build-time GitHub/npm values. |
| `apps/docs-start/public/saoudi-h.png` | Ignored | Fetched GitHub avatar used by the blog. |
| `apps/docs-start/dist/` and public `_headers`, `_redirects`, `robots.txt` | Ignored | Static build output and generated Cloudflare configuration. |

After committing the route tree, a clean `@solar-icons/docs-start` build must leave `git status` clean. The Next baseline build is separate and has the tracked changelog side effect described above.

## Verification

| Command or check | Result |
| --- | --- |
| `pnpm install --frozen-lockfile` | Passed; all 26 workspace projects, lockfile already current. |
| `SITE_NOINDEX=1 VITE_SITE_URL=https://solar-icons.dev pnpm --filter @solar-icons/docs-start build` | Passed; 120 pages prerendered. |
| `pnpm --filter @solar-icons/docs-start typecheck` | Passed. |
| `pnpm --filter @solar-icons/docs-start test` | Passed; 10 Playwright tests. |
| Next production build for the network baseline | Passed with local non-secret placeholders; generated `changelog.mdx`, whose diff was restored. |
| `pnpm --filter @solar-icons/docs-start exec wrangler deploy --dry-run` | Passed previously; dry-run only. No Worker deployment was made. |

## Public `workers.dev` test checklist

After deploying the noindex build, substitute its public test URL for `TEST_URL` and verify:

| Check | Expected result |
| --- | --- |
| `GET /` and a docs page | `X-Robots-Tag: noindex, nofollow`; canonical points to `https://solar-icons.dev/...`. |
| `GET /robots.txt` | `Disallow: /`. |
| `GET /docs` | 307 redirect to `/docs/v2`. |
| `GET /docs/v2/` | Trailing slash is dropped and the final URL is `/docs/v2`. |
| `GET /docs/v2/packages/react.mdx` | 200, `text/markdown`, and non-empty React Markdown. |
| `GET /api/search` | 200 JSON and a search index containing the docs pages. |
| `GET /llms.txt`, `/llms-full.txt` | 200 `text/plain` and non-empty content. |
| `GET /sitemap.xml`, `/blog/rss.xml` | 200 XML and RSS MIME types, respectively. |
| CSS, JavaScript, WOFF2, manifest | Correct MIME types and successful responses. |
| A nonexistent path | 404 status with the generated not-found page. |

No token is needed for this handoff; the deployment and public URL check are left to the user.

## Deferred work

M4 remains unimplemented. Before building its feedback Worker, inspect several existing GitHub Discussions from the `Docs Feedback` category read-only. Feedback titles use `Feedback for <URL>`; compare the parsed absolute URL and normalize equivalent URLs across hosts before creating anything, so an existing discussion is reused and duplicates are never created. M5 production cutover and Cloudflare invocation measurements are also out of scope.

## References

- [Fumadocs TanStack Start setup](https://www.fumadocs.dev/docs/manual-installation/tanstack-start)
- [Fumadocs root provider and themes](https://www.fumadocs.dev/docs/ui/layouts/root-provider)
- [Fumadocs search UI](https://www.fumadocs.dev/docs/ui/search)
- [Fumadocs Orama static search](https://www.fumadocs.dev/docs/headless/search/orama)
- [TanStack Start static prerendering](https://tanstack.com/start/latest/docs/framework/react/guide/static-prerendering)
- [Cloudflare Workers static assets](https://developers.cloudflare.com/workers/static-assets/)
