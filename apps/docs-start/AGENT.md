---
name: '@solar-icons/docs-start'
type: 'app'
status: 'active'
---

# AGENT CONTEXT: apps/docs-start

## Role

The official Solar Icons documentation site, public at https://solar-icons.dev. TanStack Start + Fumadocs, prerendered at build time and served as static assets by a Cloudflare Worker. The Worker only runs for the feedback endpoint.

## Conventions

- React 19, Tailwind CSS 4, Radix UI, `motion`, `vaul`, `@number-flow/react`.
- Routes live in `src/routes` (file routes, `routeTree.gen.ts` is tracked). Components live in `src/components`, hooks in `src/hooks`, URL helpers in `src/utils/routes.ts`.
- Content: MDX in `content/docs` and `content/blog`, loaded through `src/lib/source.ts`. `/llms.txt` and `/llms-full.txt` are first-class deliverables.
- Icons: every Iconify name (`collection:name`) is resolved at build time by `scripts/generate-icons.ts` and written to `generated/icons.json`; `scripts/check-icons.ts` fails the build when one is missing. No request reaches the Iconify API at runtime.
- The explorer catalogue is generated from `packages/core/src` by `pnpm generate:catalog` into `generated/`. These files are tracked; the build regenerates them.
- `scripts/generate-changelog.ts` hardcodes the list of public packages. New public packages must be added there.
- Open Graph images and the `p.js` / `r.js` scripts are build artifacts (`public/og`, `public/p.js`).

## Commands

- `pnpm --filter @solar-icons/docs-start build` — full build (generation, checks, prerender).
- `pnpm --filter @solar-icons/docs-start typecheck | lint | format | test`.
- Unit tests cover the Worker, Playwright tests cover the pages.

## Constraints

- The repository is public: keep deployment and analytics details out of committed docs, PRs and commit messages.
- Never commit `.env*` files other than `.env.example`.
- `src/generated/` holds build-time artifacts (ignored); `generated/` holds the tracked catalogue.
