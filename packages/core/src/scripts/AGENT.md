# AGENT: packages/core/src/scripts

- **Role:** Build-time CLI scripts. Each is invoked via `pnpm <name>` from the package root, runs under `tsx` (not `ts-node`), uses `picocolors` for output, and `process.exit(1)` on fatal errors.

## Scripts

| Script | Purpose |
|---|---|
| `generate-svgs.ts` | Pull components from Figma, normalize, write to `svgs/`. Requires `FIGMA_API_TOKEN` + `FIGMA_FILE_ID`. |
| `generate-pngs.ts` | Render each SVG to a 128px PNG via `sharp`. |
| `generate-descriptions.ts` | LLM-assisted tag/description generation. Manual tool. |
| `fix-descriptions.ts` | Post-process pass on the descriptions JSON. Manual tool. |
| `check-svgs.ts` | Walk `svgs/`, assert each category has all 6 styles, exit non-zero on mismatch. |
| `check-metadata.ts` | Validate `metadata.json` shape. |
| `sync-filenames.ts` | One-shot: rename SVG files whose names drifted from the canonical kebab-case map. |
| `update-metadata-names.ts` | One-shot: rewrite `metadata.json` `icons[]` arrays to use the canonical name form. |

## The `workflows/` engine

A small in-house pipeline (~240 lines) reused by `generate-pngs.ts` and other batch jobs:

- `processIcons.ts` — runs an ordered list of `ProcessorStep`s over an `IconDataExtractor` output, with `p-limit` concurrency and an optional `StateManager` checkpoint.
- `StateManager.ts` — persists per-icon `success | failure` to a JSON file under a temp dir; allows resuming long runs.
- `extractors/` — `iconsFromCategoriesExtractor`, `iconsFromFlatArrayExtractor`. Both yield `{ iconName, category, tags }`.
- `steps/` — `convertSvgToPngStep`, `getLinearSvgPathStep`, `getLinearPngPathStep`, `generateMetadataStep`, `filtersStepGenerator(name)`, `loggerStepGenerator(label)`, `logStep`, `saveDescriptionStepGenerator`, `deleteDescriptionStepGenerator`.
- `types.ts` — `IconData`, `Context`, `IconDataExtractor`, `ProcessorStep`, `Predicate`.

## Constraints

- **`generate-svgs.ts` is the only script that requires Figma credentials.** Not invoked by CI.
- **`generate-descriptions.ts` and `fix-descriptions.ts` are manual tools.** Not part of `pnpm build` or any `generate:assets` flow.
