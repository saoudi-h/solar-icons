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

| Path                             | Description                                                                                                                                                                                                                                                                                                                                                                                |
| -------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `src/index.ts`                   | Re-exports `./types`, `./utils`, and `./parser`.                                                                                                                                                                                                                                                                                                                                           |
| `src/types.ts`                   | `Metadata`, `IconWeight` union, `CamelToPascal`.                                                                                                                                                                                                                                                                                                                                           |
| `src/utils.ts`                   | `IconStyle` enum, `loadMetadata`, `isValidMetadata`, `ICON_RENAMES`, `fixIconName`, `toKebabCase`.                                                                                                                                                                                                                                                                                         |
| `src/parser.ts`                  | V3 parser. Reads `svgs/`, normalizes every icon (strips `<?xml?>`, `<svg>` wrapper, empty `<rect>`, `<title>`, default `stroke-width="1.5"`; replaces hex with `currentColor`; extracts duotone-accent path), generates base64 preview, exposes `forEachIcon` / `forEachIconGroupedBy` iterators and a sync `loadIcon` cache. Integrity check (all 6 styles per logical name) always runs. |
| `src/icon-weights.json`          | Style → weight mapping.                                                                                                                                                                                                                                                                                                                                                                    |
| `src/metadata.json`              | 44 KB, generated from Figma, committed.                                                                                                                                                                                                                                                                                                                                                    |
| `src/metadata-descriptions.json` | 254 KB, hand-curated, committed.                                                                                                                                                                                                                                                                                                                                                           |
| `svgs/`                          | 37 categories × 6 styles = 7,476 SVGs, committed.                                                                                                                                                                                                                                                                                                                                          |
| `src/scripts/`                   | Build-time CLI scripts (see `packages/core/src/scripts/AGENT.md`).                                                                                                                                                                                                                                                                                                                         |

## ⚠️ Known Constraints

- **`generate-svgs.ts` requires `FIGMA_API_TOKEN` and `FIGMA_FILE_ID`** at runtime. It is the only script that needs Figma credentials. Not invoked by CI.
- **`metadata-descriptions.json` is hand-curated.** The `generate-descriptions` and `fix-descriptions` scripts are manual tools; they are not part of `pnpm build` or any `generate:assets` flow.
- **Style order is canonical:** `Bold`, `BoldDuotone`, `Broken`, `Linear`, `LineDuotone`, `Outline`.
- **Each public framework package has its own `scripts/generate-assets.ts`** that reads from `core/svgs/`. The duplication is the codebase's current shape. **V3 replaces this with the central parser in `src/parser.ts`** — each framework's `generate-assets.ts` becomes a thin `forEachIcon(hook)` call (V3-03a/b/c, V3-04, V3-05, V3-06).
- **`tsdown`'s `exports: true` rewrites the `bin` field** of a `package.json` on every build (see `@autonomos/cli` DEBUG-01/02/03 in the worklog history). When `tsdown` is used and a `bin` is needed, declare it via `exports: { bin: { ... } }`.
