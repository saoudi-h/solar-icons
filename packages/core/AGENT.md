---
name: '@solar-icons/core'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/core

## 🧠 Role

Private package (`"private": true`), single source of truth for icon assets and metadata consumed by all framework packages: 9,456 committed SVGs in `svgs/` (37 categories × 6 styles), `metadata.json`, `metadata-descriptions.json`, `types.ts`, `utils.ts`, and build-time scripts in `src/scripts/` (see [src/scripts/AGENT.md](src/scripts/AGENT.md)).

## ⚙️ Conventions

- ESM only (`"type": "module"`), ES2017 target. Build = `vite build && tsc --build tsconfig.build.json` (dual ESM+CJS in `dist/` + types; `vite-plugin-static-copy` copies `metadata*.json`).
- Path alias: `@/* -> src/*` in `tsconfig.json` and Vite. Workspace consumers import `@solar-icons/core` from `dist/` (Path A; source `src/index.ts` also available). `picocolors` is an external peer dep.
- `tsconfig.json` and `tsconfig.build.json` exclude `**/*.test.ts` and `src/scripts` to avoid vitest/ollama typecheck errors.

## 🏗 Stack

- TypeScript 6, Vite 8, `figma-api` (beta), `axios`, `dotenv`, `p-limit`, `sharp`, `pino`, `@langchain/core`, `@langchain/ollama`.

## 📁 Key Files

- `src/index.ts` — re-exports `codegen`, `constants`, `parser`, `types`, `utils`.
- `src/codegen.ts` — shared codegen helpers (`Weight`, `WEIGHTS`, `StyleKey`, `StyleComponentsMap<T>`, `WEIGHT_MAP`, `buildDeprecatedAliasMap`, `buildAliasMap`, `applyDuotoneStyle`). Framework generators must import from `@solar-icons/core`, not re-declare.
- `src/parser.ts` — reads/normalizes `svgs/` (strips XML/svg/empty rect/title/default `stroke-width="1.5"`, replaces hex with `currentColor`, extracts duotone accent, generates base64 previews), exposes `forEachIcon`, `forEachIconGroupedBy`, `loadIcon`, and enforces all-6-styles integrity.
- `src/types.ts` & `src/utils.ts` — types, `IconStyle`, `loadMetadata`, `isValidMetadata`, `ICON_RENAMES`, `fixIconName`, `toKebabCase`, `toCamelCase` (strips leading/trailing separators).
- `src/metadata.json` & `src/metadata-descriptions.json` (`src/descriptions.schema.json`) — Figma-generated categories/icons + hand-curated descriptions, `aliases`, `deprecatedAliases`, and extended provenance.
- `EXTENDING-ICON-SET.md` & `../../docs/ICON-INVENTORY-WORKFLOW.md` — extension production procedure and inventory refresh checklist.

## ⚠️ Known Constraints

- **Figma live fetch (`generate-svgs.ts`):** requires `FIGMA_API_TOKEN` + `FIGMA_FILE_ID`; `--offline` needs no credentials. Not run in CI.
- **`metadata-descriptions.json` is hand-curated:** never auto-generate; `generate-descriptions` and `fix-descriptions` are manual tools. Validate with `pnpm check:descriptions`.
- **Deprecated names are metadata-driven:** add `deprecatedAliases` in `metadata-descriptions.json`; `buildDeprecatedAliasMap` feeds all generators (preserving barrel and subpath imports without duplicate implementations).
- **Extended icon metadata is declarative:** non-upstream icons require `origin: "extended"`, `addedAt`, `author` (enforced by `check:icons-metadata`). Optional `priority` requires `priorityReason`.
- **Canonical style order:** `Bold`, `BoldDuotone`, `Broken`, `Linear`, `LineDuotone`, `Outline`.
- **`Scale` icon collision:** `Scale` exists in `arrows-action` and `devices`; package `generate-assets.ts` scripts must deduplicate `pascalName` with a `seen` Set in style barrels.
- **`tsdown` `exports: true` rewrites `bin`:** declare binaries via `exports: { bin: { ... } }`.
- **Duotone accent style:** `applyDuotoneStyle` is the only implementation (`transformDuotoneAccent` wraps it). Opacity multiplies down the tree, so the style goes on accent root elements only, never on children of a `<g>`; the parser throws on nested accent opacity. `duotone.test.ts` (including source-vs-generated render parity) and root `pnpm check:duotone-output` guard it.
