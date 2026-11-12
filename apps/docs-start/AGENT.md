---
name: '@solar-icons/docs-start'
type: 'app'
status: 'active'
---

# AGENT CONTEXT: apps/docs-start

## Role

The official Solar Icons documentation site, public at https://solar-icons.dev. TanStack Start + Fumadocs, prerendered at build time and served as static assets by a Cloudflare Worker. The Worker only handles `/api/feedback` and `/api/site-stats`.

## Conventions

- React 19, Tailwind CSS 4, Radix UI, `motion`, `vaul`, `@number-flow/react`.
- Routes live in `src/routes` (file routes, `routeTree.gen.ts` is tracked). Components live in `src/components`, hooks in `src/hooks`, URL helpers in `src/utils/routes.ts`.
- Content: MDX in `content/docs` and `content/blog`, loaded through `src/lib/source.ts`. `/llms.txt` and `/llms-full.txt` are first-class deliverables.
- Icons: every Iconify name (`collection:name`) is resolved at build time by `scripts/generate-icons.ts` and written to `generated/icons.json`; `scripts/check-icons.ts` fails the build when one is missing. No request reaches the Iconify API at runtime.
- The explorer catalogue is generated from `packages/core/src` by `pnpm generate:catalog` into `generated/`. These files are tracked; the build regenerates them.
- Explorer previews use `useIconPreview` / `useIconComponent` in `src/components/icons-page/sections/icons/icon-registry.tsx`. `generate:icon-catalog` embeds the initial default-style viewport and writes immutable JSON preview sets under `public/data/icon-previews/`. Other previews fetch one set per style/category slice. Keep the SVG wrapper on the package's `IconBase` so provider settings and isolated previews match package rendering. Do not restore whole-style or per-icon module imports for the grid.
- Import runtime helpers from `@solar-icons/react/lib/SolarProvider` and individual icons from their per-icon paths. Root and `/dynamic` barrels traverse the whole linked ESM library in Vite development even when a production bundler can tree-shake them. Generated category thumbnails follow the same rule.
- Explorer URL hooks apply query parameters after hydration because static `/icons` HTML is identical for all query strings. Capture shared-link scroll targets after that step, not during the first render.
- Category/count state starts from the bundled full catalogue so the sidebar exists in server HTML. The category row and grid share their initial height before viewport measurement.
- The explorer bundles `src/generated/icon-catalog.json`, with shared category tags plus per-icon exceptions. Preserve search tags and ranking when compacting it; `utils.test.ts` compares both against the tracked descriptions. Search indexes are reused between queries.
- SVG/PNG exports fetch `public/data/icon-svgs/<name>.<hash>.json` (six styles), generated from core SVGs by `generate:icon-catalog`. Keep these assets on the same deployment as the explorer; there is no runtime npm/CDN dependency. The public `/data/icons.json` contract stays separate from the compact client payload.
- The grid stays virtualized with `react-virtualized`. Measure its container width, keep category/deep-link scrolling and search reset behavior covered by Playwright, and render the detail content directly. Controls must remain disabled/inert until hydration finishes; initial SVGs remain visible during this interval. Compare scroll performance before replacing the virtualization engine.
- Explorer layout: one toolbar row (search first; appearance controls collapse into a popover below `xl` and into the filter drawer below `md`), category sidebar from `md`, grid, and `IconDetail`. From `lg` the detail is a column beside the grid (`placement="side"`); below it is a sticky sheet under the grid that reports its height so the grid keeps its last row visible. Do not put the detail back over the grid on desktop.
- Grid cells follow the Size setting (`getCellSize` in `context.tsx`); names are optional (`?names=on`) and otherwise shown on hover/focus. Call `recomputeRowHeights` / `recomputeGridSize` when the cell size changes. Selection is shown by the cell background and ring, never by recolouring the icon.
- Explorer surfaces come from `surface.ts` (`PANEL_SURFACE`, `CONTROL_SURFACE`): no borders on inner panels, a short shadow instead. The detail stage and variants follow the provider settings; only the toolbar style picker is `isolated`.
- Package snippets in the detail are logo-only `role="tab"` buttons with tooltips and accessible names; the choice persists in `localStorage`. Escape is read on `window` in capture and yields to text fields and open dialogs/menus/listboxes; focus returns to the icon's cell after the exit animation, re-checked over a few frames because the grid re-lays out.
- `scripts/generate-changelog.ts` hardcodes the list of public packages. New public packages must be added there.
- Open Graph images and the `p.js` / `r.js` scripts are build artifacts (`public/og`, `public/p.js`).

## Commands

- `pnpm --filter @solar-icons/docs-start build` — full build (generation, checks, prerender).
- `pnpm --filter @solar-icons/docs-start typecheck | lint | format | test`.
- Unit tests cover the Worker and catalogue invariants. Playwright tests cover built pages; `pnpm test:e2e:dev` also exercises the explorer on a separate Vite server with its own optimizer cache. `pnpm test` runs both. `predev` generates the ignored preview assets required by a fresh checkout.

## Constraints

- The repository is public: keep deployment and analytics details out of committed docs, PRs and commit messages.
- Never commit `.env*` files other than `.env.example`.
- `src/generated/` holds build-time artifacts (ignored); `generated/` holds the tracked catalogue.
