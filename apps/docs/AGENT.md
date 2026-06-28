---
name: '@solar-icons/docs'
type: 'app'
status: 'active'
---

# AGENT CONTEXT: apps/docs

## 🧠 Role

The official Solar Icons documentation site. Public, deployed to https://solar-icons.vercel.app. Built with Next.js 16 + Fumadocs.

## ⚙️ Conventions

- Next.js 16 App Router, React 19, React Compiler enabled (`reactCompiler: true`).
- Tailwind CSS 4 (via `@tailwindcss/postcss`).
- UI primitives: Radix UI, `cmdk`, `framer-motion`, `vaul`.
- Search: Fumadocs built-in search over MDX content.
- LLMs: `/llms.txt` and `/llms-full.txt` are first-class deliverables.
- Build = `tsx ./scripts/generate-changelog.ts && next build`. The pre-build changelog script aggregates per-package `CHANGELOG.md` into a single page.
- Lint = `eslint . && pnpm lint:links`. `lint:links` uses `next-validate-link` to scan MDX content for dead links.
- Postinstall = `fumadocs-mdx`.

## 📁 Key Directories

| Path                                | Description                                                                                                                                                |
| ----------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `app/`                              | Next.js App Router pages, layouts, API routes. `(home)/` is the marketing landing, `docs/` is the documentation tree, `api/search` is the search endpoint. |
| `content/docs/`                     | MDX content for the documentation tree.                                                                                                                    |
| `core/`                             | A separate data layer for the docs app. Has its own `scripts/` and `generated/`. See `apps/docs/core/AGENT.md`.                                            |
| `lib/`, `components/`               | Hand-written utilities and components.                                                                                                                     |
| `scripts/`                          | `generate-changelog.ts`, `lint.ts` (link checker), `preload.ts` (Bun preload for the link checker).                                                        |
| `app/og/`                           | OG image generation.                                                                                                                                       |
| `app/llms.txt`, `app/llms-full.txt` | LLM index and full-text routes.                                                                                                                            |

## 🏗 Stack

- Next.js 16, React 19, TypeScript 6.
- Fumadocs 16.x.
- Radix UI + `cmdk` + `vaul` + `framer-motion`.
- `@number-flow/react` for animated numbers.
- `@calcom/cal-sans-ui` for the Cal Sans font.
- `bun` for the link-check script runtime.

## ⚠️ Known Constraints

- **`typescript.ignoreBuildErrors: true` in `next.config.mts`.** The docs build does not fail on type errors. Run `pnpm typecheck` (`tsgo --noEmit`) explicitly.
- **`serverExternalPackages: ['ts-morph', 'typescript', 'oxc-transform', 'twoslash', 'shiki']`** in `next.config.mts`. New MDX/TS tooling deps may need the same treatment.
- **`@solar-icons/react` is the runtime dependency** (not `react-perf`).
- **`generate-changelog.ts` hardcodes the list of public packages** in `apps/docs/scripts/generate-changelog.ts`. New public packages need to be added there.
- **`lint:links` runs on Bun, not Node** (`preload.ts` uses `Bun.plugin(createMdxPlugin(...))`).
- **`apps/docs/core/` duplicates pieces of `packages/core/`** (notably `generate-data.ts` reads `core/metadata.json` and emits `core/generated/utils.ts`).

## 🎨 Icons page (FilterBar)

- `components/icons-page/sections/icons/FilterBar.tsx` is the toolbar on `/icons`. Two variants from `useScreen('md')` (`@/lib/screens`, re-exported from `tw-screens`): inline row on desktop, right-edge `vaul` drawer on mobile. Same content in both.
- Style state lives in Jotai (`weightAtom`, default `BoldDuotone`) — **not** in the V3 `SolarProvider`, because weight is shared by static and dynamic icons and putting it in context would force every icon into a client component. (`components/icons-page/sections/icons/context.tsx:18-28`.)
- `useSearchKeyword` / `useSearchCategories` are `nuqs`-backed (`search` and `categories` query params, `;`-separated array). Any new URL-persistent control should follow the same pattern.
- 37 categories come from `CATEGORIES` in `@solar-icons/core/runtime` (re-exported from `packages/core/src/constants.ts:9`).
- `ColorPicker` (`ColorPicker.tsx`) embeds a "Sync Theme" toggle backed by `synchedThemeStorageAtom` that flips `forcedTheme` to contrast with the picked color. The duotone site should use a stripped variant (no sync toggle) — see worklog `2026-06-28-DOCS-UI-01-filterbar-redesign-plan.md` for the proposed split (`ColorPicker` vs `ColorPickerSimple`).
- `isDuotone = weight.includes('Duotone')` → BoldDuotone, LineDuotone. `hasStroke = Linear | Broken | LineDuotone` (Bold/BoldDuotone/Outline are stroke-less). Disabled controls stay mounted at `pointer-events-none opacity-30`, not unmounted.
- **FilterBar components (post DOCS-UI-01 redesign):** the toolbar is composed of 6 building blocks in `components/icons-page/sections/icons/`:
    - `StylePicker` — popover with a 3×2 grid of style previews. Click to choose.
    - `GeometryControl` — value-chip (e.g. "Size 64px") + popover with slider + reset. Supports `disabled` (greys the chip, no popover opens).
    - `ColorPicker` (primary) — swatch + popover with hex input, copy, `HexColorPicker`, sync-theme toggle.
    - `ColorPickerSimple` (secondary, duotone) — swatch + popover with hex input, copy, `HexColorPicker`, optional **opacity slider** (moved here from a standalone tile).
    - `SearchInput` — magnifier + input + animated `NumberFlow` count glued to the right edge.
    - `Divider` — 1px vertical separator, only meaningful when controls are inline.
    - Sections are visually separated by `Divider` (Style | Geometry | Color | Search | Reset). The `MultipleSelector` (categories) sits on a second row, unchanged — the redesign deferred category work.
    - Shared helper: `color-utils.ts` exports `getContrastingColor` (used by both pickers to decide input text color).
- **`useSolar()` size is `string | number | undefined`** (`packages/react/src/lib/SolarProvider.tsx:5-16`). The new `FilterBar.tsx` coerces with `Number()` before passing to `GeometryControl` (which expects `number`). Same for `strokeWidth` and `secondaryOpacity`.
