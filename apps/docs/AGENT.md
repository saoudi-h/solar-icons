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
- **Categories are navigation, not filter** (DOCS-UI-01, follow-up). The previous `MultipleSelector` filter row was removed. Clicking a category in `CategoryNav` (or in the icon detail's category button) sets `viewModeAtom` to `'grouped'` and `activeCategoryAtom` to the category name; the `IconGrid`'s existing `scrollToRow` useEffect handles the scroll. The `useSearchCategories` hook and the `categories` URL param are gone.
- The duotone color site uses a stripped picker — see `ColorPickerSimple` (no sync-theme toggle, opacity slider inside the popover). The primary `ColorPicker` is the swatch+popover variant with hex input, copy, `HexColorPicker`. The two pickers are independent and don't share theme state.
- **No theme syncing from the color picker.** Picking a dark color does not flip the page theme; the user toggles the theme via the header. The Fumadocs theme switch is always visible on `/icons` (no `themeSwitch.enabled` override in `(home)/layout.tsx`). The historical sync-theme plumbing (`forcedThemeAtom`, `synchedThemeStorageAtom`) was removed in DOCS-UI-01.
- `isDuotone = weight.includes('Duotone')` → BoldDuotone, LineDuotone. `hasStroke = Linear | Broken | LineDuotone` (Bold/BoldDuotone/Outline are stroke-less). Disabled controls stay mounted at `pointer-events-none opacity-30`, not unmounted.
- **Default color in `context.tsx` is `#3b82f6` (Tailwind blue-500).** Mid-luminance, saturated enough to read on both light and dark page backgrounds without theme syncing. `secondaryColor` default stays at `#f59e0b` (amber) for duotone contrast.
- **FilterBar components (post DOCS-UI-01 redesign):** the toolbar is composed of 6 building blocks in `components/icons-page/sections/icons/`:
    - `StylePicker` — inline `radiogroup` of 6 small icon buttons (one per style, all visible). Active style has `bg-default-300 ring-1`. Click to switch. No text labels — `Tooltip` shows the style name on hover. No popover, one click to change.
    - `GeometryControl` — value-chip rendered as `role="slider"`. **Draggable horizontally** (Figma-style): `pointerDown` captures, `pointerMove` updates the value, `pointerUp` releases. A `bg-foreground/10` fill behind the text grows proportionally to the value (full width = `max`). Sensitivity adapts to the chip's offsetWidth so a full-width drag covers the full range. `cursor-ew-resize` on hover. Double-click (or `Enter`/`Space` when focused) resets to `defaultValue`. Keyboard: arrows ±`step`, `Home`/`End` for bounds. Supports `disabled` (greys, no interaction).
    - `ColorPicker` (primary) — swatch + popover with hex input, copy, `HexColorPicker`. No sync-theme toggle (removed in DOCS-UI-01 follow-up). Width `w-32` (128px). Popover content is border-less, no grey background — just the HexColorPicker.
    - `ColorPickerSimple` (secondary, duotone) — swatch + popover with hex input, copy, `HexColorPicker`, optional **opacity slider** (moved here from a standalone tile). Same border-less popover treatment.
    - `SearchInput` — magnifier + input + animated `NumberFlow` count glued to the right edge.
    - `ViewModeToggle` — segmented control (Grouped | Flat). Default is `'grouped'` (Lucide-style category sections). `Tooltip` per option.
    - `Divider` — 1px vertical separator, only meaningful when controls are inline.
    - `CategoryNav` — the lucide-style categories navigation. Single component used twice: as a sticky `w-50` `<aside>` on the left of the grid on `lg+`, and as a section at the bottom of the mobile drawer (no internal scroll, the drawer scrolls). Clicking a category switches `viewModeAtom` to `'grouped'` and sets `activeCategoryAtom`; the IconGrid's existing `scrollToRow` useEffect handles the scroll. Each row shows the count of icons in that category that match the current keyword (empty categories hidden).
    - Shared helper: `color-utils.ts` exports `getContrastingColor` (used by both pickers to decide input text color).
- **`useSolar()` size is `string | number | undefined`** (`packages/react/src/lib/SolarProvider.tsx:5-16`). The new `FilterBar.tsx` coerces with `Number()` before passing to `GeometryControl` (which expects `number`). Same for `strokeWidth` and `secondaryOpacity`.
