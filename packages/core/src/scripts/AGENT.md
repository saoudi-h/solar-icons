# AGENT: packages/core/src/scripts

- **Role:** Build-time CLI scripts invoked via `pnpm <name>` from `packages/core`, run under `tsx`, using `picocolors` and `process.exit(1)` on fatal errors. For the `workflows/` batch engine, see [workflows/AGENT.md](workflows/AGENT.md).

## Scripts

- `check-svg-quality.ts`: validate style paint contracts (line-only, exact duotone opacity, fill-only bold, single-path Outline, round stroke caps, canonical Solar color) and write reports under `packages/core/reports/`.
- `generate-svgs.ts`: pull components from Figma, normalize, write to `svgs/` (requires `FIGMA_API_TOKEN` + `FIGMA_FILE_ID`; not in CI).
- `generate-pngs.ts`: render SVGs to 128px PNGs via `sharp`.
- `generate-descriptions.ts` / `fix-descriptions.ts`: manual LLM/post-process tools for descriptions JSON (not part of `pnpm build` or `generate:assets`).
- `check-svgs.ts`: walk `svgs/`, verify all 6 styles per icon per category.
- `check-metadata.ts`: validate `metadata.json` shape.
- `check-descriptions.ts`: validate `metadata-descriptions.json` against `descriptions.schema.json` (ajv) + alias rules and deprecated replacement targets.
- `check-icons-metadata.ts`: icon ↔ metadata coverage gate (EXT-DIFF-GATE); flags untracked/staged new SVGs lacking explicit `origin`. Run by `refresh-from-figma-zip.sh`.
- `fix-icons-metadata.ts`: prints draft `metadata-descriptions.json` entries for new icons (author from `git config user.name`) for manual curation.
- `sync-filenames.ts` / `update-metadata-names.ts`: one-shot canonical kebab-case rename helpers.
- `experiment-svg-normalization.ts`: experimental non-mutating stroke-preserving SVG path consolidation check.

`deprecatedAliases` remains the compatibility path for published names; `aliases` is for non-deprecated synonyms (metadata-only; never replace a deprecated alias without a migration decision).

## Staged Figma ZIP refresh

`packages/core/scripts/refresh-from-figma-zip.sh` runs the Python 3 archive gate in a temp dir, then quality and metadata checks with `SOLAR_SVGS_DIR`. `--check-only` never swaps assets; removals require `--allow-removals`; quality overrides do not bypass metadata. On failure it restores SVGs and generated metadata while keeping the source ZIP. The quality gate accepts black/white theme exports alongside legacy navy; only open stroke endpoints require round caps.
