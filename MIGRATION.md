# Solar Icons migration — M0–M3

**Status:** M0 to M3 are complete. The work is local on `feat/docs-tanstack-start`; nothing was pushed or deployed. The Next app under `apps/docs` and its Vercel configuration remain in place.

The TanStack Start app renders the same pages as the current Next app. A pixel comparison of 17 routes in the light and the dark theme finds 30 of the 34 captures byte-identical. The four remaining captures differ by a single colour step (1/255) on the antialiased edge of one SVG icon; the markup, the computed styles and the DOM of those icons are identical in both apps, so the difference comes from Chromium's gradient dithering and not from the app.

## M0 — static TanStack Start foundation

- `apps/docs-start` is a sibling app in the pnpm workspace. The root install remains valid with `pnpm install --frozen-lockfile`.
- Wrangler serves the prerendered `dist/client` assets. `wrangler.jsonc` has no Worker entry point, custom domain, or route. This migration does not add request-time Worker code.
- The app uses `VITE_SITE_URL` for canonical URLs (default `https://solar-icons.dev`). `SITE_NOINDEX=1` adds `X-Robots-Tag: noindex, nofollow` and a `Disallow: /` robots file for test builds.
- The local Wrangler asset simulator previously verified slash handling, the `/docs` redirect, 404 behavior, noindex headers, and MIME types. These checks do not establish behavior on the public Workers network; use the checklist below after deploying the test build.

## M1 — `/icons` explorer

The route uses TanStack Router's `validateSearch` and a small `nuqs` compatibility adapter for the original explorer component. The adapter keeps the existing search state in the URL. The route preserves the existing shared URL parameters:

| Parameter  | Accepted values                                                       |
| ---------- | --------------------------------------------------------------------- |
| `icon`     | Icon slug string                                                      |
| `view`     | `flat`, `grouped`                                                     |
| `search`   | Free text                                                             |
| `style`    | `bold`, `bold-duotone`, `broken`, `linear`, `line-duotone`, `outline` |
| `category` | One of the existing catalog categories                                |
| `origin`   | `all`, `extended`                                                     |

The generated catalog contains 1,451 records (319,969 bytes uncompressed). The explorer uses 282 ignored, lazy icon modules grouped by category and style. The catalog and icon chunks load in the browser after hydration and as the virtualized grid is scrolled.

The explorer is the shared component of the Next app, so both apps write the same URL: a category link hydrates into `view=grouped`, the default view is removed from the URL, and the filters are restored by the browser history.

## M2 — homepage and build-time statistics

The homepage is implemented in `apps/docs-start`. GitHub stars and last-week npm downloads for 13 Solar Icons packages are fetched during the build and written to ignored `src/generated/site-stats.json`. The page imports that JSON, so visitors do not call GitHub or npm APIs. The latest successful build fetched 224 stars and 46,064 weekly downloads on 2026-10-22.

GitHub and npm are fetched independently. If GitHub fails, its count falls back to 220. The npm total is all-or-nothing: any failed or malformed package response uses the 15,200 fallback instead of displaying a partial sum. The JSON includes its fetch time and whether each value came from the API or fallback. A build still succeeds when either API fails.

The Next app reads the same counters live in the community section, with 220 as its fallback. The header of both apps shows the value baked into the build, so the first screen is identical. Below the fold the community card can differ while the GitHub API is unreachable: the Next app falls back to 220, the static build keeps the last successful count.

### Daily refresh proposal

A future GitHub Actions schedule can run a daily static build and deploy it to the test Worker. The build-time JSON changes only when a new build is deployed; running the build without deploying does not update the public site. No scheduled workflow or Cloudflare credential was added. The user will deploy the test build. API rate limits and transient failures may therefore leave fallback or older values in the deployed assets until the next successful build and deploy.

## M3 — Fumadocs docs, blog, and search

### Spike and implementation

The first spike used the React migration page to validate MDX rendering with Fumadocs components, static search, and light/dark themes before expanding to the rest of the content. It passed typecheck, build, browser rendering, search, and theme checks; no structural blocker appeared.

- The dependency uses the requested alias exactly: `fumadocs-ui: npm:@fumadocs/base-ui@16.17.7`.
- `source.config.ts` and `src/lib/source.ts` load the existing `apps/docs/content` MDX and blog content through Fumadocs. The `/docs/$` and `/blog/$` routes render those collections with page navigation and the existing custom components.
- Search is exported as a static Orama index at `/api/search`; the Fumadocs dialog reads that index. The root theme provider supports light and dark modes.
- Markdown pages are emitted as `.mdx` files with explicit `text/markdown` headers. `/llms.txt`, `/llms-full.txt`, the sitemap, RSS, and search index are prerendered.
- The production build prerendered 120 pages, including both docs versions, the blog, per-page Markdown, and search data.
- The TanStack routes render the existing docs and blog MDX source and reuse the Next site's shared navigation, footer, homepage sections, icon explorer, and blog cards. Route and URL adapters handle framework navigation and query state.
- Start uses the same Host Grotesk, Aleo, and JetBrains Mono font files and font-face metrics as the current Next build. The WOFF2 files are checked in so a clean Start build does not depend on the ignored `.next` output.

### Parity with the current Next build

Four differences showed up in the pixel comparison and were fixed:

| Difference                                                                                                                                                            | Fix                                                                                                                                                                                                                                                                                                                        |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| The blog cover, the Figma thumbnail, the explorer screenshots and the author avatar were served unoptimized, so the browser scaled different bytes than the Next app. | `scripts/optimize-images.ts` reproduces the `/_next/image` optimizer during the build: the same resize, the same webp quality, the same width candidates as Next's `getWidths`. The output was compared byte for byte with the running Next app: all 16 variants are identical.                                            |
| The docs pages had no "How is this guide?" widget and no "Last updated on" line.                                                                                      | The shared feedback widget is rendered again, and the macro collection enables `lastModified` so the date read from the page body is shown.                                                                                                                                                                                |
| The active marker of the table of contents was missing on the first paint.                                                                                            | Fumadocs publishes the state of the intersection observer before the marker is mounted, so the marker misses it and stays hidden until the first scroll. `src/components/docs/toc-active-marker.tsx` applies the same state to the marker as soon as it exists.                                                            |
| The changelog page rendered a different content than the Next build.                                                                                                  | The tracked `changelog.mdx` was older than the package changelogs and the Next build regenerates it on every build. The file is now committed with the exact markup the generator writes, and `oxfmt` ignores it because reformatting it changes how MDX parses the inline links. A clean Next build no longer changes it. |

The feedback widget renders like the Next app, but the static build has no server to store the feedback. Submitting throws until the feedback Worker of M4 exists.

### Pixel comparison

`apps/docs-start/scripts/compare-visuals.mjs` compares the two production builds. It serves the prerendered `dist/client` with gzip, opens a fresh context per capture, and takes the screenshot at 1280×800 with a device pixel ratio of 1, `prefers-reduced-motion: reduce`, `networkidle`, `document.fonts.ready`, and a settle delay of 1.2 s. Reduced motion is required because the homepage rotates its hero continuously, which no two captures can share.

Every route is captured twice in the Next app to measure the noise floor of the harness, then compared with the Start capture. The channel tolerance is 1, so a difference of one colour step is reported separately from a real difference.

| Result                                 | Captures |
| -------------------------------------- | -------: |
| Identical                              | 30 of 34 |
| Differing by at most 1/255 per channel |        4 |
| Differing by more                      |        0 |

The four captures are the docs pages that show the SolidJS logo in the sidebar (81 pixels) and the explorer grid (13 and 25 pixels). The SVG markup of those icons is byte-identical in both apps and the computed styles match, so the residual comes from the dithering Chromium applies to the gradients of the icon.

## Client-side navigation

pnpm installs the Fumadocs packages twice, once for each app, because their optional peers differ. The two copies hold two React contexts: the shared components of the Next app did not see the provider of the Start app, so every link fell back to a plain anchor and each navigation was a full page load. `resolve.dedupe` in the Vite config points every import to the same copy, and the links are handled by the router again.

With the same measurement in both apps — a hover, then a click on the header link to the documentation, then the first heading of the target page:

| Build                | URL changed | Heading visible | Requests after the click |
| -------------------- | ----------: | --------------: | -----------------------: |
| Current Next build   |       80 ms |          130 ms |                        7 |
| TanStack Start build |       43 ms |           51 ms |                        8 |

The Start build prefetches the route on hover like the Next build does, and it is now faster to navigate. The pages it loads on a fresh visit are the prerendered HTML, so the content is painted before the JavaScript runs and the hydration does not replace it.

## Network measurement

Both production builds were served locally and measured with the same `apps/docs-start/scripts/measure-network.mjs` harness: headless Chromium at 1440×900, a fresh context, cache disabled through CDP, `networkidle`, then all scrollable regions scrolled to the bottom. The URL explicitly sets `?style=bold-duotone`, which matches both apps' default style. Byte totals are CDP `encodedDataLength`, shown in KiB. The Next app compresses its responses, so the static server of the harness compresses with gzip as well.

| Build and path                                    | Requests |    Transfer |  JavaScript |
| ------------------------------------------------- | -------: | ----------: | ----------: |
| Current Next build, `/icons?style=bold-duotone`   |       42 | 1,416.4 KiB | 1,274.3 KiB |
| TanStack Start build, `/icons?style=bold-duotone` |       81 | 1,345.1 KiB | 1,202.3 KiB |
| Current Next build, `/`                           |       60 | 1,018.5 KiB |   645.2 KiB |
| TanStack Start build, `/`                         |       93 |   992.2 KiB |   637.7 KiB |

The Start build sends fewer bytes but more requests. Rolldown emits one chunk per module, and the Fumadocs packages ship one file per component, so the build groups them in a single `fumadocs` chunk. What is left is the icon package: every icon of the site chrome is a module of its own and stays a request of its own, while the Next build folds them into the chunk of the route. Grouping them as well was tried and reverted: it pulls the lazily imported icons of the hero into the initial load and adds more than a megabyte to the homepage.

These figures establish a repeatable local baseline with the same URL state and harness; they do not model live analytics or Cloudflare edge transfer.

The Next comparison build used local placeholder Umami settings: its `/p.js` and `/r.js` requests returned 502 with zero transferred bytes. The TanStack build had no Umami configuration.

## Generated files and tracking

| File or directory                                                                                       | Status  | Producer and behavior                                                                                                                                                                                                                                                                                                                          |
| ------------------------------------------------------------------------------------------------------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `apps/docs/content/docs/v2/community/changelog.mdx`                                                     | Tracked | Generated by the existing Next app's `scripts/generate-changelog.ts`. The file is committed with the exact markup the generator writes, so a Next build regenerates the same bytes and leaves the tree clean. `oxfmt` ignores it, because reformatting the inline links changes how MDX parses them. The TanStack Start build never writes it. |
| `apps/docs-start/src/routeTree.gen.ts`                                                                  | Tracked | TanStack file-route output. It is committed with the route changes and remains stable across the clean Start build. `oxfmt` ignores it, as the generated file requires.                                                                                                                                                                        |
| `apps/docs-start/.source/`                                                                              | Ignored | Fumadocs-generated collection metadata.                                                                                                                                                                                                                                                                                                        |
| `apps/docs-start/public/data/icons.json`                                                                | Ignored | Generated icon catalog.                                                                                                                                                                                                                                                                                                                        |
| `apps/docs-start/public/optimized/`                                                                     | Ignored | The images of `next/image`, resized and re-encoded like the Next optimizer does.                                                                                                                                                                                                                                                               |
| `apps/docs-start/src/generated/icon-chunks/`                                                            | Ignored | Generated lazy icon modules (282 chunks).                                                                                                                                                                                                                                                                                                      |
| `apps/docs-start/src/generated/icon-chunk-loaders.ts`                                                   | Ignored | Generated icon chunk loader.                                                                                                                                                                                                                                                                                                                   |
| `apps/docs-start/src/generated/site-stats.json`                                                         | Ignored | Build-time GitHub/npm values.                                                                                                                                                                                                                                                                                                                  |
| `apps/docs-start/public/saoudi-h.png`                                                                   | Ignored | Fetched GitHub avatar used by the blog.                                                                                                                                                                                                                                                                                                        |
| `apps/docs-start/public/fonts/*.woff2`                                                                  | Tracked | Exact font files copied from Next's current generated font output; kept as stable inputs for clean Start builds.                                                                                                                                                                                                                               |
| `apps/docs-start/public/banner.png`, `banner.wep`, blog images, Figma thumbnail, explorer images, `og/` | Ignored | Build-time copies of the tracked originals in `apps/docs/public/`, produced by `sync:site-assets`.                                                                                                                                                                                                                                             |
| `apps/docs-start/dist/` and public `_headers`, `_redirects`, `robots.txt`                               | Ignored | Static build output and generated Cloudflare configuration.                                                                                                                                                                                                                                                                                    |

After committing the route tree, a clean `@solar-icons/docs-start` build leaves tracked files unchanged. The Next build no longer changes the tracked changelog either.

## Verification

| Command or check                                                                                   | Result                                                                         |
| -------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------ |
| `pnpm install --frozen-lockfile`                                                                   | Passed; all 26 workspace projects, lockfile already current.                   |
| `SITE_NOINDEX=1 VITE_SITE_URL=https://solar-icons.dev pnpm --filter @solar-icons/docs-start build` | Passed; 120 pages prerendered.                                                 |
| `pnpm --filter @solar-icons/docs-start typecheck`                                                  | Passed.                                                                        |
| `pnpm --filter @solar-icons/docs-start test`                                                       | Passed; 10 Playwright tests.                                                   |
| `pnpm --filter @solar-icons/docs-start lint`                                                       | Passed.                                                                        |
| `pnpm --filter @solar-icons/docs-start format`                                                     | Passed.                                                                        |
| `node apps/docs-start/scripts/compare-visuals.mjs --next-url … --start-url …`                      | 30 of 34 captures identical, 4 within one colour step, none above.             |
| Next production build for the network baseline                                                     | Passed with local non-secret placeholders; the tracked changelog is unchanged. |
| `pnpm --filter @solar-icons/docs-start exec wrangler deploy --dry-run`                             | Passed previously; dry-run only. No Worker deployment was made.                |

## Public `workers.dev` test checklist

After deploying the noindex build, substitute its public test URL for `TEST_URL` and verify:

| Check                                         | Expected result                                                                                |
| --------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `GET /` and a docs page                       | `X-Robots-Tag: noindex, nofollow`; canonical points to `https://solar-icons.dev/...`.          |
| `GET /robots.txt`                             | `Disallow: /`.                                                                                 |
| `GET /docs`                                   | 307 redirect to `/docs/v2`.                                                                    |
| `GET /docs/v2/`                               | Trailing slash is dropped and the final URL is `/docs/v2`.                                     |
| `GET /docs/v2/packages/react.mdx`             | 200, `text/markdown`, and non-empty React Markdown.                                            |
| `GET /api/search`                             | 200 JSON and a search index containing the docs pages.                                         |
| `GET /llms.txt`, `/llms-full.txt`             | 200 `text/plain` and non-empty content.                                                        |
| `GET /sitemap.xml`, `/blog/rss.xml`           | 200 XML and RSS MIME types, respectively.                                                      |
| `GET /optimized/blog-fallback-image/640.webp` | 200 `image/webp`; the same bytes as `/_next/image?url=%2Fblog-fallback-image.webp&w=640&q=75`. |
| CSS, JavaScript, WOFF2, manifest              | Correct MIME types and successful responses.                                                   |
| A nonexistent path                            | 404 status with the generated not-found page.                                                  |

No token is needed for this handoff; the deployment and public URL check are left to the user.

## M4 — feedback Worker

The guide feedback widget of the docs pages needed a place to store the feedback. The Next app writes it in a GitHub discussion through a server action; the static build has no server, so the feedback goes to a separate Cloudflare Worker, in `apps/docs-feedback`. The pages themselves stay served as static assets by the other Worker, so a visitor who never sends a feedback never costs an invocation.

### The discussions that exist

The `Docs Feedback` category was read before anything was written. It holds seven discussions, all written by the `solar-icons-docs` app:

| Discussion                                                      | Title                                             |
| --------------------------------------------------------------- | ------------------------------------------------- |
| [#526](https://github.com/saoudi-h/solar-icons/discussions/526) | `Feedback for /docs/v1/icon-reference/categories` |
| [#606](https://github.com/saoudi-h/solar-icons/discussions/606) | `Feedback for /docs/v2/icon-reference/categories` |
| [#564](https://github.com/saoudi-h/solar-icons/discussions/564) | `Feedback for /docs/v2/figma-plugin`              |
| [#469](https://github.com/saoudi-h/solar-icons/discussions/469) | `Feedback for /docs/icon-reference/categories`    |
| [#392](https://github.com/saoudi-h/solar-icons/discussions/392) | `Feedback for /docs/community/contributing`       |
| [#362](https://github.com/saoudi-h/solar-icons/discussions/362) | `Feedback for /docs/packages/react-native`        |
| [#231](https://github.com/saoudi-h/solar-icons/discussions/231) | `Feedback for /docs/getting-started/installation` |

The titles hold the path of the page, without the host and without the query. The body of a feedback is `[<opinion>] <message>` followed by `> Forwarded from user feedback.`, and a second feedback on the same page is a comment of the same discussion.

### The rules

- The URL is normalized to its path, so the same page through `solar-icons.dev`, `solar-icons.vercel.app` or a local port resolves to the same discussion. The host, the query and the trailing slash are dropped.
- The lookup walks the discussions of the category and compares the normalized path of their titles. It does not rely on the fuzzy search of the Next app, so it cannot attach a feedback to a discussion of another page.
- A page that has no discussion gets one, a page that has one receives a comment. A page is never discussed twice.
- The two versions of the documentation stay apart: `/docs/v1/icon-reference/categories` and `/docs/v2/icon-reference/categories` are two pages, and the discussions #469 and #392 of the URLs before the versioning stay as they are.

The lookup was checked against the real category: `/docs/v2/icon-reference/categories` resolves to #606, `/docs/v2/figma-plugin` to #564, and the same paths sent through another host resolve to the same discussions.

### The endpoint

The Worker answers `POST /` with `{ url, opinion, message }` and returns the address of the discussion. It refuses a request that comes from an origin that is not in `ALLOWED_ORIGINS`, a body that is not JSON, an opinion that is not `good` or `bad`, and a message that is empty or longer than 2,000 characters. The GitHub credentials are the secrets `GITHUB_APP_ID` and `GITHUB_APP_PRIVATE_KEY`; the repository, the category and the allowed origins are the variables of `wrangler.jsonc`. The site reads the address of the Worker from `VITE_FEEDBACK_ENDPOINT`.

The whole flow was checked locally: the widget sends the preflight and the request, the payload holds the path of the page, and the widget shows the discussion it created.

The Worker was not deployed: it needs the private key of the `solar-icons-docs` GitHub App, which is the user's. The endpoint is public, so a rate limit has to be added at the Cloudflare level before the production cutover.

## Deferred work

M5 production cutover and Cloudflare invocation measurements are out of scope. The daily refresh of the build-time statistics is still a proposal: a GitHub Actions schedule would build and deploy the site every day, so the counters of the home page do not age.

## References

- [Fumadocs TanStack Start setup](https://www.fumadocs.dev/docs/manual-installation/tanstack-start)
- [Fumadocs root provider and themes](https://www.fumadocs.dev/docs/ui/layouts/root-provider)
- [Fumadocs search UI](https://www.fumadocs.dev/docs/ui/search)
- [Fumadocs Orama static search](https://www.fumadocs.dev/docs/headless/search/orama)
- [TanStack Start static prerendering](https://tanstack.com/start/latest/docs/framework/react/guide/static-prerendering)
- [Cloudflare Workers static assets](https://developers.cloudflare.com/workers/static-assets/)
