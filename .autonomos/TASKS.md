# PROJECT TASKS & ROADMAP

> **LEGEND**
> **Priority:** [🔴 Critical] [🟠 High] [🔵 Medium] [⚪ Low]
> **Complexity:** [S] Small (1h), [M] Medium (4h), [L] Large (1-2 days), [XL] Huge (Planning req.)
> **Status:** [ ] Todo, [/] In Progress, [x] Done, [!] Blocked

> **V2 plan source:** `packages/core/V2_roadmap.md` (untracked, French, internal working draft). TASKS.md is the canonical task list — new tasks can be added, removed, or refined as discoveries are made. The roadmap is not a strict contract.

## 🚧 Active

### Extended icon set (EXT-ICONS) — new epic (2026-08-14)

> **Retained context (sessions 2026-08-14):** upstream (480 Design Solar Icons Set) abandoned ~4 years — the set is frozen at 1,246 icons. Missing essential undecorated symbols, see issue #430 (add/minus/close/exclamation/question). **Licensing resolved:** CC BY 4.0 (verified in LICENSE-THIRD-PARTY) explicitly grants adaptation rights — extended icons ship in the same distribution, whole set stays CC BY 4.0, attribution to 480 Design kept + per-icon author fields for additions. **Architecture kept:** private Figma fork = visual source of truth (6 variants per icon, fix → rename → export plugins); repo metadata (tags, descriptions) = metadata source of truth (Figma is not a DB). **UX decided:** unified imports, no separate package (`import { AddIcon } from '@solar-icons/react'`), extended icons flagged in metadata. **Lucide icon model studied:** per-icon `contributors` (required), `aliases` with structured deprecation lifecycle (`deprecated`/`deprecationReason`/`toBeRemovedInVersion`), multi-value `categories`, `use-cases` field, JSON Schema enforcement (`additionalProperties: false`, required fields). **Public tracking issue:** #527 (opened 2026-08-14). See `worklogs/2026-08-14-EXT-ICONS.md`.

- [x] **[EXT-METADATA]** Extend core icon metadata: `origin` (`upstream`|`extended`), `addedAt`, `author` (per-icon, only for extended; upstream inherits 480 Design), `state` (`stable`|`beta`, beta until visually validated in demo apps), plus Lucide-inspired `aliases` as name synonyms (`add`→`plus` — needed by EXT-FIRST-BATCH) and `use-cases`. Enforce with a JSON Schema in core (Lucide pattern: `additionalProperties: false` + required fields) so the structure is machine-checked, not convention. ✅ Implemented on `feat/extended-icons` (uncommitted): `src/descriptions.schema.json` (draft 2020-12), `IconOrigin`/`IconState`/`IconDescription` in `src/types.ts`, `src/scripts/validate-descriptions.ts` (ajv + alias collision rules), `check-descriptions.ts` extended (schema + alias checks vs `metadata.json` icon names), 15 new vitest tests (36 total, green), typecheck/lint/prettier green. Zero backfill: absent fields default to upstream/stable. `Priority: 🟠` `Complexity: M`
- [ ] **[EXT-DIFF-GATE]** New-icon detection + metadata gate: diff the re-extracted `svgs/` against git HEAD inside `refresh-from-figma-zip.sh` (new = added, missing = removed, changed = modified); any new icon without required metadata (description, tags, attribution, date) makes `generate:svgs --offline`/checks fail the build (extend the existing `check-*.ts` exit(1) pattern). Renames surface as delete+add → keep the hand-curated remap workflow (`metadata-descriptions.json`). `Priority: 🟠` `Complexity: M`
- [ ] **[EXT-AUTHORING]** Authoring workflow doc for extended icons: draw in the private Figma fork with 6 variants, run fix → rename → export plugins, drop ZIP, run refresh. Codify the per-icon standards (1.5px strokes, single stroke cap, correct colors, dedup names). `Priority: 🔵` `Complexity: S`
- [ ] **[EXT-FIRST-BATCH]** First batch of extended icons resolving issue #430 blockers: undecorated `plus`/`minus`/`close`/`exclamation`/`question` (+ alias mapping so synonyms resolve) — shipped through the full pipeline with metadata, visually validated in demo apps. `Priority: 🟠` `Complexity: M`
- [ ] **[EXT-DOCS]** Docs & communication: per-icon attribution display, "new" badge via `addedAt`, "latest additions" section, `state` filter, release announcement flow. `Priority: 🔵` `Complexity: M`
- [ ] **[EXT-PLUGIN-DELTA]** *(deferred)* Figma plugin delta: load a lightweight `manifest.json` from the CDN at startup (embedded copy as offline fallback) + lazy-fetch only new/extended icons, so set updates need no plugin republication. Until then, decoupled cadence: packages ship continuously, plugin embeds the full set and updates occasionally. `Priority: ⚪` `Complexity: L`
- [ ] **[EXT-CONTRIB]** *(deferred)* Community contributions: CONTRIBUTING.md section (contributors license icons under CC BY 4.0 via PR declaration — mirrors Lucide's per-icon `contributors` model), icon-request issue template, review process. `Priority: 🔵` `Complexity: L`
- [ ] **[EXT-ALIASES-LIFECYCLE]** *(deferred)* Declarative alias/rename deprecation lifecycle (Lucide model: `deprecated`, `deprecationReason`, `toBeRemovedInVersion` + runtime behavior). **Decision (2026-08-14): deferred —** V2 shipped with hard breaking changes and no immediate rename need; introducing the lifecycle makes sense when there is something to deprecate. The `aliases` name-synonym field is already in scope in EXT-METADATA (needed for `add`→`plus`); only the lifecycle layer is pushed back. `Priority: ⚪` `Complexity: M`

- [x] **[DOCS-COUNT-REACT-PERF]** Keep counting `@solar-icons/react-perf` on the homepage "Weekly Downloads" stat card. The Aug 8 list fix (`b9df8a914`) had dropped it. Deprecated on npm 2026-08-10 (message points to `@solar-icons/react`); downloads keep counting, and the maintainer wants them counted until the numbers become negligible. Re-added to `NPM_PACKAGES` in `apps/docs/components/home-page/sections/community/index.tsx` (position: right after `@solar-icons/react`). Lint + typecheck green. `Priority: 🟠` `Complexity: S`

- [x] **[AGENT-CLEANUP]** Refresh all AGENT.md files to the stable-v2 state. Removed dated session sections (journals belong in worklogs), fixed wrong version claims (`@3.0.0`/`@1.x` → v2 stable), renamed residual `V3-*` labels to v2, replaced the stale beta-first/prerelease release-governance entries with current facts (V2 stable since 2026-08-07, `pre` mode exited), fixed the `.autonomos` tracking note (TASKS.md is tracked; only `worklogs/` are gitignored), updated `react-perf` (deprecated) and `static`/`js` (released) status, removed the obsolete codemod "36 vs 37" constraint, corrected the nuxt changelogen release claim. Prettier clean. `Priority: 🟠` `Complexity: M`

- [x] **[NUXT-BUILD-FIX]** Fix `packages/nuxt` build failure after the 4.5.x dep bump: TS2883 "inferred type of 'default' cannot be named without a reference to 'NuxtModule'". Fixed by explicitly annotating the module (`const module: NuxtModule<SolarNuxtModuleOptions> = defineNuxtModule<...>(...)`) with `import type { NuxtModule } from '@nuxt/schema'`. `pnpm build` + 13 tests green. `test:types`/package-wide lint failures are pre-existing (verified identical before/after the fix). `Priority: 🟠` `Complexity: S`
- [x] **[DOCS-SEARCH-FIX]** Fix Fuse.js search logic for multi-word queries. `Priority: 🟠` `Complexity: S`
- [x] **[DOCS-ICON-ACTIONS]** Fix SVG/PNG download and copy actions on the `/icons` detail panel. SVG download fails (fetches from GitHub raw, 404s). PNG download/copy renders transparent 24×24 (canvas can't resolve CSS vars). Define UX strategy for parametrized vs neutral output. Leverage `@solar-icons/static` CDN for clean SVG source. `Priority: 🔴` `Complexity: M` *Closed 2026-08-05: code committed on main (`d5859e148`), strategy = SVG clean source + PNG customized snapshot. See worklogs/2026-07-15-DOCS-ICON-ACTIONS.md.*

### V2 — Phase 1: Foundation

- [x] **[V2-13]** Standardize import segment casing to kebab-case across all packages. ✅ Commit `84c875b40` (19 Jun). Style directories use kebab-case (`bold`, `bold-duotone`), generated imports use kebab-case paths, all demo apps updated. Zero PascalCase paths remaining. The "open decision" (lowercase vs kebab-case) was resolved to kebab-case at implementation time. `Priority: 🟠` `Complexity: M`

### V2 — Release

- [x] **[V2-CODEMOD-STUDY]** Define the viable scope and release strategy for a V2 migration codemod. Cover safe AST transforms, intentionally manual migrations, React/Vue provider migration risk, `react-perf` consolidation, dry-run/reporting, and documentation. **Decision (2026-07-26): build it as an opt-in, conservative AST codemod before stable; automatic changes only when deterministic, with dry-run/reporting and manual follow-ups for category namespaces/providers.** `Priority: 🔴` `Complexity: M`
- [x] **[BETA]** Publish all packages as `2.0.0-beta.0` (tag `beta`). `Priority: 🔴` `Complexity: M` *(readiness study 2026-07-08 — `worklogs/2026-07-08-BETA-READINESS.md`)*
   - **MAJOR CORRECTION (2026-07-08):** target = **`2.0.0`** ("V3" was unjustified; justification = react/react-perf merge). Repo renamed v3→v2.
   - ✅ (1) Reset versions → `1.x` bases (commit `ec1368a5d`).
   - ✅ (2) `changeset pre enter beta` (tag beta) + changeset major 7 pkgs (commit `ce17fd452`).
   - ✅ (3) Issue #495 + branches `beta`/`v2` created and pushed. Actual version generated by changesets = **`2.0.0-beta.0`** (first prerelease is `beta.0`, not `beta.1`). Issues linked to #495: #494 (`Icon` suffix), #493 (names), #486 (strokeWidth).
   - ✅ (4) CI build+tests OK. Fix nuxt (commit `a21d92e2d`: entries emitted from `src/runtime`) + fix nuxt test mock `@solar-icons/vue` (commit `a6a68f5db`).
   - ✅ (5) Publish `2.0.0-beta.0` tag `beta` — run `28942432333` (rerun after fixing `NPM_TOKEN` secret). 7 pkgs published, `latest` stays `1.x` (beta-first OK).
   - ⚠️ (6) Doc via `main` carefully (no changeset package → no accidental stable via `release.yml`).
   - ✅ (7) Deprecate `@solar-icons/react-perf@2.1.1` → point to `@solar-icons/react`. **Done 2026-08-10 by the maintainer** (`npm deprecate @solar-icons/react-perf@2.1.1 "Discontinued. Use @solar-icons/react (>=2.0.0) instead."`, verified via `npm view @solar-icons/react-perf@2.1.1 deprecated`). V2 is stable (`latest` = 2.0.0), so the message points to a real target. Downloads keep counting.
- [x] **[CHANGELOG]** Generate V2.0 changelog from commits. `Priority: 🔵` `Complexity: S` *Closed 2026-08-05: false task. Changesets auto-generates per-package CHANGELOG.md; `apps/docs/scripts/generate-changelog.ts` aggregates them into the docs changelog page. Nothing to hand-write.*
- [x] **[BETA-ICONS-UPDATE]** Publish new beta version for core icon updates. `Priority: 🟠` `Complexity: S`
- [x] **[DOCS-AUDIT]** Critical review of all V2 docs: version naming (legacy/v2-beta terminology), migration guides, prose quality (stop-slop), Diátaxis structure, code examples. Produced the global findings + fix plan in `.autonomos/worklogs/2026-08-05-DOCS-AUDIT.md`; product fixes remain separate. `Priority: 🔴` `Complexity: L`
- [x] **[V2-PACKAGE-EXPORTS]** Repair and pack-smoke-test the Svelte, React Native, and JS public export maps; add export coverage for every documented entry point. `Priority: 🔴` `Complexity: M` *See worklogs/2026-08-06-V2-PACKAGE-EXPORTS.md*
- [x] **[V2-RELEASE-GATES]** Fix package/docs typecheck and lint failures, make generated-artifact dependencies explicit, and add typecheck/lint/export validation to release CI. `Priority: 🔴` `Complexity: L` *See worklogs/2026-08-06-V2-RELEASE-GATES.md*
- [x] **[V2-API-DOCS-HARDENING]** Resolve Vue plugin, Nuxt provider, Angular accessibility/dynamic-input, React Native accessibility, static-package documentation, and V2 named-import discrepancies. `Priority: 🟠` `Complexity: M` *(All items closed 2026-08-06. Vue plugin: `SolarIconsPlugin` writes `--solar-*` vars on `document.body` client-side (Nuxt pattern), docs/README updated, 5 tests. Nuxt provider: defaults merge fix (partial config kept defaults), warn on ignored styling options with `provider: false`, doc contradiction resolved, 2 tests. Angular: `ariaLabel`→`aria-label` binding, `titleAttr`/`alt` render `<title>` (titleAttr wins), `SolarIcon` forwards `undefined` to reset cleared inputs, 9 tests, build green (TS6059 obsolete). RN: `alt` maps to `accessible`+`accessibilityLabel`, `IconProps` gains `alt`, 3 SSR-render tests, build green. Static docs: broken Webpack/Vite code blocks replaced with real exports, sprite/CDN examples fixed (`<svg><use>`, `<img>` + alt, jsDelivr), verified by node smoke test. Named imports: `icon-renames.mdx` Vue example now named both sides. See worklogs/2026-08-06-API-DOCS-HARDENING-*.md)*
- [x] **[V2-CODEMOD-HARDENING]** Fix multi-framework package dependency migration and add a regression fixture. `Priority: 🟠` `Complexity: S` *(Closed 2026-08-06: removed the `continue` in `transformPackageJson` after the react-perf rewrite so remaining v1 packages in the same dependency section are migrated too; new unit regression test (react-perf + react + vue + RN in one section); new `multi-framework-v1` fixture (react-perf + react v1 + vue v1 in one Vite app, both react and vue plugins) validated end-to-end manually (v1 build → migration → v2 build, all green). Note: `test:fixtures` still aborts at the pre-existing `svelte-v1` v1 build failure (ESM-only old svelte plugin), unrelated to this change — verified on clean tree.)*
- [x] **[DOCS-PKG-COUNT]** Audit and fix stale package counts and package lists in docs and READMEs. The homepage "Total Packages" stat card still showed 8 (community section) and the `NPM_PACKAGES` downloads list had a duplicated `@solar-icons/react` entry and missed `static`, `js`, and `codemod`. The `/docs/v2` landing listed only the 7 framework packages and omitted the Static and JS cards. Reality: 9 icon packages + codemod = 10 npm packages, plus the Figma plugin. Fixed all three spots; lint + typecheck + build green. READMEs (root + per-package) were already current. v1 legacy docs left untouched (frozen API history). `Priority: 🟠` `Complexity: S`
- [x] **[DOCS-UMAMI-BYPASS]** Serve the Umami tracker and recorder through first-party cached docs routes (`/p.js` and `/r.js`) while keeping collection and replay traffic direct to the self-hosted Umami instance. `Priority: 🟠` `Complexity: S` *Completed 2026-08-09; see `worklogs/2026-08-09-DOCS-UMAMI-BYPASS.md`.*

### V2 — Svelte audit & fix

- [x] **[SVELTE-FIX]** Fix `apps/svelte-app` (broken: `Home is not a function` at runtime) and audit `packages/svelte` for full V2 compliance, incl. docs pages. `Priority: 🔴` `Complexity: M`

### V2 — Solid audit & fix

- [x] **[SOLID-FIX]** Fix `apps/solid-app` (broken: `solar.mirrored is not a function` at runtime) and audit `packages/solid` for full V2 compliance, incl. docs pages. `Priority: 🔴` `Complexity: M`

### V2 — Known regressions (pre-existing)

- [x] **[ANGULAR-APP-MIGRATE]** Verified 2026-07-29: the demo imports the current root exports (`SolarHomeBold`, etc.) and `@solar-icons/angular/dynamic`; no removed category path remains. `Priority: 🟠` `Complexity: S`
- [x] **[DOCS-MIGRATE]** Verified 2026-07-29: references to `@solar-icons/react/ssr` and `@solar-icons/react-perf` are either V1 documentation or intentional pre-v2 examples in V2 migration guides. `Priority: 🟠` `Complexity: S`

### V2 — New package studies (user-defined)

- [x] **[STUDY-JS-STATIC]** Study adding two non-framework packages (vanilla + static). **DECISION (2026-07-12): BUILD BOTH.** Not legacy (Lucide static README actively scopes SSR/static; 781k+308k/wk downloads > Angular 22k/wk). Complementary, not competing. v2 theming (color/size/duotone) passes free via CSS vars; only `strokeWidth` is fill-vs-stroke nuanced; provider reimplementable as ~10-line CSS-var helper. Both driven by core codegen → low maintenance. Names: `@solar-icons/js` (vanilla), `@solar-icons/static`. Priority: static first, then js. See `worklogs/2026-07-12-STUDY-JS-STATIC.md`. `Priority: 🔵` `Complexity: M`
- [x] **[FIGMA-PLUGIN-STUDY]** Evaluate a public Figma browser/inserter for the maintained Solar Icons distribution. Result (2026-07-29): the upstream Solar plugin has real adoption, but its current maintenance and source fidelity cannot be verified from public metrics. Solar has a distinct value if it inserts the standardized SVGs with editable strokes. `Priority: 🔵` `Complexity: S`

### V2 — New packages (decided 2026-07-12)

- [x] **[JS-PKG]** Published and visually validated in the JS demo app. `Priority: 🟠` `Complexity: M`
- [x] **[STATIC-PKG]** Published and visually validated in the static demo app. Individual SVG assets, sprite, metadata, and per-icon ESM modules ship with a deliberate files allowlist. **Icon font deferred** to a follow-up. `Priority: 🟠` `Complexity: S/M`
- [x] **[FIGMA-PLUGIN]** Public Solar Icons Figma browser and inserter. The production build uses Vite, React, TypeScript, Base UI, Fuse, and plain CSS; it embeds all 7,476 SVGs, product fonts, and exact Iconify package marks locally. Virtualized grid, live stroke-width preview, horizontal scrubbing, fuzzy search, custom accessible selects, persistent modes, multi-insert, and dark/light themes. Approved on Figma Community: [plugin 1664759238792120976](https://www.figma.com/community/plugin/1664759238792120976). Documentation integrated on docs site. `Priority: 🟠` `Complexity: L`

## ⏸️ Deferred

- [x] **[CLEAN-05]** Svelte now declares `peerDependencies.svelte: ">= 5.0.0"`, matching its Runes-based source. Verified 2026-07-29.
- [x] **[CLEAN-06]** Vue, Svelte, React Native, and Solid dynamic icons now use `StyleComponentsMap<T>` from `@solar-icons/core/runtime`. Verified 2026-07-29.
- [x] **[CLEAN-07+08]** Move `applyDuotoneStyle`, `StyleComponents`, `Weight` types, and `dynamic-icon` template into `@solar-icons/core` for cross-package reuse. **Depends on:** CORE-ARCH. *(Closed 2026-08-06: audit found `applyDuotoneStyle`, `Weight`, `StyleComponentsMap<T>`, `WEIGHT_MAP` were already core-owned and consumed by all packages (CLEAN-06/CORE-ARCH verification); the last real duplication was the `WEIGHTS` array (6 identical copies in the generators + 1 in the Nuxt playground). Added `WEIGHTS` to `packages/core/src/codegen.ts` (canonical order, `readonly Weight[]`), switched all 6 `generate-assets.ts` + the Nuxt playground to import it (nuxt gains `@solar-icons/core` as devDependency). All 6 packages regenerated; tests/typecheck/lint/build green (monorepo 18/18, lint 26/26).)*
- [x] **[CLEAN-10]** Closed 2026-07-29: Angular retains its directive-on-`<svg>` API as an intentional framework-native divergence. No unification is planned.
- [x] **[CORE-ARCH]** Path A decided 2026-06-25: core exports codegen helpers and all six framework generators import from `@solar-icons/core`; no generator imports `core/src`. Verified 2026-07-29.

## ✅ Completed

### V2 — Init & Planning

- [x] **[INIT-01]** Review project context and structure. `Priority: 🔵` `Complexity: S` *See: worklogs/2026-06-18-INIT-01*
- [x] **[DEBUG-01/02/03]** Fix `pnpm autonomos` regression, tsdown `exports: true` bug — published `@autonomos/cli@0.3.2`, `0.3.3`. `Priority: 🔴` *See: worklogs/2026-06-18-DEBUG-01, worklogs/2026-06-18-DEBUG-03*
- [x] **[PLAN-V2]** Transform V2 roadmap into structured task list. `Priority: 🟠` `Complexity: S` *See: worklogs/2026-06-18-PLAN-V2*
- [x] **[TEST-V2]** Audit all package tests post-V2. 71 tests pass across 7 packages (16 test files). `Priority: 🟠` `Complexity: M` *See: worklogs/2026-06-24-react-compat-test-audit*

### V2 — Phase 1: Foundation

- [x] **[V2-01]** Parser implementation — reads `svgs/`, normalizes, duotone extraction, base64 preview, two iteration modes, sync `loadIcon` cache, integrity check. *See: worklogs/2026-06-18-V2-01*
- [x] **[V2-02]** Parser validation — Vitest tests for cleanup rules, duotone extraction, integrity check, cache lifecycle. Depends on V2-01.
- [x] **[V2-12]** Icon renames per issue #493 (plain→plane, etc.) via Figma rename plugin + figma-export-plugin + metadata remap. *Reference: saoudi-h/solar-icons#493*

### V2 — Phase 2: Framework hooks

- [x] **[V2-03a]** Svelte parser hook
- [x] **[V2-03b]** Solid parser hook
- [x] **[V2-03c]** Angular parser hook
- [x] **[V2-04]** React parser hook
- [x] **[V2-05]** Vue parser hook
- [x] **[V2-06]** React Native parser hook

### V2 — Phase 3: Package renames

- [x] **[V2-07]** Migrate `@solar-icons/react` to unit-per-style
- [x] **[V2-08b]** Migrate `@solar-icons/vue` to unit-per-style
- [x] **[V2-08c]** Update `@solar-icons/nuxt`

### V2 — Phase 4: Duotone

- [x] **[V2-09]** Duotone CSS-var customization on all web framework hooks. Also fixed: double-opacity bug, DUOTONE_ACCENT_REGEX, trailing-separator handling. *See: worklogs/2026-06-19-V2-09-handover, worklogs/2026-06-20-V2-09-duotone-css-vars, worklogs/2026-06-20-V2-09-session*

### V2 — Hardening

- [x] **[V2-10]** Sanctify `packages/core/src/metadata-descriptions.json`
- [x] **[V2-11]** Delete unused `scripts/generate-assets.ts` and `scripts/utils.ts`
- [x] **[V2-14]** ESM-only: drop CJS from React, Vue. All packages ESM-only with `.mjs`.
- [x] **[V2-15]** Migrate React from Vite+tsc to tsdown.

### V2 — Next (CSS vars, classes, provider)

- [x] **[V2-16a]** Solar CSS-vars + classes on react (formerly react-perf). `Priority: 🔵` `Complexity: L`
- [x] **[V2-16b]** Same pattern for solid, svelte, angular. `Priority: 🔵` `Complexity: M`
2026-06-21-V2-23-session*

### V2 — Beta tasks

- [x] **[REACT-CLEANUP]** Flatten React directory structure, drop forwardRef, remove SSR, dynamic exports with JSDoc. `Priority: 🔴` `Complexity: L` *See: worklogs/2026-06-24-react-cleanup-propagation*
- [x] **[REACT-COMPAT]** Keep `forwardRef` for React 18 compat (React 19 peer ≥ 16.8). `Priority: 🟠` `Complexity: S` *See: worklogs/2026-06-24-react-compat-test-audit*
- [x] **[PROPAGATE]** Same transformations (flatten dirs, dynamic exports, Icon suffix, secondaryColor) to Vue, Solid, Svelte, Angular, React Native. `Priority: 🔴` `Complexity: L` *See: worklogs/2026-06-24-react-cleanup-propagation*
- [x] **[DOCS-V2]** Update documentation for V2.0: CSS vars, SolarProvider, useSolar, secondaryColor, strokeWidth. Remove obsolete content. `Priority: 🟠` `Complexity: L`
- [x] **[MIGRATION]** Create V2 migration guide (breaking changes, package rename map, before/after code examples, codemod instructions). `Priority: 🟠` `Complexity: M`
- [x] **[VUE-DYNAMIC-BROKEN]** Fix Vue dynamic icons: generator was not passing `styles` prop to `DynamicIcon` — rendered nothing. *See: worklogs/2026-07-01-VUE-DYNAMIC-BROKEN*
- [x] **[VUE-APP-FIX]** Fix `apps/vue-app` template parse errors (orphan tags, pre-V2 icon names). *See: worklogs/2026-07-01-VUE-APP-FIX*
- [x] **[VUE-NAMED-EXPORTS]** Switch `@solar-icons/vue` from `export default` to named exports. *See: worklogs/2026-07-01-VUE-NAMED-EXPORTS*
- [x] **[ICON-RENAMES]** Document V2 icon renames (31 names) in `/docs/v2/migration-to-v2/icon-renames`. `Priority: 🟠` `Complexity: S`
- [x] **[NUXT-PLAYGROUND-FIX]** Fix `@solar-icons/nuxt` playground (broken nuxt.config, stale deps, pre-V2 icon names). `Priority: 🟠` `Complexity: S`

### Post-V2

- [x] **[POST-01]** Consolidate `apps/docs/core/` into `packages/core/`. `Priority: ⚪`
- [x] **[POST-02]** Fix Angular peer-dep range: `"17.x - 22.x"`. `Priority: ⚪`
- [x] **[POST-04]** Update demo apps (V2 features, rename `react-perf-app`→`react-app`). `Priority: 🟠`
- [x] **[POST-06]** V2 features on react-native (secondaryColor, secondaryOpacity, strokeWidth). `Priority: 🟠`
- [x] **[POST-08]** Add `Icon` suffix to all component names. `Priority: 🟠`
- [x] **[POST-09]** Full V2 features on react-native (Provider, strokeWidth, secondaryColor/Opacity, Icon suffix). `Priority: 🟠`

### Docs UI redesign

- [x] **[DOCS-UI-01]** FilterBar redesign — style picker, geometry control, color pickers, view mode, sidebar, search, URL state, animation simplification. *See: worklogs/2026-06-28-DOCS-UI-01, 2026-06-30*
- [x] **[DOCS-UI-02]** `/icons` page: IconDetail bottom panel height reconciliation (FloatingDrawer ResizeObserver, ROW_TO_DETAIL_GAP). *See: worklogs/2026-06-30-DOCS-UI-02*

### Tech debt cleanup (committed)

- [x] **[CLEAN-01]** Move `parser-hook.ts` from `src/` to `scripts/` in 6 packages. ✅ Commit `f5bbbf07` *See: worklogs/2026-06-25-V2-cleanup*
- [x] **[CLEAN-02]** Delete dead files (vue category.ts, angular default-attributes.ts, svelte mjs shims, MD notes, tsconfig.build.json files). ✅ Commit `2d7222a7` *See: worklogs/2026-06-25-V2-cleanup*
- [x] **[CLEAN-03]** Kill dead deps (Vue `@babel/core`, `vite-plugin-static-copy`; Svelte `tsdown`, `rollup-plugin-svelte`, etc.). ✅ Commit `2790e08a` *See: worklogs/2026-06-25-V2-cleanup*
- [x] **[CLEAN-04]** Align package versions to 3.0.0 (Svelte, RN, Angular, Solid, Nuxt). ✅ Commit `396f2deb` *See: worklogs/2026-06-25-V2-cleanup*
- [x] **[CLEAN-09]** Fix Solid nested `<svg>` bug (iconBody string prop + `<g innerHTML>`) + RN DynamicIcon re-export fix. ✅ Commit `5b4b7607` *See: worklogs/2026-06-25-V2-cleanup*
