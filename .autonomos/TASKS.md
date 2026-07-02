# PROJECT TASKS & ROADMAP

> **LEGEND**
> **Priority:** [🔴 Critical] [🟠 High] [🔵 Medium] [⚪ Low]
> **Complexity:** [S] Small (1h), [M] Medium (4h), [L] Large (1-2 days), [XL] Huge (Planning req.)
> **Status:** [ ] Todo, [/] In Progress, [x] Done, [!] Blocked

> **V3 plan source:** `packages/core/V3_roadmap.md` (untracked, French, internal working draft). TASKS.md is the canonical task list — new tasks can be added, removed, or refined as discoveries are made. The roadmap is not a strict contract.

## ✅ Recently closed

- [x] **[INIT-01]** Review project context and structure `Priority: 🔵` `Complexity: S` *See: .autonomos/worklogs/2026-06-18-INIT-01-project-scan.md*
- [x] **[DEBUG-01]** `pnpm autonomos --help` fails with `command not found` after upgrading to 0.3.1 `Priority: 🔴` `Complexity: S` *See: .autonomos/worklogs/2026-06-18-DEBUG-01-tsdown-bin.md*
- [x] **[DEBUG-02]** Fix the tsdown `exports: true` regression in the CLI build, re-publish 0.3.2 `Priority: 🔴` `Complexity: S` *Published: @autonomos/cli@0.3.2 on npm*
- [x] **[DEBUG-03]** Replace the `exports: false` workaround with the proper tsdown-native approach `Priority: 🟠` `Complexity: S` *Published: @autonomos/cli@0.3.3 on npm*
- [x] **[PLAN-V3]** Transform V3_roadmap.md into a structured, dependency-ordered task list `Priority: 🟠` `Complexity: S` *See: .autonomos/worklogs/2026-06-18-PLAN-V3-roadmap-decomposition.md*

## 🚀 Active Sprint

- [x] **[TEST-V3]** Audit all package tests post-V3. **Fixed.** 71 tests pass across 7 packages (16 test files). Changes: deleted 3 obsolete Vue tests (context, plugin, SolarIcon), rewrote exports tests for flat structure (React/Solid/Svelte), fixed Angular imports + exports + casing, rewrote Nuxt fixture + module tests, added vitest configs + test scripts to React and Svelte. `Priority: 🟠` `Complexity: M`

## V3 — Phase 1: Foundation

- [x] **[V3-01]** Implement the parser in `packages/core/src/parser.ts`. Reads `svgs/`, normalizes every icon (strips `<?xml?>`, `<svg>` wrapper, empty `<rect>`, `<title>`, default `stroke-width="1.5"`; replaces hex colors with `currentColor`; extracts the duotone-accent path into `duotoneAccentInner`), generates base64 preview, exposes two iteration modes (`forEachIcon` for unit-per-style, `forEachIconGroupedBy` for reactive-style), and a sync `loadIcon` cache. Integrity check (all 6 styles per logical name) always runs and throws on mismatch. Types: `ParsedIcon`, `ParsedIconGroup`, `IconContext`, `ParseOptions`, `ParseResult`. `Priority: 🔴` `Complexity: M` *See: .autonomos/worklogs/2026-06-18-V3-01-parser-contract.md*
- [x] **[V3-02]** Parser validation: unit tests (Vitest) covering each cleanup rule, duotone extraction (LineDuotone + BoldDuotone), integrity check (missing style, mismatched style folder), cache lifecycle (`parseSvgs` then `loadIcon`, `clearCache` invalidates). Verify byte-equivalent output to the current Svelte `generate-assets.ts` cleanup for a sample of icons across all 6 styles. `Priority: 🔴` `Complexity: S` *Depends on: V3-01*
- [x] **[V3-12]** Rename icons per issue #493 (typos like `plain` → `plane` for paper-plane icons). Strategy: rename in the local Figma copy, re-fetch, then remap `metadata.json` and `metadata-descriptions.json` keys to match. No deprecated aliases in V3 (V3 already breaks compatibility, aliases for old names are dropped). **Implementation:** done in Figma via the new `packages/figma-rename-plugin` plugin (REST API is unusable on the free plan — 6 GETs/month). SVGs re-exported via `packages/figma-export-plugin` (Figma-sandbox, no REST API) and unpacked into `packages/core/svgs/` via the new `pnpm refresh:zip` script. `metadata.json` rebuilt via `pnpm generate:svgs --offline`; 157 stale keys in the hand-curated `metadata-descriptions.json` (18 `name` fields + 139 `essentional` tags) remapped to V3 names by a one-shot script. `Priority: 🟠` `Complexity: M` *Reference: saoudi-h/solar-icons#493*
- [x] **[V3-13]** Standardize import segment casing across all framework packages. **Problem:** today, import paths and component names use PascalCase segments — e.g. `import { CheckRead } from '@solar-icons/react-perf/BoldDuotone'`, or a directory `CheckRead.svelte`. The wider JS/TS ecosystem treats this as a code smell: import segments are typically lowercase or kebab-case (`@scope/pkg/bold-duotone`, `check-read`). **Why this is hard:** the casing is generated. Renaming the files on disk is not enough — every `generate-assets.ts` re-exports components under the file name, and the index files re-export those. The fix has to happen at the generation level: (a) the parser's `kebabName` is the canonical form on disk; (b) each framework's hook decides the casing for the *component identifier* (PascalCase) vs. the *import path segment* (lowercase or kebab-case). **Open decision to make before scoping:** lowercase (`bolduotone`, `checkread`) vs. kebab-case (`bold-duotone`, `check-read`) for style directories. Same question for icon file names. `Priority: 🟠` `Complexity: M`

## V3 — Phase 2: Framework hooks

- [x] **[V3-03a]** Write the Svelte parser hook
- [x] **[V3-03b]** Write the Solid parser hook
- [x] **[V3-03c]** Write the Angular parser hook
- [x] **[V3-04]** Write the React parser hook
- [x] **[V3-05]** Write the Vue parser hook
- [x] **[V3-06]** Write the React Native parser hook

## V3 — Phase 3: Package renames

- [x] **[V3-07]** Migrate `@solar-icons/react` to unit-per-style
- [x] **[V3-08a]** Create `@solar-icons/vue-reactive`
- [x] **[V3-08b]** Migrate `@solar-icons/vue` to unit-per-style
- [x] **[V3-08c]** Update `@solar-icons/nuxt`

## V3 — Phase 4: Duotone

- [x] **[V3-09]** Add duotone CSS-var customization to the web framework hooks (React, Vue, Solid, Svelte, Angular). The duotone-accent path emits `style="color: var(--solar-duotone-color, currentColor); opacity: var(--solar-duotone-opacity, 0.5);"`. Also fixed: double-opacity bug (groupDepth tracking in applyDuotoneStyle), broader DUOTONE_ACCENT_REGEX for `<g>`, `<circle>`, `<ellipse>`, `<rect>`, trailing-separator handling in toCamelCase. `Priority: 🔵` `Complexity: M` *See: .autonomos/worklogs/2026-06-20-V3-09-duotone-css-vars.md*

## V3 — Hardening

- [x] **[V3-10]** Sanctify `packages/core/src/metadata-descriptions.json`
- [x] **[V3-11]** Delete the now-unused `scripts/generate-assets.ts` and `scripts/utils.ts`
- [x] **[V3-14]** ESM-only: drop CJS output from React, Vue, Vue-reactive. All packages now ESM-only with `.mjs` extensions. `Priority: 🟠` `Complexity: S`
- [x] **[V3-15]** Migrate React from Vite+tsc to tsdown (unify build pipeline with Solid, Vue, React Native). Removed vite.config.ts and tsconfig.build.json. `Priority: 🟠` `Complexity: S`

## V3 — Next

- [x] **[V3-16a]** Solar CSS-vars + classes on react (formerly react-perf). `Priority: 🔵` `Complexity: L`
- [x] **[V3-16b]** Apply the same CSS-vars + classes + provider pattern to solid, svelte, angular. Each framework adapts the provider to its own paradigm (Solid signal, Svelte store, Angular DI). `Priority: 🔵` `Complexity: M`
- [x] **[V3-23]** Rename packages for V3.0:
  - `@solar-icons/react-perf` → `@solar-icons/react` (recommended, classic mode)
  - `@solar-icons/react` → `@solar-icons/react-reactive` (niche: dynamic style switching, kept for existing users during V3, deprecated in V4)
  - `@solar-icons/vue` → rewrite in classic mode (like react-perf), no `vue-reactive` package (too few users — 700/week for Vue doesn't justify 2 packages)
  - `@solar-icons/nuxt` → align with new Vue classic mode
  `Priority: 🟠` `Complexity: L`

## Post-V3 (follow-up, not part of V3.0)

- [x] **[POST-01]** Consolidate `apps/docs/core/` into `packages/core/` — one canonical data layer. `Priority: ⚪` `Complexity: M`
- [x] **[POST-02]** Fix Angular peer-dep range: `peerDependencies` says `"17.x - 21.x"`, dev deps pin `22.x`. Widen to match. `Priority: ⚪` `Complexity: S`
- [x] **[POST-03]** ~~In V4: remove `@solar-icons/react-reactive`~~ → Promoted to V3: **[DROP-RR]**

## 🚀 Current Sprint

- [x] **[POST-04]** Update demo apps with V3 features (SolarProvider, useSolar, CSS vars, duotone controls). Rename `react-perf-app` → `react-app`. `Priority: 🟠` `Complexity: M`
- [x] **[POST-05]** Add V3 features to `@solar-icons/react-reactive`: `secondaryColor`/`secondaryOpacity` duotone props, `strokeWidth` prop for Linear/Broken/LineDuotone styles. `Priority: 🟠` `Complexity: M`
- [x] **[POST-06]** Integrate V3 features into `@solar-icons/react-native`: `secondaryColor`/`secondaryOpacity`, `strokeWidth`. React Context-based SolarProvider with useState (no CSS vars in RN). Duotone accent paths use JSX expressions. `Priority: 🟠` `Complexity: L`
- [x] **[POST-08]** Add `Icon` suffix to all component names (`HomeBold` → `HomeBoldIcon`). Packages done. Demos + docs pending. `Priority: 🟠` `Complexity: M`
- [x] **[POST-09]** Update `@solar-icons/react-native` with full V3 features: Provider (React Context), strokeWidth, secondaryColor/secondaryOpacity, Icon suffix. `Priority: 🟠` `Complexity: M`
- [x] **[POST-10]** Review and update `@solar-icons/react-reactive`: added SolarProvider + useSolar, same as react. `Priority: 🔵` `Complexity: S`

## 🎯 V3 Beta — Remaining Tasks

- [x] **[DROP-RR]** Remove `@solar-icons/react-reactive` package. One React package. Update all imports (docs, demo apps, generated files). Delete `packages/react-reactive/`. `Priority: 🔴` `Complexity: M`
- [x] **[REACT-CLEANUP]** React package modernized: flatten directory structure (no categories), drop forwardRef → ref prop (React 19), remove SSR completely, add dynamic exports with 6-style JSDoc previews, short import aliases, add children type to IconBaseProps. `Priority: 🔴` `Complexity: L`
- [x] **[REACT-COMPAT]** Evaluate React 19 vs 18 compatibility. `ref` prop is React 19 exclusive, `forwardRef` is deprecated but functional in 19. **Decision:** keep `forwardRef` for backward compat with React 18.0+. No change needed to peerDeps (`>=16.8` already covers it). Code updated: parser-hook, IconBase, types in both react and react-native. `Priority: 🟠` `Complexity: S`
- [x] **[PROPAGATE]** Apply same transformations to all other packages (Vue, Solid, Svelte, Angular, React Native): flatten directories, dynamic exports, Icon suffix everywhere, secondaryColor naming, remove any SSR/forwardRef/mirrored patterns. Follow same architecture as React. `Priority: 🔴` `Complexity: L`
- [x] **[DOCS-V3]** Update documentation for V3.0: document all V3 features (CSS vars, classes, SolarProvider, useSolar, secondaryColor, strokeWidth). Remove obsolete content (react-reactive, old package names, mirrored). Update package pages. `Priority: 🟠` `Complexity: L`
- [x] **[MIGRATION]** Create V3 migration guide: breaking changes summary, package rename map, before/after code examples, AI-assisted codemod instructions. `Priority: 🟠` `Complexity: M`
- [x] **[VUE-DYNAMIC-BROKEN]** All 1246 generated files in `packages/vue/src/icons/dynamic/*.ts` are silently broken: they import the 6 style components (Bold, BoldDuotone, Broken, Linear, LineDuotone, Outline) but never pass them as the `styles` prop to `DynamicIcon`. Result: `<component :is="null">` renders nothing. Root cause: `packages/vue/scripts/generate-assets.ts:generateDynamicFile` was not updated in commit `f9204fbc5` ("use core's StyleComponentsMap, Weight, WEIGHT_MAP in 5 dynamic-icon files") — the `DynamicIcon.vue` was migrated to require a `styles` prop, but the generator template was not. **Fix:** in `generateDynamicFile`, the generated `h(DynamicIcon, {...})` call must include `styles: { bold: Bold, 'bold-duotone': BoldDuotone, broken: Broken, linear: Linear, 'line-duotone': LineDuotone, outline: Outline }`. Compare with React's canonical pattern in `packages/react/scripts/generate-assets.ts:115-167`. Regression also blocks BETA publish. **Fixed.** `generateDynamicFile` now emits a `styles: { ... }` object mirroring React's pattern. Verified: `pnpm build`, `pnpm typecheck`, `pnpm test` (7/7). See `.autonomos/worklogs/2026-07-01-VUE-DYNAMIC-BROKEN.md`. `Priority: 🔴` `Complexity: S`
- [x] **[VUE-APP-FIX]** `apps/vue-app` fails on `pnpm dev` with a Vue template parse error. **Root cause:** pre-existing template bugs in 2 files + pre-V3 → V3 icon names in 3 files (the package rename happened in V3-23, this app was never migrated). Three layers to fix: (1) `ProviderDemo.vue` has an orphan `</SolarProvider>` close tag with no matching opening tag — likely from a partial refactor where the opening `<SolarProvider :color :size :stroke-width>` was dropped. Also has an empty Mirror `<label>` (the `mirrored` prop was removed in V3 in `d348aad66`). (2) `ProviderDemoInner.vue` has a stray `</button>` close tag with no opening tag, an empty `<span>`, and references pre-V3 icon names (`HomeBold`, `StarBold`, `HeartBold`) that don't exist in V3 (V3 names are `HomeBoldIcon`, etc.). (3) `HomeView.vue` has 14 pre-V3 icon references (`HomeBold`, `SettingsBold`, `UserBold`, `HeartBold`, `StarBold`, `BellBold`, `InfoCircleBold`) that need `Icon` suffixing. Same class of breakage as the tracked `[ANGULAR-APP-MIGRATE]` and `[DOCS-MIGRATE]` (pre-V3 API usage in demo apps not migrated). **Fixed.** ProviderDemo wrapped in `<SolarProvider>` with bound refs, ProviderDemoInner stray tags removed + icons renamed, HomeView 12 renames, AppThemeToggle 2 renames (total 17). Dev server starts clean (HTTP 200, no parse errors). Pre-existing type errors in unused files (`GalColorPicker.vue`, `GalStyle.vue`, `GridDemo.vue`) tracked separately. See `.autonomos/worklogs/2026-07-01-VUE-APP-FIX.md`. `Priority: 🟠` `Complexity: S`
- [x] **[VUE-NAMED-EXPORTS]** Switch `@solar-icons/vue` from `export default` to **named exports** for consistency with React/Solid/Svelte. All 8732 generated files (per-style + dynamic + barrels) currently use `export default XxxIcon` + barrel `export { default as XxxIcon } from ...`. Public API stays the same (users do `import { XxxIcon } from '@solar-icons/vue'`); only deep imports change (`import XxxIcon from '@solar-icons/vue/bold/...'` → `import { XxxIcon } from '@solar-icons/vue/bold/...'`). The V3 docs already document the named pattern (see `apps/docs/content/docs/v3/frameworks/vue.mdx:18`, `apps/docs/content/docs/v3/migration-to-v3/vue.mdx:44`) — the code is the only thing out of step. **Scope:** (1) `packages/vue/scripts/parser-hook.ts:vueComponentFile` — `export default` → `export const`; (2) `packages/vue/scripts/generate-assets.ts:generateDynamicFile` — `import X from ...` → `import { XxxIcon as X } from ...`; (3) `packages/vue/scripts/generate-assets.ts:generateIndexes` — barrel re-exports `export { default as ${name}Icon }` → `export { ${name}Icon }`; (4) `packages/vue/__tests__/icons-basic.test.ts` — deep default import → named import. `IconBase.vue` import stays default (Vue SFC convention). **Fixed.** Verified: `pnpm build`, `pnpm typecheck`, `pnpm test` (9/9, +2 dynamic regression tests). Public API unchanged for barrel consumers. See `.autonomos/worklogs/2026-07-01-VUE-NAMED-EXPORTS.md`. Also renamed "V2" → "pre-V3" in 6 AGENT.md/worklog/TASKS.md files (user clarification: no unified V2, packages had independent versions). `Priority: 🟠` `Complexity: M`
- [ ] **[BETA]** Publish all packages as `3.0.0-beta.1`: bump versions, create changesets, verify all builds, publish to npm with `--tag beta` on the `beta` branch. `Priority: 🔴` `Complexity: M`
- [ ] **[CHANGELOG]** Generate V3.0 changelog from commits. `Priority: 🔵` `Complexity: S`
- [x] **[ICON-RENAMES]** Document V3 icon renames (31 names) in `/docs/v3/migration-to-v3/icon-renames`. 18 from issue #493, 13 dropped from pre-V3 ICON_RENAMES shim. `Priority: 🟠` `Complexity: S`

## 🎨 Docs UI redesign

- [x] **[DOCS-UI-01]** FilterBar redesign plan (page `/icons`, `apps/docs/components/icons-page/sections/icons/FilterBar.tsx`). Plan only — no implementation this session. Covers: dual ColorPicker theme conflict (sync-theme toggle must live on primary only), unlabeled controls (tooltips + icons + popovers), bar saturation (group by section), categories replacement (exhaustive checkbox list behind a "Categories" trigger). See `.autonomos/worklogs/2026-06-28-DOCS-UI-01-filterbar-redesign-plan.md` for the plan, the 2026-06-30 worklog for the final state (FilterBar rebuild, style picker, geometry control, color pickers, view mode, sidebar, grouped view, search, URL state, animation simplification, removed `InitState`, fix layouts and ScrollFade). `Priority: 🟠` `Complexity: M`
- [x] **[DOCS-UI-02]** `/icons` page: `<IconDetail>` bottom panel breaks the no-scroll layout. When the panel opens, it currently adds a fixed height (or hides the last row of icons + the last categories in the sidebar when forced into a fixed-height shell). **Fix:** when `<IconDetail>` opens, reduce the measured height of the grid row and the categories sidebar by the panel's measured height, so both keep native scroll with the bottom of their content fully reachable. The height of the detail panel flows up via an `onHeightChange` prop (same pattern as `IconGridVirtualized`). No magic numbers on the row, no `h-dvh` workarounds. **Done.** `FloatingDrawer` measures itself with a `ResizeObserver` and reports via `onHeightChange`; `IconShowcase` lifts it to `detailHeight` state and passes it to `<IconGridVirtualized>`, which subtracts it from its `window.innerHeight - top - 56` measurement. Re-measured on every panel height change via `requestAnimationFrame` (deferred to next frame so the parent's state update has settled into the DOM). Close path reports `0` explicitly (the `ResizeObserver` disconnects on unmount). **User follow-up:** the `gap-4` (16px) on the inner `<div>` of `<IconShowcase>` between the row and the panel was below the grid (not in `rect.top`), and `getBoundingClientRect().height` was reporting the Framer Motion initial scale (`0.95`), not the layout box. Both fixed: added `ROW_TO_DETAIL_GAP = 16` to the grid's measurement; switched the drawer's report to `el.offsetHeight` (transform-agnostic). See `.autonomos/worklogs/2026-06-30-DOCS-UI-02.md`. `Priority: 🟠` `Complexity: M`

## 🧹 V3 — Technical debt cleanup (2026-06-25)

Identified during the 2026-06-25 technical audit. Each task is one commit, scoped per package.

- [x] **[CLEAN-01]** Move `parser-hook.ts` from `src/` to `scripts/` in 6 packages. ✅ Commit `f5bbbf07`
- [x] **[CLEAN-02]** Delete dead files: `vue/src/category.ts`, `angular/src/default-attributes.ts`, svelte mjs shims, MD notes, tsconfig.build.json files, `vitest.setup.ts` stub. ✅ Commit `2d7222a7`
- [x] **[CLEAN-03]** Kill dead deps: Vue `@babel/core`, `vite-plugin-static-copy`; Svelte `tsdown`, `rollup-plugin-svelte`, `svelte-preprocess`, `svelte2tsx`. ✅ Commit `2790e08a`
- [x] **[CLEAN-04]** Align package versions to 3.0.0: Svelte, RN, Angular, Solid, Nuxt all bumped. ✅ Commit `396f2deb`
- [x] **[CLEAN-09]** Fix Solid nested `<svg>` bug (use `iconBody` string prop + `<g innerHTML>` in IconBase) + fix RN generated main entry re-exporting `DynamicIcon` (pre-existing from f16e8ae1). ✅ Commit `5b4b7607`
- [/] **[CLEAN-11]** Push `v3` branch to `origin/v3` (29 unpushed commits after cleanup). `Priority: 🔴` `Complexity: S`
- [/] **[CLEAN-12]** Verify `pnpm turbo run build` end-to-end. **8/8 packages build successfully.** Demo apps have pre-existing breakages (see below). `Priority: 🔴` `Complexity: M`

## ⚠️ Pre-existing breakages found during CLEAN-12

These were broken before the 2026-06-25 cleanup. **Not fixed in this session** (separate scope).

- **[ANGULAR-APP-MIGRATE]** `apps/angular-app` still uses pre-V3 API: imports `HomeBold` etc. (no `Icon` suffix), uses `@solar-icons/angular/arrows` (category path, removed). Last touched in `d348aad6` (remove mirrored), before POST-08 (Icon suffix). **Tracked for separate migration.**
- **[DOCS-MIGRATE]** `apps/docs` references `@solar-icons/react/ssr` (removed in 306698ef/623b89b8) and still uses pre-V3 component names in MDX. Last touched in `bfcfa5a2` (set up pre-V3/v3 structure), partial migration only.
- **`vue-app`, `svelte-app`, `test-react-native-icons`**: no `build` script — these are dev apps that use `esbuild`/`build-only` directly. Not in turbo's default `build` task.

## ⏸️ Deferred (pending core architecture decision)

- **[CLEAN-05]** Fix Svelte `peerDependencies.svelte: ">= 4.0.0"` (source uses Svelte 5 runes, peerDep is false).
- **[CLEAN-06]** Retyper the 4 `StyleComponents` interfaces (Vue, Svelte, RN, Solid) — currently `any`.
- **[CLEAN-07+08]** Move `applyDuotoneStyle`, `StyleComponents`, `Weight` types, and `dynamic-icon` template into `@solar-icons/core` for cross-package reuse. **Depends on:** core architecture decision (Path A: build-as-contract, or Path B: source-only).
- **[CLEAN-10]** Unify Angular's directive-on-`<svg>` API to match the 6 other packages (render their own `<svg>`).
- [/] **[CORE-ARCH]** **Path A decided 2026-06-25**: make `dist/` the source of truth for consumers, switch framework packages to clean `from "@solar-icons/core"` imports. Implementation in 7 sub-tasks (A1–A7).

## 🧹 V3 — Technical debt cleanup (2026-06-25)

Identified during the 2026-06-25 technical audit. Each task is one commit, scoped per package.

- [/] **[CLEAN-01]** Move `parser-hook.ts` from `src/` to `scripts/` in 6 packages (react, vue, solid, svelte, angular, react-native). Update imports in `generate-assets.ts`. Remove from each package's tsconfig `include` (where applicable). `Priority: 🟠` `Complexity: S`
- [ ] **[CLEAN-02]** Delete dead files: `vue/src/category.ts`, `angular/src/default-attributes.ts`, `svelte/scripts/compile-svelte.mjs`, `svelte/scripts/copy-svelte.mjs`, `svelte/SESSION_SUMMARY.md`, `svelte/WORK_IN_PROGRESS.md`, `vue/tsconfig.build.json`, `vue/vitest.setup.ts` (1-line stub), `svelte/tsconfig.build.json`. Also clean stale `.d.ts` artifacts in `core/src/`. `Priority: 🟠` `Complexity: S`
- [ ] **[CLEAN-03]** Kill dead dependencies after verification: Vue `@babel/core`, `@vitejs/plugin-vue`, `vite-plugin-static-copy`. Svelte `tsdown` (no longer used), `rollup-plugin-svelte`, `svelte-preprocess`, `svelte2tsx`, `@sveltejs/vite-plugin-svelte` (verify). `Priority: 🟠` `Complexity: S`
- [ ] **[CLEAN-04]** Align package versions: Svelte `1.1.1 → 3.0.0`, React-Native `1.1.1 → 3.0.0`, Angular `1.0.1 → 3.0.0`. React and Vue already at 3.0.0. `Priority: 🟠` `Complexity: S`
- [ ] **[CLEAN-09]** Fix Solid `dynamic` icon nested `<svg>` bug: generated `template('<svg>...</svg>', ...)` produces nested SVG when passed as children to IconBase (which already renders `<svg>`). Either change parser-hook to emit only the inner, or use a non-template approach. `Priority: 🔴` `Complexity: M`
- [ ] **[CLEAN-11]** Push `v3` branch to `origin/v3` (23 unpushed commits). `Priority: 🔴` `Complexity: S`
- [ ] **[CLEAN-12]** Verify `pnpm turbo run build` end-to-end on the full monorepo. Catch regressions from CLEAN-01 to CLEAN-09. `Priority: 🔴` `Complexity: M`

## ⏸️ Deferred (pending core architecture decision)

- **[CLEAN-05]** Fix Svelte `peerDependencies.svelte: ">= 4.0.0"` (source uses Svelte 5 runes, peerDep is false).
- **[CLEAN-06]** Retyper the 4 `StyleComponents` interfaces (Vue, Svelte, RN, Solid) — currently `any`.
- **[CLEAN-07+08]** Move `applyDuotoneStyle`, `StyleComponents`, `Weight` types, and `dynamic-icon` template into `@solar-icons/core` for cross-package reuse. **Depends on:** core architecture decision (Path A: build-as-contract, or Path B: source-only).
- **[CLEAN-10]** Unify Angular's directive-on-`<svg>` API to match the 6 other packages (render their own `<svg>`).
- [/] **[CORE-ARCH]** **Path A decided 2026-06-25**: make `dist/` the source of truth for consumers, switch framework packages to clean `from "@solar-icons/core"` imports. Implementation in 7 sub-tasks (A1–A7).
