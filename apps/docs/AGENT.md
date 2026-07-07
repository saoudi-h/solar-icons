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

## 📐 /icons page layout (final state)

- `<main>` in `components/icons-page/IconsContent.tsx` is
  `relative flex w-full flex-1 flex-col overflow-hidden ...` —
  `flex-1` is what gives it the right height (the parent
  HomeLayout is a flex column), `overflow-hidden` kills the
  page-level scroll. **Don't add `h-dvh` on top of `flex-1`**:
  it's redundant and the user already flagged it. The two
  internal-scroll panels (categories sidebar + icon grid) do
  the rest of the work.
- The `SidebarIcon` on the right of the bar is the mobile
  drawer trigger — it is rendered **always in the DOM** but
  the drawer is `hidden` on `md+`, so the trigger is just
  CSS-hidden on desktop. The `useScreen`/`useIsDesktop`
  indirection that used to pick the variant is gone; the
  CSS-based split (`hidden md:flex` / `md:hidden`) does it
  for free.
- The categories sidebar and the icon grid sit in a row
  with height driven by the grid's measured
  `window.innerHeight - <top> - 56 - detailHeight - ROW_TO_DETAIL_GAP`.
  The `56` is the Fumadocs header height (the user's manual
  fix; tighter than the previous `- 20` padding guess).
  The `detailHeight` is the live pixel height of the
  bottom `<IconDetail>` panel, reported by its
  `FloatingDrawer`'s `ResizeObserver` (DOCS-UI-02). The
  `ROW_TO_DETAIL_GAP` (16px) is the `gap-4` between the
  row and the detail panel inside the inner
  `flex-col gap-4` of `<IconShowcase>` — that gap is
  below the grid (not in `rect.top`), so without the
  explicit subtraction the page gains a small vertical
  scroll whenever the panel opens. The row is
  `flex gap-4 overflow-hidden` and the height is
  communicated from the grid up to the parent via an
  `onHeightChange` prop on `<IconGridVirtualized>` — no
  magic number on the row itself. The sidebar has
  `overflow-y-auto` for its internal scroll, the grid
  uses `<List>` (grouped) or `<Grid>` (flat) from
  `react-virtualized`.
- **`<IconDetail>` floating drawer height reconciliation
  (DOCS-UI-02).** The detail panel is rendered at the
  bottom of the page (sticky + `max-h-[calc(50vh)]`,
  `min-h-48`). It is in normal flow, so opening it
  historically grew the page beyond the available space
  and either (a) added a page-level scroll on the
  `<main>`, or (b) clipped the bottom of the grid +
  sidebar when forced into a fixed-height shell. The fix:
  the `FloatingDrawer` measures its own height with a
  `ResizeObserver` and reports it via an `onHeightChange`
  prop, which the `IconShowcase` stores as
  `detailHeight` and passes to `<IconGridVirtualized>`.
  The grid subtracts it (and the `ROW_TO_DETAIL_GAP`) from
  its `window.innerHeight - top - 56` measurement, so the
  grid + categories sidebar shrink by exactly the
  panel's height when it opens — both remain fully
  scrollable and the last row of icons + the last
  category stay reachable. The `IconGrid` re-measures on
  every `detailHeight` change via a `requestAnimationFrame`
  to avoid stale `rect.top` values during the layout
  shift. The drawer also reports `0` on close (via a
  separate `useEffect` watching `selectedIcon`) so the
  grid can reclaim the space.
- No fade affordance on the icons page. A previous
  `ScrollFade` component (`components/ui/scroll-fade.tsx`,
  since deleted) used `mask-image` with dynamic opacity;
  it interfered with the native scroll of the two panels.
  If a fade affordance is wanted later, it should be on a
  top-level scroll container, not nested inside a
  `sticky aside` and a `flex-1` grid.

## 📚 Documentation versioning (2026-06-30)

- **Strategy:** Partial versioning via folder separation. Single app, single deployment.
- **Content directories:** `content/docs/legacy/` (current stable, on `main`) and `content/docs/v3/` (beta, on `beta` branch). Never refer to "v2" — there is no v2. Pre-V3 content is called "Current" (tab title) while V3 is in beta. When V3 becomes stable, rename the tab to "Legacy".
- **Default tab:** Current. `/docs` redirects to `/docs/legacy`. The header "Documentation" link points to `/docs/legacy`. V3 is opt-in via its tab.
- **Version tabs:** Each version folder has `"root": true` in its `meta.json`. The `DocsLayout` uses the `tabs` prop to render them as sidebar tabs. Follows the same Fumadocs pattern as their Framework/UI/Headless sections.
- **Redirect:** `/docs` → `/docs/legacy` via `next.config.mts` `redirects()`.
- **Beta banner:** Uses the native `Banner` component from `fumadocs-ui/components/banner` from `fumadocs-ui/components/banner`. Placed in `app/docs/layout.tsx` before `children`, only renders on `/docs/v3/*` via the `V3BetaBanner` wrapper.
- **Callouts:** Always use `<Callout type="warn|info">` instead of `> [!NOTE]` / `> [!WARNING]` blockquote syntax. Fumadocs registers `blockquote: Callout` in their MDX components, but explicit `<Callout>` is safer.
- **Package manager tabs:** `remarkNpmOptions.persist: { id: 'package-manager' }` configured in `source.config.ts` makes ` ```package-install ` persistent across pages.

## Prose conventions (stop-slop)

- **No `## New:` section headers.** In migration guides, the entire page is about what changed. `## SolarProvider` beats `## New: SolarProvider`.
- **Active voice.** "V3 drops the `mirrored` prop" beats "The `mirrored` prop was removed." Use "V3" as the actor for breaking changes.
- **No em-dashes in prose.** Use periods, commas, or colons. Em-dashes in code comments and bold label patterns (`After (recommended — per-style):`) are acceptable.
- **No adverbs.** Cut "genuinely", "simply", "actually", etc.
- **No vague declaratives.** "This keeps the package surface clean" adds nothing. State the fact, trust the reader.
- **Terminology: "pre-v3", not "v2".** Some packages were at v1.x, others at v2.x — there is no single "v2". Use "pre-v3" to describe the old API.
- **Version tab naming.** The tab for current stable docs is "Current" (not "Legacy") while V3 is in beta. Only rename to "Legacy" when V3 becomes the stable release.
- **Single-icon imports are for dev server performance, not tree-shaking.** Both barrel (`@solar-icons/react/bold`) and single-icon (`@solar-icons/react/bold/heart`) imports tree-shake equally in production. The single-icon path helps the dev server by avoiding resolving ~8k modules when you only need one icon. Do not label single-icon imports as "tree-shakable" in docs — it implies barrel imports are not.
- **Provider props tables use "Fallback", not "Default".** Providers set no defaults — all props are `undefined` until set. Icons fall back to CSS variable values (`var(--solar-color, currentColor)`, etc.) defined in IconBase. Use "Fallback" as the column header in Provider props tables.
- **All web frameworks pass through standard SVG attributes.** React (`...restProps`), Vue (`v-bind="$attrs"`), Svelte (`...restProps`), Solid (`splitProps` + `{...others}`) all spread extra attributes onto the `<svg>` element. `data-*`, `role`, `tabindex`, `aria-*` all work.
- **Vue IconBase accessibility check** uses `useAttrs()` to detect `aria-label` and `title`, matching React/Svelte/Solid behavior. Before the fix (2026-07-07), only `alt` was checked.
