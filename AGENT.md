---
name: 'solar-icons'
type: 'monorepo'
status: 'active'
---

# AGENT CONTEXT: solar-icons

## 🧠 Context & Objectives

Solar Icons is a public icon library: 1,517 unique icons × 6 styles (Bold, BoldDuotone, Broken, Linear, LineDuotone, Outline) = 9,102 SVG variations. Packaged for React, React Native, Vue, Nuxt, Svelte 5, SolidJS, Angular 17+, Flutter, Rails, and Blade. Icons originate from 480 Design's Figma file (CC BY 4.0); package code is MIT. Maintainer: Saoudi Hakim. Public site: https://solar-icons.dev.

For authoritative inventory counts and update steps, follow `docs/ICON-INVENTORY-WORKFLOW.md` and run `pnpm exec tsx scripts/check-icon-inventory.ts`.

## ⚙️ Workflow & Preferences

- **Commits:** Conventional Commits enforced by `@commitlint/config-conventional` (`build`, `chore`, `ci`, `docs`, `feat`, `fix`, `perf`, `refactor`, `revert`, `style`, `test`). Scope = `apps/*` or `packages/*` name; omit when touching 3+ workspaces or root tooling. Never use subject-based scopes. One focused commit per change.
- **PRs & branches:** Changes go via PRs targeting `main`, each linked to a GitHub issue. Never push or merge directly to `main` locally (Changesets release PRs excepted).
- **Versioning & publishing:** Changesets (`docs/RELEASE-PROCEDURE.md` is the single executable checklist). `2.0.0`+ is stable on `latest`; prereleases use `pre` mode on `main` (`beta` tag; `beta` branch is historical). Never run `pnpm release`, `changeset publish`, or `npm publish` locally — CI publishes on push to `main`.
- **Cross-language releases:** Every package keeps its own version (major shared). A changeset for `@solar-icons/static` drives `scripts/bump-polyglot-packages.ts --from-static` in `pnpm version-packages` (and `solar-icons/blade` `sync-static.yml`). Never hand-bump polyglot packages or run `pnpm polyglot:bump` on top.
- **Language: English only — no exceptions.** All repo files (including gitignored worklogs, `AGENT.md`, `TASKS.md`, comments, commit messages, docs) must be English regardless of conversation language. Fix pre-existing non-English content immediately.
- **Public voice:** Use "we" for project decisions, review, and contribution guidance; reserve the maintainer's name for ownership/attribution.
- **Pre-commit & ground truth:** Husky + `lint-staged` at root (per-package `lint-staged.config.mjs`). `AGENT.md` is not a journal (history belongs in `.autonomos/worklogs/`, task state in `.autonomos/TASKS.md`). When docs are unclear, clone/read upstream source.

## 🏗 Stack & Architecture

- **Runtime & orchestration:** pnpm (`packageManager` in `package.json`), Node 26 (`.nvmrc` / `engines`), Turborepo 2.x (`build`, `dev`, `clean`, `typecheck`, `lint`, `format`, `pre-commit`, `test`).
- **Language & tooling:** TypeScript 7 (native `tsc`), ESM-only. `vue` / `svelte` / `nuxt` / `angular` / `codemod` keep TypeScript 6 for DTS toolchains that consume the TS JS API. Shared presets: `@tala-tools/oxlint`, `@tala-tools/oxfmt`, `@tala-tools/tsconfig`.
- **Format & lint order:** Format first, lint last (`oxfmt --write` → `oxlint --fix`). Lint is the gated check. Tests run on Vitest.
- **Docs site:** TanStack Start + Fumadocs (`apps/docs-start`), prerendered for Cloudflare Worker; `apps/vercel-redirect` redirects the legacy domain.

## 📁 Key Directories

- `packages/core` — private source of truth for SVGs, metadata, types, and codegen helpers.
- `packages/{react,react-native,vue,nuxt,svelte,solid,angular}` — public npm framework packages.
- `packages/{static,js,cli,mcp,codemod}` — public non-framework/tooling packages (`@solar-icons/react-perf` is deprecated/removed; downloads still summed on docs homepage).
- `packages/{flutter,rails}` — non-workspace polyglot packages (`flutter_solar_icons` on pub.dev; Ruby gem `solar_icons`). `solar-icons/blade` lives in a separate repo.
- `packages/figma-plugin` — Figma Community plugin (`docs/FIGMA-PLUGIN-PUBLISHING.md`).
- `apps/docs-start` & `apps/*-app` — docs site and local visual test apps (test apps are excluded from CI).
- `scripts/` — root catalogue/release checks (`scripts/AGENT.md`).
- `.autonomos/` & `.{agent,agents,claude,clinerules,opencode}/` — Autonomos workflow and harness mirrors.

## ⚠️ Known Constraints

- **Maintained Figma source & plugin framing:** Corrected Figma workspace is the visual source of truth (published copy linked in `docs/FIGMA-PLUGIN-PUBLISHING.md`); keep 480 Design Community link as attribution. Present Solar Icons as the maintained distribution with standardized SVGs, editable 1.5px strokes (Linear/Broken/LineDuotone), and package parity.
- **Naming:** Current version line is `"v2"` (never `"v3"`). Docs install snippets stay unpinned while stable.
- **Codegen contract (Path A):** Framework `scripts/parser-hook.ts` and `generate-assets.ts` import helpers from `@solar-icons/core` (`dist/`), never relative `../../core/src/` paths. Style dirs are kebab-case (`bold/`); rebuild (`pnpm build`) after renames. `copy:licenses` copies root `LICENSE` files on build.
- **Static CSS classes:** Web framework static icons emit `solar solar-{kebabName}-{kebabStyle}`; dynamic icons emit `solar solar-{kebabName}`.
- **Fresh clone & testing:** Run `pnpm --filter @solar-icons/docs-start build` before first `typecheck`. Pair Vitest unit tests with visual checks in demo apps (`apps/*-app`). Before publishing npm packages, pack and smoke-test documented subpaths + `publint`.
