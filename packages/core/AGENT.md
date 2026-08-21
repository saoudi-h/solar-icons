---
name: '@solar-icons/core'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/core

## 🧠 Role

Private package (`"private": true`). Source of truth for icon assets and metadata. Every public framework package consumes `core`'s exports.

Contains:

- 7,608 committed SVGs in `svgs/` (37 categories × 6 styles).
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

| Path                                    | Description                                                                                                                                                                                                                                                                                                                                                                             |
| --------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `src/index.ts`                          | Re-exports `./codegen`, `./constants`, `./parser`, `./types`, and `./utils`.                                                                                                                                                                                                                                                                                                            |
| `src/codegen.ts`                        | Codegen helpers shared by every framework package: `Weight`, `WEIGHTS` (canonical order), `StyleKey`, `StyleComponentsMap<T>`, `WEIGHT_MAP`, `buildDeprecatedAliasMap`, `buildAliasMap`, and `applyDuotoneStyle` (`'html'`/`'jsx'` formats). Framework generators must import these from `@solar-icons/core`, not re-declare them.                                                      |
| `src/types.ts`                          | `Metadata`, `IconDescription`, `DeprecatedIconAlias`, `IconOrigin`, `IconState`, `IconWeight` union, `CamelToPascal`.                                                                                                                                                                                                                                                                   |
| `src/utils.ts`                          | `IconStyle` enum, `loadMetadata`, `isValidMetadata`, `ICON_RENAMES`, `fixIconName`, `toKebabCase`.                                                                                                                                                                                                                                                                                      |
| `src/parser.ts`                         | Parser. Reads `svgs/`, normalizes every icon (strips `<?xml?>`, `<svg>` wrapper, empty `<rect>`, `<title>`, default `stroke-width="1.5"`; replaces hex with `currentColor`; extracts duotone-accent path), generates base64 preview, exposes `forEachIcon` / `forEachIconGroupedBy` iterators and a sync `loadIcon` cache. Integrity check (all 6 styles per logical name) always runs. |
| `src/icon-weights.json`                 | Style → weight mapping.                                                                                                                                                                                                                                                                                                                                                                 |
| `src/metadata.json`                     | 44 KB, generated from Figma, committed.                                                                                                                                                                                                                                                                                                                                                 |
| `src/metadata-descriptions.json`        | Hand-curated, committed metadata. `deprecatedAliases` records legacy names and must remain available for compatibility exports. `aliases` records non-deprecated synonyms; `origin`, `addedAt`, `author`, `state`, and `useCases` describe extended icon lifecycle and search metadata.                                                                                                 |
| `EXTENDING-ICON-SET.md`                 | Production procedure for planning, drawing, attributing, validating, and releasing extensions such as Lucide parity additions.                                                                                                                                                                                                                                                          |
| `../../docs/ICON-INVENTORY-WORKFLOW.md` | Inventory refresh checklist and the complete list of generated/documentation consumers to update after an export.                                                                                                                                                                                                                                                                       |
| `src/descriptions.schema.json`          | JSON Schema for the hand-curated descriptions file; `check:descriptions` also validates alias collisions and deprecated replacement targets.                                                                                                                                                                                                                                            |
| `svgs/`                                 | 37 categories × 6 styles = 7,608 SVGs, committed.                                                                                                                                                                                                                                                                                                                                       |
| `src/scripts/`                          | Build-time CLI scripts (see `packages/core/src/scripts/AGENT.md`).                                                                                                                                                                                                                                                                                                                      |

## ⚠️ Known Constraints

- **`generate-svgs.ts` requires `FIGMA_API_TOKEN` and `FIGMA_FILE_ID`** at runtime. It is the only script that needs Figma credentials. Not invoked by CI.
- **`metadata-descriptions.json` is hand-curated source code.** NEVER auto-generate it. The `generate-descriptions` and `fix-descriptions` scripts are manual tools; they are not part of `pnpm build` or any `generate:assets` flow. Guard: `pnpm check:descriptions` validates the JSON schema, aliases, and deprecated aliases. All edits to this file must be manual commits.
- **Deprecated icon names are metadata-driven.** Add a structured `deprecatedAliases` entry to the canonical icon in `metadata-descriptions.json`; do not add ad hoc rename tables to individual framework generators. The core `buildDeprecatedAliasMap` helper feeds all package generators, which must preserve both barrel and direct subpath imports without duplicating icon implementations.
- **Extended icon metadata is declarative.** An icon added outside the upstream set must declare `origin: "extended"`, `addedAt`, and `author`; `check:icons-metadata` enforces coverage between SVGs, `metadata.json`, and `metadata-descriptions.json`.
- **Extension priority is qualitative and auditable.** `priority` (`critical`, `high`, `normal`, or `low`) is an optional delivery marker. When present, `priorityReason` is required. Missing-icon planning belongs in the icon-parity roadmap until the SVG exists.
- **Style order is canonical:** `Bold`, `BoldDuotone`, `Broken`, `Linear`, `LineDuotone`, `Outline`.
- **Every public framework package reads SVGs through the parser** via `parser-hook.ts` + `generate-assets.ts`. The parser is the single source of truth for SVG reading, normalization, and preview generation. `scripts/generate-assets.ts` in each package is a thin orchestrator: `parseSvgs()` → `forEachIcon(hook)` or `forEachIconGroupedBy(hook)` → write files.
- **`tsdown`'s `exports: true` rewrites the `bin` field** of a `package.json` on every build. When `tsdown` is used and a `bin` is needed, declare it via `exports: { bin: { ... } }`.
