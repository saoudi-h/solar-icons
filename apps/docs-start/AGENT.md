---
name: '@solar-icons/docs-start'
type: 'app'
status: 'active'
---

# AGENT CONTEXT: apps/docs-start

## Role

The official Solar Icons documentation site, public at https://solar-icons.dev. TanStack Start + Fumadocs, prerendered at build time and served as static assets by a Cloudflare Worker (which only handles `/api/feedback` and `/api/site-stats`).

## Conventions

- React 19, Tailwind CSS 4, Radix UI, `motion`, `vaul`, `@number-flow/react`.
- Routes live in `src/routes` (file routes, `routeTree.gen.ts` is tracked). Components live in `src/components`, hooks in `src/hooks`, URL helpers in `src/utils/routes.ts`.
- Content: MDX in `content/docs` and `content/blog`, loaded through `src/lib/source.ts`. `/llms.txt` and `/llms-full.txt` are first-class deliverables.
- Icons: every Iconify name (`collection:name`) is resolved at build time by `scripts/generate-icons.ts` into `generated/icons.json`; `scripts/check-icons.ts` fails when one is missing. Zero runtime Iconify requests.
- Catalogue: generated from `packages/core/src` via `pnpm generate:catalog` into `generated/` (tracked; regenerated on build).
- Import runtime helpers from `@solar-icons/react/lib/SolarProvider` and icons from per-icon paths. Root and `/dynamic` barrels traverse the full linked ESM tree in Vite dev even when prod tree-shakes them. Generated category thumbnails follow the same rule.
- For `/icons` explorer architecture, previews, hydration, search, exports, grid virtualization, and layout rules, see [icons-page AGENT.md](src/components/icons-page/AGENT.md).
- `scripts/generate-changelog.ts` hardcodes the list of public packages — add new public packages there.
- Open Graph images and `p.js` / `r.js` are build artifacts (`public/og`, `public/p.js`).

## Commands

- `pnpm --filter @solar-icons/docs-start build` — full build (generation, checks, prerender). Run before the first `typecheck` on a fresh clone.
- `pnpm --filter @solar-icons/docs-start typecheck | lint | format | test` (`predev` generates ignored preview assets for dev; `pnpm test` runs unit tests + Playwright prod/dev e2e).

## Constraints

- Public repo: keep deployment and analytics details out of committed docs, PRs, and commit messages.
- Never commit `.env*` files other than `.env.example`.
- `src/generated/` holds ignored build artifacts; `generated/` holds the tracked catalogue.
