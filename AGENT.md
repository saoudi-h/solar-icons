---
name: "solar-icons"
type: "monorepo"
status: "active"
---
# AGENT CONTEXT: solar-icons

## 🧠 Context & Objectives

Solar Icons is a public icon library: 1,246 unique icons × 6 styles (Bold, BoldDuotone, Broken, Linear, LineDuotone, Outline) = 7,476 SVG variations. Packaged for React, React Native, Vue, Nuxt, Svelte 5, SolidJS, Angular 17+. Icons originate from 480 Design's Figma file (CC BY 4.0). Package code is MIT. Maintainer: Saoudi Hakim. Public site: https://solar-icons.vercel.app.

## ⚙️ Workflow & Preferences

- **Commits:** Conventional Commits, enforced by `@commitlint/config-conventional`. Allowed types: `build`, `chore`, `ci`, `docs`, `feat`, `fix`, `perf`, `refactor`, `revert`, `style`, `test`.
- **Commit scopes:** the `apps/*` or `packages/*` name. Omit when the change touches 3+ apps/packages or the root tooling. No subject-based scopes.
- **One focused commit per change.** Split a session's work across multiple commits when it spans several dimensions.
- **Versioning & publishing:** Changesets. `.changeset/config.json` lists the docs app and the demo apps under `ignore`.
- **PR base branch:** `main`. Beta releases flow through the `beta` branch via `.github/workflows/`.
- **Language:** English only. The repo contains no tracked French content.
- **Pre-commit:** Husky + lint-staged at the root, per-package `lint-staged.config.mjs`.

## 🏗 Stack & Architecture

- **Package manager:** pnpm 11.5.3, Node ≥ 18.
- **Monorepo orchestration:** Turborepo 2.x. `turbo.json` defines `build`, `dev`, `clean`, `typecheck`, `lint`, `format`, `pre-commit`, `test`. `test` depends on `build`.
- **Language:** TypeScript 6, ESM-only.
- **Shared tooling:** `@tala-tools/eslint`, `@tala-tools/prettier`, `@tala-tools/tsconfig` (base configs each package extends).
- **Build tools by package:** Vite 8, tsdown, svelte-package, nuxt-module-build, ngc.
- **Test framework:** Vitest 4.
- **Docs site:** Next.js 16 + Fumadocs at `apps/docs`.

## 📁 Key Directories

| Path | Description |
|---|---|
| `packages/core` | Private source-of-truth for SVGs, metadata, types, utils. |
| `packages/react`, `vue`, `nuxt`, `svelte`, `solid`, `angular`, `react-native` | Public framework packages. (`@solar-icons/react-perf` was merged into `@solar-icons/react` and is discontinued — see Release governance.) |
| `packages/static` | Public non-framework package (`@solar-icons/static`): static assets from `core/svgs` — individual SVGs, SVG sprite, string map. No runtime, no framework. `scripts/generate-assets.ts` consumes `parseSvgs` + `transformDuotoneAccent` from `@solar-icons/core`. |
| `packages/js` | **Planned** (`@solar-icons/js`): vanilla-JS runtime DOM injection (Lucide `lucide` equivalent). Not yet created. |
| `packages/figma-fix-plugin` | Figma plugin source. Not part of the pnpm workspace. |
| `packages/figma-rename-plugin` | Figma plugin source (added for v2). Renames icon components in the local Figma file per issue #493. Runs in Figma's sandbox, no REST API calls. Not part of the pnpm workspace. |
| `packages/figma-export-plugin` | Figma plugin source (added for v2). Exports every component as SVG via `node.exportAsync()`, bundles as ZIP, triggers browser download. The Figma-REST-free replacement for `pnpm generate:svgs` on the free plan. Not part of the pnpm workspace. |
| `apps/docs` | Next.js + Fumadocs documentation site. |
| `apps/*-app`, `apps/test-react-native-icons` | Demo/test apps. |
| `.autonomos` | Autonomos AI workflow. `worklogs/` and `TASKS.md` are gitignored. |
| `.agent/`, `.claude/`, `.clinerules/`, `.opencode/` | Per-tool mirrors of the Autonomos workflows. Tracked. |

## ⚠️ Known Constraints

- **`apps/docs` runs `fumadocs-mdx` in `postinstall`** — if `pnpm install` is interrupted, rerun `fumadocs-mdx` manually before `pnpm dev` or `pnpm build`.
- **`apps/docs/next.config.mts` sets `typescript.ignoreBuildErrors: true`** — the docs build does not fail on type errors. Do not use it as a typecheck; run `pnpm typecheck` explicitly.
- **`packages/core` depends on `figma-api@2.2.0-beta`** — Figma generation is gated on `FIGMA_API_TOKEN` + `FIGMA_FILE_ID` env vars (declared in `turbo.json` `globalEnv`).
- **TypeScript 6 native preview (`tsgo`)** is used for typecheck in some packages, `tsc` in others. The split is per-package, not global.
- **Per-package `copy:licenses` script** is invoked on every build (`cp ../../LICENSE ./LICENSE && cp ../../LICENSE-THIRD-PARTY ./LICENSE-THIRD-PARTY`). The root LICENSE files are the canonical source.
- **Parser-hook imports from core must use `../../core/src/parser.ts`** — with the flat directory structure (no category subdirectories), import paths changed from `../../../core/src/parser.ts` to `../../core/src/parser.ts`. The original `../../../core/src/parser.ts` resolves to root, not `packages/`. It only worked before V3-09 because the imports were type-only (erased at compile time). All hooks now define `applyDuotoneStyle` inline rather than importing a value from core, which avoids cross-package `rootDir` errors with `tsc`.
- **`parser-hook.ts` belongs in `scripts/`, not in `src/`** (CLEAN-01, 2026-06-25). The parser-hook is a build-time codegen template imported by `generate-assets.ts`. It is not a runtime artifact, not in any package's `exports`, and not bundled into `dist/`. Keeping it in `src/` polluted the IDE of every consumer that opened the repo. The convention: `packages/<pkg>/scripts/parser-hook.ts` (renamed from `src/parser-hook.ts` in CLEAN-01).
- **Core is the source of truth for codegen helpers** (CORE-ARCH Path A, 2026-06-25). `packages/core/src/codegen.ts` exports `applyDuotoneStyle`, `WEIGHT_MAP`, `StyleKey`, `StyleComponentsMap<T>`, and the `Weight` type alias. Framework packages must import these from `@solar-icons/core`, not re-declare them. The dist/ of core is the consumer entry point (`main: "./dist/esm/index.mjs"`, `types: "./dist/types/index.d.ts"`); framework `scripts/` no longer use the `../../core/src/parser.ts` path hack. `allowImportingTsExtensions: true` is no longer needed.
- **V3-13 kebab-case renamed style directory files from PascalCase (`Bold`) to kebab-case (`bold`).** Demo apps must import with kebab-case paths (`@solar-icons/solid/bold`, not `@solar-icons/solid/Bold`).
- **After kebab-case renames, packages MUST be rebuilt** — the source files are renamed but `dist/` is stale until `pnpm build` runs. Forgetting to rebuild causes "Cannot find module" errors.
- **Scale icon deduplication:** The `Scale` icon exists in both `arrows-action` and `devices` categories. All `scripts/generate-assets.ts` must use a `seen` Set to deduplicate `pascalName` in the style-level barrel file generation (see React's version for the canonical pattern).
- **Core `tsconfig.json` and `tsconfig.build.json`** must exclude `**/*.test.ts` and `src/scripts` to avoid typecheck errors from vitest globals (`beforeAll`) and ollama scripts.
- **`toCamelCase` now strips leading/trailing separators** (`.replace(/^[\s\-_]+|[\s\-_]+$/g, '')`) to avoid `FileSmile-` from `file-smile-`.
- **Icon name collisions across categories (`Scale` in `arrows-action` + `devices`)** break `styled.ts` barrel re-exports. React's `generate-assets.ts` now deduplicates style-level index exports by `pascalName`.
- **Angular `ngc` build fails with TS6059 (pre-existing)**: `parser-hook.ts`'s `import type { ParsedIcon } from '../../core/src/parser.ts'` causes ngc to resolve files outside `rootDir: "src"`. The `generate:assets` step (tsx) works, but the `ngc -p tsconfig.lib.json` pass fails. Solid (tsdown) and Svelte (svelte-package) don't have this issue.
- **Static icon CSS class is `solar solar-{kebabName}-{kebabStyle}` for all web frameworks** (D-NORM-1, 2026-07-06). React, Vue, Svelte, Solid, Angular static icons emit the style suffix in their CSS class. Dynamic icons keep `solar solar-{kebabName}` (no style) because the weight changes at runtime. All 4 `parser-hook.ts` (react/vue/svelte/solid) pass `iconName="${kebabName}-${styleKebab}"` to `IconBase`. Angular `generate-assets.ts` static icons use `host.class = 'solar solar-${kebabName}-${kebabStyle}'`; the Angular dynamic component no longer sets its own `host.class` (D-NORM-ANG-1 — the child static icon owns the class to avoid duplicate classes on nested `<svg>` elements).
- **Angular `all-icons.types.ts` is a codegen-emitted file serialized on a single line** by `packages/angular/scripts/generate-assets.ts:62-78` (`allNames.join(' | ')`). The previous multi-line format in the repo was an artifact of an older codegen. After running `pnpm generate:assets`, the file is rewritten as one line — this is expected; do not commit a manual multi-line reformat (it will be erased on the next codegen run). See `.autonomos/worklogs/2026-07-05-DOCS-AUDIT-FINDINGS.md`.
- **Nuxt module defaults match the underlying `@solar-icons/vue` package** (D-1, 2026-07-06): `autoImport: true`, `provider: true` (booleans, not strings), `color: 'currentColor'`, `size: 24`, `strokeWidth: 1.5`. The module injects `SolarState` and writes `--solar-*` CSS variables on `document.body`, not a `<SolarProvider>` wrapper. `provider: false` requires the user to call `createSolarIcons` from a Nuxt plugin or to add `<SolarProvider>` in `app.vue`.
- **Angular `useSolar()` race condition** (B-3, 2026-07-06): a child component projected into `<solar-provider>` can call `useSolar().setColor(...)` in its constructor, but the provider's `effect()` for `color="..."` runs after the child constructor completes and overrides the child's write. The regression test `packages/angular/src/lib/solar-provider.spec.ts` pins this behaviour. Children must initialise state in `ngOnInit` or in event handlers (not in the constructor) to keep their writes. Docs expose this in the `<Callout type="warn">` of `frameworks/angular.mdx` and `migration-to-v2/angular.mdx`.
- **Non-framework packages share one branch** (2026-07-12): `@solar-icons/static` and `@solar-icons/js` are developed together on `feat/non-framework-packages` (off `v2`) and will likely be released together. Issue: #500. Build `static` first (SVGs already in `core/svgs`); `js` after (needs `createIcons` + style selector codegen).
- **Testing two layers** (2026-07-12, user directive): (1) unit tests with Vitest on codegen/build output; (2) *visual* confidence via the demo apps (`apps/react-app`, `apps/svelte-app`, …) — the human maintainer eyeballs real rendered icons there because many visual regressions can't be caught programmatically. Favour both when shipping a package.
- **`react-native` package has no `test` npm script** (2026-07-06). The standard `pnpm --filter @solar-icons/react-native run test` returns `ERR_PNPM_NO_SCRIPT`. Run RN tests with `npx vitest run` directly from `packages/react-native/` (the local `vitest.config.ts` picks up `tests/**/*.test.tsx`). The other 5 web packages expose a `test` script. The 13 existing RN tests pass with `vitest run`.
- **Angular dynamic default weight must be `Linear`** (D-ANGULAR-DEFAULT-WEIGHT, 2026-07-07). The `generate-assets.ts` reorders the `@if/@else if` chain so `Linear` is first. The other frameworks default to `linear` via `const key = weight ? WEIGHT_MAP[weight] : 'linear'`. If the generator is modified, verify the default weight remains `Linear` — the `WEIGHTS` array starts with `Bold`, so naively iterating it puts `Bold` first. See `packages/angular/AGENT.md`.
- **Angular test pitfalls** (2026-07-07): `fixture.nativeElement` is a wrapper `<div>`, not the component's host element. To target the host SVG: `fixture.nativeElement.querySelector('svg[solarArrowUp]')`. `classList` on SVG elements in jsdom returns `SVGAnimatedString`, not `DOMTokenList` — use `getAttribute('class')?.split(/\s+/).filter(Boolean)` instead. See `packages/angular/src/lib/dynamic-smoke.spec.ts` for the canonical pattern.

## ⚙️ Workflow & Preferences
- **Clone repos for ground truth:** When docs are thin or unclear, clone the official repo and read the source. Trust the code over summaries.

## 🚀 Release governance (beta)

- **Product version is `2.0.0`, NOT `3.0.0`.** The "V3" premise was a mistake (2026-07-08): nothing justified a major v3. The real justification for a major bump is the **unification of `@solar-icons/react` + `@solar-icons/react-perf`** into a single `@solar-icons/react` package (`react-perf` is discontinued; last published `2.1.1`, already removed from the repo). All surviving packages sit at `1.x` (react 1.1.1, vue 1.2.1, solid 1.0.1, svelte 1.1.1, angular 1.0.1, react-native 1.1.1, nuxt 1.2.1), so a `major` changeset from `1.x` yields `2.0.0` **naturally** — no manual version anchor needed.
- **Beta-first, never direct stable.** V2 carries breaking changes (react/react-perf merge, `Icon` suffix, per-style paths, removed `/ssr` & category imports, duotone API). Publishing stable on `main` would force users into breakage via auto-update. All packages ship as `2.0.0-beta.x` (npm `beta` dist-tag) first.
- **`beta` branch already exists** (remote `origin/beta`), used sporadically before — the beta process is NOT yet routine.
- **Workflow:** changes go via **PRs targeting `beta`**, each **linked to a GitHub issue**. Issues/PRs double as public documentation of *why* decisions were made. No local direct pushes/merges to `beta`.
- **`release.yml` (stable) triggers on push to `main`** via changesets (`version-packages` + `release`). Merging V2 package changes (version 2.0.0) into `main` publishes stable v2 involuntarily — the core risk when touching `main`.
- **Docs deploy:** the docs site (`apps/docs`) builds from `main`'s docs source. Updating docs requires touching `main` but must NOT trigger a stable package publish (merge only docs content; keep package versions at their released `1.x` on `main`; no package changesets there until stable is intended).
- **Internal "v3" naming vs product `2.0.0` — DECIDED (2026-07-08): rename everything to "v2".** Branch `v3`→`v2`, docs routes `/docs/v3`→`/docs/v2`, `TASKS.md` "V3"→"V2", `AGENT.md` labels, and the `migration-to-v3`→`migration-to-v2` slug are all being renamed to v2 for consistency with the published `2.0.0`. Internal session/worklog codes (e.g. `V3-09`) and their gitignored worklog filenames are kept as historical provenance.
- **`react-perf` deprecation:** the package is gone from the repo but `2.1.1` remains published on npm. Before/at stable, publish a deprecation notice on `@solar-icons/react-perf` pointing to `@solar-icons/react`.
