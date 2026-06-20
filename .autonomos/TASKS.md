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

*(empty — pick a V3 task in the next session)*

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

- [ ] **[V3-16]** Generalize CSS-vars to all SVG style attributes (fill, stroke, stroke-width). Replace hardcoded attributes with `var(--solar-fill, currentColor)`, `var(--solar-stroke, none)`, `var(--solar-stroke-width, 1.5)`. This enables global theming via CSS cascade without framework re-renders. Requires design discussion: how props interact with CSS vars, conflict resolution, default behavior. `Priority: 🔵` `Complexity: L` *See: discussion about CSS-native reactivity for icon styling*
- [ ] **[V3-17]** Create `SolarTheme` provider component for React (and possibly Vue). A component that sets CSS custom properties on a wrapper element, allowing reactive theme changes via framework state while leveraging browser-native CSS cascade for performance. Example: `<SolarTheme primaryColor="#ccc" duotoneColor="#f00">`. Reduces the need for react-reactive/vue-reactive for theming use cases. `Priority: 🔵` `Complexity: M`
- [ ] **[V3-18]** Re-evaluate the role of `react-reactive` and `vue-reactive`. With CSS-vars providing theming and the `SolarTheme` provider handling reactive customization, reactive-style packages may only be needed for dynamic style switching (changing icon style at runtime). Document the scope reduction or consider deprecation path. `Priority: ⚪` `Complexity: M`
- [x] **[V3-19]** Update demo apps (vue-app, svelte-app, angular-app) with duotone CSS-var controls like the SolidJS demo. Import paths must use kebab-case (`@solar-icons/vue/bold` not `@solar-icons/vue/Bold`). `Priority: 🔵` `Complexity: S`
- [x] **[V3-20]** Audit all demo apps for broken imports. V3-13 renamed style directories to kebab-case; any app importing PascalCase paths (`/Bold`, `/LineDuotone`) must be updated to kebab-case (`/bold`, `/line-duotone`). `Priority: 🟠` `Complexity: S`
- [x] **[V3-21]** Rename `arrows-action/scale` → `arrows-action/scaling` in Figma, re-export SVGs, update `metadata.json` and `metadata-descriptions.json`, rebuild all packages. The kitchen scale icon in `devices/scale` keeps its name. `Priority: 🟠` `Complexity: S`
- [x] **[V3-22]** Simplify export structure in remaining packages (react, solid, vue, svelte, react-native): remove `solar` namespace, remove category-level exports, switch to native tsdown `dts`, deduplicate `styled.ts` root with named exports. Follow the react-perf model established in V3-21. `Priority: 🟠` `Complexity: L`

## Post-V3 (follow-up, not part of V3.0)

- [ ] **[POST-01]** Consolidate `apps/docs/core/` into `packages/core/` — one canonical data layer. `Priority: ⚪` `Complexity: M`
- [ ] **[POST-02]** Fix Angular peer-dep range: `peerDependencies` says `"17.x - 21.x"`, dev deps pin `22.x`. Widen to match. `Priority: ⚪` `Complexity: S`

*(add future tasks here)*
