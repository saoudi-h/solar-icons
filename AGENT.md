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
- **Parser-hook imports from core must use `../../core/src/parser.ts`** — the original `../../../core/src/parser.ts` resolves to root, not `packages/`. It only worked before V3-09 because the imports were type-only (erased at compile time). All hooks now define `applyDuotoneStyle` inline rather than importing a value from core, which avoids cross-package `rootDir` errors with `tsc`.
- **V3-13 kebab-case renamed style directory files from PascalCase (`Bold`) to kebab-case (`bold`).** Demo apps must import with kebab-case paths (`@solar-icons/solid/bold`, not `@solar-icons/solid/Bold`).
- **After kebab-case renames, packages MUST be rebuilt** — the source files are renamed but `dist/` is stale until `pnpm build` runs. Forgetting to rebuild causes "Cannot find module" errors.
- **Scale icon deduplication:** The `Scale` icon exists in both `arrows-action` and `devices` categories. All `scripts/generate-assets.ts` must use a `seen` Set to deduplicate `pascalName` in the style-level barrel file generation (see React's version for the canonical pattern).
- **Core `tsconfig.json` and `tsconfig.build.json`** must exclude `**/*.test.ts` and `src/scripts` to avoid typecheck errors from vitest globals (`beforeAll`) and ollama scripts.
- **`toCamelCase` now strips leading/trailing separators** (`.replace(/^[\s\-_]+|[\s\-_]+$/g, '')`) to avoid `FileSmile-` from `file-smile-`.
- **Icon name collisions across categories (`Scale` in `arrows-action` + `devices`)** break `styled.ts` barrel re-exports. React's `generate-assets.ts` now deduplicates style-level index exports by `pascalName`.
