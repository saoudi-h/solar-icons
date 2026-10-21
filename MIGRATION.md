# Solar Icons migration — M0 and M1

**Status:** M0 is implemented locally; its remote test deployment is pending Cloudflare API-token authentication. M1 (`/icons`) is implemented and locally verified. M2–M5 have not been started.

**Worktree:** `/home/hakim/.codex/worktrees/tanstack-docs-start/solar-icons`, branch `feat/docs-tanstack-start`, based on `0ff6aa85cf912dc1365bec611e8a58b09da5ddbf` (`main`, including `perf/docs-network-cost`). The primary checkout was not modified. No commits, push, DNS, production deploy, or Vercel project changes were made.

## M0 — foundations

### App and build shape

- Created sibling app `apps/docs-start` with TanStack Start, React, Tailwind CSS 4, Vite, and Wrangler. `apps/docs` remains in place.
- `vite.config.ts` enables TanStack prerendering, link crawling, `failOnError`, and an explicit `/404` output. The build produced static HTML for `/`, `/icons`, and `/404`; its browser assets are in `dist/client`.
- `wrangler.jsonc` has no `main` entry and points `assets.directory` at `dist/client`. It sets `html_handling: drop-trailing-slash`, `not_found_handling: 404-page`, and `workers_dev: true`; it has no custom domain or route. The dry run read 311 static assets and reported no bindings; the config contains no Worker entry point.
- Tailwind 4 is enabled by `@tailwindcss/vite`. The root document owns the early theme script, theme toggle, SEO/canonical metadata, favicon, manifest, and TanStack scripts. Canonicals use `VITE_SITE_URL`, defaulting to `https://solar-icons.dev`.
- Fontsource variable fonts are self-hosted: Host Grotesk, Aleo, and JetBrains Mono. The CSS family names match the Fontsource declarations and the browser loaded the Latin WOFF2 files.
- Umami is wired to a build-synced first-party `/p.js`; it is omitted unless both `VITE_UMAMI_URL` and `VITE_UMAMI_ID` are set. The recorder `/r.js` is not included. No Umami variables were present for this build, so Umami was not measured or exercised.
- With `SITE_NOINDEX=1`, the build writes `_headers` (`X-Robots-Tag: noindex, nofollow`), `robots.txt` (`Disallow: /`), and a temporary 308 redirect probe. Without that flag the test-only files are removed. The test build's canonical still points to `https://solar-icons.dev`.
- `/` is currently a small M0 status shell linking to `/icons`; the marketing homepage belongs to M2.

### Local Cloudflare-compatible checks

`wrangler dev --local` served the assets from `dist/client`. `scripts/verify-static-assets.mjs` passed:

| Check | Result |
| --- | --- |
| `/icons` | 200 |
| `/icons/` | 307 to `/icons` |
| Missing path | 404 |
| Test-only redirect probe | 308 |
| `/icons` HTML with and without search params | Identical |
| `X-Robots-Tag` | `noindex, nofollow` |
| Test `robots.txt` | `Disallow: /` |
| MIME checks | JSON, CSS, JS, WOFF2 font, and manifest served with expected types |

These checks use Wrangler's local asset simulator; they do not establish behavior or invocation counts on Cloudflare's network. **No remote test deployment was made.** `wrangler whoami` succeeded, but the non-interactive `wrangler deploy` attempt stopped with: `In a non-interactive environment, it's necessary to set a CLOUDFLARE_API_TOKEN environment variable for wrangler to work.` The `wrangler deploy --dry-run` check passed and did not deploy.

To authenticate in an interactive terminal, use `pnpm --filter @solar-icons/docs-start exec wrangler login`. For a non-interactive deployment, Cloudflare's permission table says creating a new Worker requires Workers Admin at the Workers product scope; deploying an existing Worker can use Editor scoped to that Worker. This test name does not exist yet, so the initial create may require the broader role. Enter the token directly into the terminal without putting it in the repository, then run:

```sh
read -rsp 'Cloudflare API token: ' CLOUDFLARE_API_TOKEN
export CLOUDFLARE_API_TOKEN
printf '\n'
read -rp 'Cloudflare account ID: ' CLOUDFLARE_ACCOUNT_ID
export CLOUDFLARE_ACCOUNT_ID
SITE_NOINDEX=1 VITE_SITE_URL=https://solar-icons.dev pnpm --filter @solar-icons/docs-start build
pnpm --filter @solar-icons/docs-start exec wrangler deploy
```

The token value was neither requested in chat nor stored. After authentication, deploy only to this app's `workers.dev` test address and re-run the noindex, canonical, redirect, 404, and MIME checks there. Cloudflare invocation metrics remain unknown until that test deployment exists.

## M1 — `/icons`

### URL compatibility and static rendering

`src/routes/icons.tsx` uses TanStack Router's native `validateSearch`; it does not use `nuqs`. Current accepted parameters are:

| Parameter | Accepted values |
| --- | --- |
| `icon` | Icon slug as a string |
| `view` | `flat`, `grouped` |
| `search` | Free-text string |
| `style` | `bold`, `bold-duotone`, `broken`, `linear`, `line-duotone`, `outline` |
| `category` | One of the 37 categories from the existing generated catalog |
| `origin` | `all`, `extended` (retained for compatibility with the existing explorer) |

The route's prerendered HTML renders default explorer state and is byte-identical for query variants tested locally. After hydration, it reads the validated query and applies filters on the client. Search and filter changes preserve the other query keys; text entry replaces history entries, while other filter changes can be navigated with browser Back/Forward.

### Icon data, chunks, and grid

- `scripts/generate-icon-catalog.ts` emits `public/data/icons.json` from the existing generated icon descriptions and emits per-category, per-style React icon modules plus a dynamic loader. The catalog has 1,451 records, 319,969 bytes uncompressed (about 313 KiB), and 282 icon chunks across six styles.
- The client fetches the catalog after hydration (36.5 KiB transferred gzip in the network run). Icon component chunks are requested for visible virtualized rows and the selected icon, and subsequent chunks load as the grid scrolls. No all-icons React barrel is imported by the route.
- `@tanstack/react-virtual` virtualizes rows. Fuse.js filters the loaded metadata in the browser. Copy uses the rendered SVG and `navigator.clipboard`.

### Browser coverage

The three Playwright tests passed in Chromium at 1440×900:

1. Open and reload an old shared URL containing `icon`, `view`, `search`, `style`, `category`, and `origin`.
2. Open by category, verify grouped view, change filters, and verify Back/Forward restores state.
3. Select an icon and verify copied clipboard text contains SVG.

## Network measurement

Protocol: production builds served locally (`wrangler dev --local` for the new app and `next start` for Next), headless Chromium, 1440×900, cache disabled through CDP, `networkidle`, then scroll every scrollable region to the bottom. Bytes are Chromium CDP `encodedDataLength`; JavaScript and CSS responses were gzip encoded. Next `p.js` and `r.js` returned 503 with zero transfer bytes because Umami build variables were absent. There were zero requests identified as link prefetches in either run.

| Build and phase | Requests | Total transfer | JavaScript | Other transferred resources |
| --- | ---: | ---: | ---: | --- |
| New app, initial viewport | 11 | 307.7 KiB | 166.0 KiB | HTML 2.7, CSS 7.4, fonts 95.9, icon metadata JSON 35.7 KiB |
| New app, after full scroll | 56 | 919.5 KiB | 777.8 KiB | HTML 2.7, CSS 7.4, fonts 95.9, icon metadata JSON 35.7 KiB |
| Current Next build, initial viewport | 38 | 780.9 KiB | 641.4 KiB | HTML 8.2, CSS 35.2, fonts 96.2 KiB; `/p.js` and `/r.js` 503/0 B |
| Current Next build, after full scroll | 38 | 780.9 KiB | 641.4 KiB | Same; no additional scroll requests |

The initial `/icons` JavaScript is 74% below this reproducible Next build. Full-scroll JavaScript is higher than that local Next result because scrolling requests the icon chunks for the active style. The supplied audit figure was approximately 1.5 MiB gzip JS on `/icons`; this worktree's production build instead transferred 641.4 KiB. Why those two Next figures differ is **unknown**. Against the supplied 1.5 MiB figure, the new app's full-scroll JS is about 49% lower. The local comparison excludes functioning Umami scripts and must be repeated with the intended analytics configuration for a production-equivalent result.

Provisional JS transfer budgets for future checks (gzip, first load): `/icons` ≤250 KiB, homepage ≤250 KiB, docs pages ≤300 KiB. The current `/icons` initial result is 166 KiB, leaving 84 KiB under its cap. Full-scroll `/icons` cap: 850 KiB (current 777.8 KiB). Homepage and docs caps are proposals only; those M2/M3 pages have not been implemented or measured.

## Verification record

| Command | Result |
| --- | --- |
| `pnpm install --frozen-lockfile` | Passed, all 26 workspace projects; lockfile unchanged by install |
| `SITE_NOINDEX=1 VITE_SITE_URL=https://solar-icons.dev pnpm --filter @solar-icons/docs-start build` | Passed; 3 static pages, 1,451 icon records, 282 icon chunks |
| `pnpm --filter @solar-icons/docs-start typecheck` | Passed |
| `PLAYWRIGHT_BROWSERS_PATH=/tmp/solar-docs-pw-browsers pnpm --filter @solar-icons/docs-start test` | Passed, 3 tests |
| `pnpm --filter @solar-icons/docs-start exec wrangler deploy --dry-run` | Passed; Wrangler read 311 static files, no bindings, dry-run only |
| `SKIP_ENV_VALIDATION=1 NEXT_PUBLIC_SITE_URL=https://solar-icons.dev pnpm --filter @solar-icons/docs build` | Passed; Next 16.4.2 generated 183 static pages. Environment validation was skipped because this checkout has no GitHub App or Umami secrets. |

The Next build generator rewrote `apps/docs/content/docs/v2/community/changelog.mdx`; that generated change was restored. `git status --short -- apps/docs` is clean. No files in `apps/docs`, `vercel.json`, or Vercel-specific build config remain modified.

## Skills and official references consulted

- TanStack Start and Router skills were read from the npm packages supplied through TanStack Intent: `@tanstack/react-start@1.169.3`, Router package range `@tanstack/react-router@^1.170.45`, `@tanstack/intent@0.5.6`. Source/author: TanStack. Skill last-updated date: **unknown** in the package files. These are the versions used by this app; the version drift among TanStack transitive packages is governed by the lockfile.
- Installed the project-local official Cloudflare Wrangler skill at `.agents/skills/wrangler` (`cloudflare/skills`, Cloudflare). Its package metadata has no last-updated date; date: **unknown**. The app uses Wrangler 4.151.3. The skill is recorded in `skills-lock.json` and was not committed.
- Searched for TanStack, Fumadocs, Vite, Cloudflare, and Playwright skills with `npx skills`; no separate official Fumadocs, Vite, or Playwright skill was installed. The Fumadocs TanStack Start guide and framework docs were read directly. Fumadocs UI dependencies and the required `npm:@fumadocs/base-ui` alias are deferred to M3, which is out of scope here.

Official documentation used:

- [TanStack Start static prerendering](https://tanstack.com/start/latest/docs/framework/react/guide/static-prerendering)
- [TanStack Router search parameters](https://tanstack.com/router/latest/docs/guide/search-params)
- [TanStack Intent](https://tanstack.com/intent/latest/docs/overview)
- [Tailwind CSS with Vite](https://tailwindcss.com/docs/installation/using-vite)
- [Fumadocs TanStack Start setup](https://www.fumadocs.dev/docs/manual-installation/tanstack-start)
- Cloudflare [static assets](https://developers.cloudflare.com/workers/static-assets/), [static site routing](https://developers.cloudflare.com/workers/static-assets/routing/static-site-generation/), [HTML handling](https://developers.cloudflare.com/workers/static-assets/routing/advanced/html-handling/), [headers](https://developers.cloudflare.com/workers/static-assets/headers/), [redirects](https://developers.cloudflare.com/workers/static-assets/redirects/), and [Wrangler authentication](https://developers.cloudflare.com/workers/wrangler/commands/general/)
- Cloudflare [Workers roles and permissions](https://developers.cloudflare.com/workers/authorization/)
- [Playwright tests](https://playwright.dev/docs/test-fixtures)

## Not started in this session

M2 homepage content and build-time stats; M3 Fumadocs UI, docs/blog/search, generated files, and light/dark visual comparison; M4 GitHub feedback Worker or discussion inspection; M5 full URL parity, production cutover runbook, and Cloudflare invocation metrics. The root Vercel app remains the current deploy target until a later, separately authorized cutover.
