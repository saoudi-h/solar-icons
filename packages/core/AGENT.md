---
name: '@solar-icons/core'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/core

## 🧠 Role

Private package (`"private": true`). Source of truth for icon assets and metadata. Every public framework package consumes `core`'s exports.

Contains:

- 7,476 committed SVGs in `svgs/` (37 categories × 6 styles).
- `metadata.json` (44 KB) and `metadata-descriptions.json` (254 KB), both committed.
- The `types.ts` and `utils.ts` public surface.
- Build-time scripts in `src/scripts/` (Figma fetch, PNG generation, descriptions, integrity checks).

## ⚙️ Conventions

- ESM only, ES2017 target. `package.json` has `"type": "module"`.
- Build = `vite build && tsc --build tsconfig.build.json`. Vite produces dual ESM + CJS in `dist/`; `tsc` emits types separately.
- `vite-plugin-static-copy` copies `metadata*.json` into `dist/` for external consumers.
- Path alias: `@/* → src/*` in both `tsconfig.json` and Vite resolve.
- Published entry: `dist/{esm,cjs,types}/`. Workspace consumers can also import from the source `src/index.ts`.
- `picocolors` is a peer dependency (kept external at bundle time).

## 🏗 Stack

- TypeScript 6, Vite 8.
- `figma-api` (beta) + `axios` + `dotenv` + `p-limit` for the Figma fetch.
- `sharp` for SVG → PNG (128px).
- `pino` / `pino-pretty` for structured logging in the scripts.
- `@langchain/core` + `@langchain/ollama` for AI-assisted description generation.

## 📁 Key Directories

| Path                             | Description                                                                                                                                                                                                                                                                                                                                                                             |
| -------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `src/index.ts`                   | Re-exports `./codegen`, `./constants`, `./parser`, `./types`, and `./utils`.                                                                                                                                                                                                                                                                                                            |
| `src/codegen.ts`                 | Codegen helpers shared by every framework package: `Weight`, `WEIGHTS` (canonical order), `StyleKey`, `StyleComponentsMap<T>`, `WEIGHT_MAP`, and `applyDuotoneStyle` (`'html'`/`'jsx'` formats). Framework generators must import these from `@solar-icons/core`, not re-declare them.                                                                                                  |
| `src/types.ts`                   | `Metadata`, `IconWeight` union, `CamelToPascal`.                                                                                                                                                                                                                                                                                                                                        |
| `src/utils.ts`                   | `IconStyle` enum, `loadMetadata`, `isValidMetadata`, `ICON_RENAMES`, `fixIconName`, `toKebabCase`.                                                                                                                                                                                                                                                                                      |
| `src/parser.ts`                  | Parser. Reads `svgs/`, normalizes every icon (strips `<?xml?>`, `<svg>` wrapper, empty `<rect>`, `<title>`, default `stroke-width="1.5"`; replaces hex with `currentColor`; extracts duotone-accent path), generates base64 preview, exposes `forEachIcon` / `forEachIconGroupedBy` iterators and a sync `loadIcon` cache. Integrity check (all 6 styles per logical name) always runs. |
| `src/icon-weights.json`          | Style → weight mapping.                                                                                                                                                                                                                                                                                                                                                                 |
| `src/metadata.json`              | 44 KB, generated from Figma, committed.                                                                                                                                                                                                                                                                                                                                                 |
| `src/metadata-descriptions.json` | 254 KB, hand-curated, committed. Per-icon entries may carry extended fields: `origin` (`upstream`/`extended`), `addedAt` (ISO date), `author` (GitHub username), `state` (`stable`/`beta`), `aliases` (name synonyms), `useCases`. Absent `origin` = upstream; absent `state` = stable. Extended icons MUST have `addedAt` + `author` (schema-enforced).                                |
| `src/descriptions.schema.json`   | JSON Schema (draft 2020-12) for `metadata-descriptions.json` entries, enforced by `pnpm check:descriptions` (ajv, `additionalProperties: false`). Alias rules live in `src/scripts/validate-descriptions.ts` (no collision with icon names or other entries' aliases).                                                                                                                  |
| `svgs/`                          | 37 categories × 6 styles = 7,476 SVGs, committed.                                                                                                                                                                                                                                                                                                                                       |
| `src/scripts/`                   | Build-time CLI scripts (see `packages/core/src/scripts/AGENT.md`).                                                                                                                                                                                                                                                                                                                      |

## ⚠️ Known Constraints

- **`generate-svgs.ts` requires `FIGMA_API_TOKEN` and `FIGMA_FILE_ID`** at runtime. It is the only script that needs Figma credentials. Not invoked by CI.
- **`metadata-descriptions.json` is hand-curated source code.** NEVER auto-generate it. The `generate-descriptions` and `fix-descriptions` scripts are manual tools; they are not part of `pnpm build` or any `generate:assets` flow. Guard: `pnpm check:descriptions` validates the file's structure against `src/descriptions.schema.json` (ajv) and fails if it's empty or corrupted. All edits to this file must be manual commits.
- **Extended icon metadata (EXT-METADATA, 2026-08-14):** icons added beyond the upstream set are declared via `origin: "extended"` in `metadata-descriptions.json` and require `addedAt` + `author` (schema-enforced, build fails otherwise). The schema is the enforcement point for the EXT-DIFF-GATE import workflow.
- **Style order is canonical:** `Bold`, `BoldDuotone`, `Broken`, `Linear`, `LineDuotone`, `Outline`.
- **Every public framework package reads SVGs through the parser** via `parser-hook.ts` + `generate-assets.ts`. The parser is the single source of truth for SVG reading, normalization, and preview generation. `scripts/generate-assets.ts` in each package is a thin orchestrator: `parseSvgs()` → `forEachIcon(hook)` or `forEachIconGroupedBy(hook)` → write files.
- **`tsdown`'s `exports: true` rewrites the `bin` field** of a `package.json` on every build. When `tsdown` is used and a `bin` is needed, declare it via `exports: { bin: { ... } }`.
