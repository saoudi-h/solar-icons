# PROJECT TASKS & ROADMAP

> **LEGEND**
> **Priority:** [🔴 Critical] [🟠 High] [🔵 Medium] [⚪ Low]
> **Complexity:** [S] Small (1h), [M] Medium (4h), [L] Large (1-2 days), [XL] Huge (Planning req.)
> **Status:** [ ] Todo, [/] In Progress, [x] Done, [!] Blocked

> **V3 plan source:** `packages/core/V3_roadmap.md` (untracked, French, internal working draft). TASKS.md is the canonical task list — new tasks can be added, removed, or refined as discoveries are made. The roadmap is not a strict contract.

## 🚧 Active

### V3 — Phase 1: Foundation

- [x] **[V3-13]** Standardize import segment casing to kebab-case across all packages. ✅ Commit `84c875b40` (19 Jun). Style directories use kebab-case (`bold`, `bold-duotone`), generated imports use kebab-case paths, all demo apps updated. Zero PascalCase paths remaining. The "open decision" (lowercase vs kebab-case) was resolved to kebab-case at implementation time. `Priority: 🟠` `Complexity: M`

### V3 — Release

- [ ] **[BETA]** Publish all packages as `3.0.0-beta.1`: bump versions, create changesets, verify all builds, publish to npm with `--tag beta` on the `beta` branch. `Priority: 🔴` `Complexity: M`
- [ ] **[CHANGELOG]** Generate V3.0 changelog from commits. `Priority: 🔵` `Complexity: S`

### V3 — Svelte audit & fix

- [x] **[SVELTE-FIX]** Fix `apps/svelte-app` (broken: `Home is not a function` at runtime) and audit `packages/svelte` for full V3 compliance, incl. docs pages. `Priority: 🔴` `Complexity: M`

### V3 — Solid audit & fix

- [x] **[SOLID-FIX]** Fix `apps/solid-app` (broken: `solar.mirrored is not a function` at runtime) and audit `packages/solid` for full V3 compliance, incl. docs pages. `Priority: 🔴` `Complexity: M`

### V3 — Known regressions (pre-existing)

- [ ] **[ANGULAR-APP-MIGRATE]** `apps/angular-app` uses pre-V3 API: `HomeBold` etc. (no `Icon` suffix), `@solar-icons/angular/arrows` (category path, removed). `Priority: 🟠` `Complexity: S`
- [ ] **[DOCS-MIGRATE]** `apps/docs` references `@solar-icons/react/ssr` (removed) and pre-V3 component names in MDX. `Priority: 🟠` `Complexity: S`

## ⏸️ Deferred

- [ ] **[CLEAN-05]** Fix Svelte `peerDependencies.svelte: ">= 4.0.0"` (source uses Svelte 5 runes, peerDep is false).
- [ ] **[CLEAN-06]** Retyper the 4 `StyleComponents` interfaces (Vue, Svelte, RN, Solid) — currently `any`.
- [ ] **[CLEAN-07+08]** Move `applyDuotoneStyle`, `StyleComponents`, `Weight` types, and `dynamic-icon` template into `@solar-icons/core` for cross-package reuse. **Depends on:** CORE-ARCH.
- [ ] **[CLEAN-10]** Unify Angular's directive-on-`<svg>` API to match the 6 other packages (render their own `<svg>`).
- [/] **[CORE-ARCH]** Path A decided 2026-06-25: make `dist/` the source of truth for consumers. Implementation in 7 sub-tasks (A1–A7). Already done: core exports helpers (`codegen.ts`), framework packages import from `@solar-icons/core`. Remaining: verify all 6 packages use core imports only.

## ✅ Completed

### V3 — Init & Planning

- [x] **[INIT-01]** Review project context and structure. `Priority: 🔵` `Complexity: S` *See: worklogs/2026-06-18-INIT-01*
- [x] **[DEBUG-01/02/03]** Fix `pnpm autonomos` regression, tsdown `exports: true` bug — published `@autonomos/cli@0.3.2`, `0.3.3`. `Priority: 🔴` *See: worklogs/2026-06-18-DEBUG-01, worklogs/2026-06-18-DEBUG-03*
- [x] **[PLAN-V3]** Transform V3 roadmap into structured task list. `Priority: 🟠` `Complexity: S` *See: worklogs/2026-06-18-PLAN-V3*
- [x] **[TEST-V3]** Audit all package tests post-V3. 71 tests pass across 7 packages (16 test files). `Priority: 🟠` `Complexity: M` *See: worklogs/2026-06-24-react-compat-test-audit*

### V3 — Phase 1: Foundation

- [x] **[V3-01]** Parser implementation — reads `svgs/`, normalizes, duotone extraction, base64 preview, two iteration modes, sync `loadIcon` cache, integrity check. *See: worklogs/2026-06-18-V3-01*
- [x] **[V3-02]** Parser validation — Vitest tests for cleanup rules, duotone extraction, integrity check, cache lifecycle. Depends on V3-01.
- [x] **[V3-12]** Icon renames per issue #493 (plain→plane, etc.) via Figma rename plugin + figma-export-plugin + metadata remap. *Reference: saoudi-h/solar-icons#493*

### V3 — Phase 2: Framework hooks

- [x] **[V3-03a]** Svelte parser hook
- [x] **[V3-03b]** Solid parser hook
- [x] **[V3-03c]** Angular parser hook
- [x] **[V3-04]** React parser hook
- [x] **[V3-05]** Vue parser hook
- [x] **[V3-06]** React Native parser hook

### V3 — Phase 3: Package renames

- [x] **[V3-07]** Migrate `@solar-icons/react` to unit-per-style
- [x] **[V3-08a]** Create `@solar-icons/vue-reactive`
- [x] **[V3-08b]** Migrate `@solar-icons/vue` to unit-per-style
- [x] **[V3-08c]** Update `@solar-icons/nuxt`

### V3 — Phase 4: Duotone

- [x] **[V3-09]** Duotone CSS-var customization on all web framework hooks. Also fixed: double-opacity bug, DUOTONE_ACCENT_REGEX, trailing-separator handling. *See: worklogs/2026-06-19-V3-09-handover, worklogs/2026-06-20-V3-09-duotone-css-vars, worklogs/2026-06-20-V3-09-session*

### V3 — Hardening

- [x] **[V3-10]** Sanctify `packages/core/src/metadata-descriptions.json`
- [x] **[V3-11]** Delete unused `scripts/generate-assets.ts` and `scripts/utils.ts`
- [x] **[V3-14]** ESM-only: drop CJS from React, Vue, Vue-reactive. All packages ESM-only with `.mjs`.
- [x] **[V3-15]** Migrate React from Vite+tsc to tsdown.

### V3 — Next (CSS vars, classes, provider)

- [x] **[V3-16a]** Solar CSS-vars + classes on react (formerly react-perf). `Priority: 🔵` `Complexity: L`
- [x] **[V3-16b]** Same pattern for solid, svelte, angular. `Priority: 🔵` `Complexity: M`
- [x] **[V3-23]** Rename packages: `react-perf`→`react`, `react`→`react-reactive`, `vue`→classic mode, `nuxt`→aligns with Vue. `Priority: 🟠` `Complexity: L` *See: worklogs/2026-06-21-V3-23-session*

### V3 — Beta tasks

- [x] **[DROP-RR]** Remove `@solar-icons/react-reactive`. `Priority: 🔴` `Complexity: M` *See: worklogs/2026-06-24-react-cleanup-propagation*
- [x] **[REACT-CLEANUP]** Flatten React directory structure, drop forwardRef, remove SSR, dynamic exports with JSDoc. `Priority: 🔴` `Complexity: L` *See: worklogs/2026-06-24-react-cleanup-propagation*
- [x] **[REACT-COMPAT]** Keep `forwardRef` for React 18 compat (React 19 peer ≥ 16.8). `Priority: 🟠` `Complexity: S` *See: worklogs/2026-06-24-react-compat-test-audit*
- [x] **[PROPAGATE]** Same transformations (flatten dirs, dynamic exports, Icon suffix, secondaryColor) to Vue, Solid, Svelte, Angular, React Native. `Priority: 🔴` `Complexity: L` *See: worklogs/2026-06-24-react-cleanup-propagation*
- [x] **[DOCS-V3]** Update documentation for V3.0: CSS vars, SolarProvider, useSolar, secondaryColor, strokeWidth. Remove obsolete content. `Priority: 🟠` `Complexity: L`
- [x] **[MIGRATION]** Create V3 migration guide (breaking changes, package rename map, before/after code examples, codemod instructions). `Priority: 🟠` `Complexity: M`
- [x] **[VUE-DYNAMIC-BROKEN]** Fix Vue dynamic icons: generator was not passing `styles` prop to `DynamicIcon` — rendered nothing. *See: worklogs/2026-07-01-VUE-DYNAMIC-BROKEN*
- [x] **[VUE-APP-FIX]** Fix `apps/vue-app` template parse errors (orphan tags, pre-V3 icon names). *See: worklogs/2026-07-01-VUE-APP-FIX*
- [x] **[VUE-NAMED-EXPORTS]** Switch `@solar-icons/vue` from `export default` to named exports. *See: worklogs/2026-07-01-VUE-NAMED-EXPORTS*
- [x] **[ICON-RENAMES]** Document V3 icon renames (31 names) in `/docs/v3/migration-to-v3/icon-renames`. `Priority: 🟠` `Complexity: S`
- [x] **[NUXT-PLAYGROUND-FIX]** Fix `@solar-icons/nuxt` playground (broken nuxt.config, stale deps, pre-V3 icon names). `Priority: 🟠` `Complexity: S`

### Post-V3

- [x] **[POST-01]** Consolidate `apps/docs/core/` into `packages/core/`. `Priority: ⚪`
- [x] **[POST-02]** Fix Angular peer-dep range: `"17.x - 22.x"`. `Priority: ⚪`
- [x] **[POST-03]** (was: In V4 remove react-reactive) → Promoted to **[DROP-RR]**
- [x] **[POST-04]** Update demo apps (V3 features, rename `react-perf-app`→`react-app`). `Priority: 🟠`
- [x] **[POST-05]** V3 features on react-reactive (secondaryColor, strokeWidth). `Priority: 🟠`
- [x] **[POST-06]** V3 features on react-native (secondaryColor, secondaryOpacity, strokeWidth). `Priority: 🟠`
- [x] **[POST-08]** Add `Icon` suffix to all component names. `Priority: 🟠`
- [x] **[POST-09]** Full V3 features on react-native (Provider, strokeWidth, secondaryColor/Opacity, Icon suffix). `Priority: 🟠`
- [x] **[POST-10]** Review react-reactive: add SolarProvider + useSolar. `Priority: 🔵`

### Docs UI redesign

- [x] **[DOCS-UI-01]** FilterBar redesign — style picker, geometry control, color pickers, view mode, sidebar, search, URL state, animation simplification. *See: worklogs/2026-06-28-DOCS-UI-01, 2026-06-30*
- [x] **[DOCS-UI-02]** `/icons` page: IconDetail bottom panel height reconciliation (FloatingDrawer ResizeObserver, ROW_TO_DETAIL_GAP). *See: worklogs/2026-06-30-DOCS-UI-02*

### Tech debt cleanup (committed)

- [x] **[CLEAN-01]** Move `parser-hook.ts` from `src/` to `scripts/` in 6 packages. ✅ Commit `f5bbbf07` *See: worklogs/2026-06-25-V3-cleanup*
- [x] **[CLEAN-02]** Delete dead files (vue category.ts, angular default-attributes.ts, svelte mjs shims, MD notes, tsconfig.build.json files). ✅ Commit `2d7222a7` *See: worklogs/2026-06-25-V3-cleanup*
- [x] **[CLEAN-03]** Kill dead deps (Vue `@babel/core`, `vite-plugin-static-copy`; Svelte `tsdown`, `rollup-plugin-svelte`, etc.). ✅ Commit `2790e08a` *See: worklogs/2026-06-25-V3-cleanup*
- [x] **[CLEAN-04]** Align package versions to 3.0.0 (Svelte, RN, Angular, Solid, Nuxt). ✅ Commit `396f2deb` *See: worklogs/2026-06-25-V3-cleanup*
- [x] **[CLEAN-09]** Fix Solid nested `<svg>` bug (iconBody string prop + `<g innerHTML>`) + RN DynamicIcon re-export fix. ✅ Commit `5b4b7607` *See: worklogs/2026-06-25-V3-cleanup*
