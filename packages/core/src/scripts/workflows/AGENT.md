# AGENT: packages/core/src/scripts/workflows

Scope: In-house batch processing pipeline (~240 lines) used by `generate-pngs.ts` and batch jobs.

- `processIcons.ts` — executes an ordered list of `ProcessorStep`s over an `IconDataExtractor` output with `p-limit` concurrency and optional `StateManager` checkpointing.
- `StateManager.ts` — persists per-icon `success | failure` JSON in a temp dir so long runs can resume.
- `extractors/` — `iconsFromCategoriesExtractor`, `iconsFromFlatArrayExtractor` (yield `{ iconName, category, tags }`).
- `steps/` — `convertSvgToPngStep`, `getLinearSvgPathStep`, `getLinearPngPathStep`, `generateMetadataStep`, `filtersStepGenerator(name)`, `loggerStepGenerator(label)`, `logStep`, `saveDescriptionStepGenerator`, `deleteDescriptionStepGenerator`.
- `types.ts` — `IconData`, `Context`, `IconDataExtractor`, `ProcessorStep`, `Predicate`.
