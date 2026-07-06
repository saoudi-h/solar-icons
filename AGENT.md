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
| `packages/react`, `react-perf`, `vue`, `nuxt`, `svelte`, `solid`, `angular`, `react-native` | Public framework packages. |
| `packages/figma-fix-plugin` | Figma plugin source. Not part of the pnpm workspace. |
| `packages/figma-rename-plugin` | Figma plugin source (added in V3). Renames icon components in the local Figma file per issue #493. Runs in Figma's sandbox, no REST API calls. Not part of the pnpm workspace. |
| `packages/figma-export-plugin` | Figma plugin source (added in V3). Exports every component as SVG via `node.exportAsync()`, bundles as ZIP, triggers browser download. The Figma-REST-free replacement for `pnpm generate:svgs` on the free plan. Not part of the pnpm workspace. |
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
- **Angular `useSolar()` race condition** (B-3, 2026-07-06): a child component projected into `<solar-provider>` can call `useSolar().setColor(...)` in its constructor, but the provider's `effect()` for `color="..."` runs after the child constructor completes and overrides the child's write. The regression test `packages/angular/src/lib/solar-provider.spec.ts` pins this behaviour. Children must initialise state in `ngOnInit` or in event handlers (not in the constructor) to keep their writes. Docs expose this in the `<Callout type="warn">` of `frameworks/angular.mdx` and `migration-to-v3/angular.mdx`.
- **`react-native` package has no `test` npm script** (2026-07-06). The standard `pnpm --filter @solar-icons/react-native run test` returns `ERR_PNPM_NO_SCRIPT`. Run RN tests with `npx vitest run` directly from `packages/react-native/` (the local `vitest.config.ts` picks up `tests/**/*.test.tsx`). The other 5 web packages expose a `test` script. The 13 existing RN tests pass with `vitest run`.
