# AGENT: apps/docs/core

- **Role:** A second, scoped data layer that powers the docs app's UI. Not the same as `packages/core` — the names collide on purpose (this one is the docs-app's "core" data utilities).
- **Why it exists:** The docs app needs to enumerate categories and styles at build time, but does not need the full parser, the SVGs, or the Figma scripts. Keeping a minimal local copy avoids a heavy dependency on the entire `packages/core` for the docs build.

## Files

| Path | Description |
|---|---|
| `scripts/generate-data.ts` | Reads `packages/core/src/metadata.json`, emits `core/generated/utils.ts` with the `styles` tuple, `Style` type, `categories` tuple, `Category` type. |
| `scripts/generate-descriptions.ts` | Reads `packages/core/src/metadata-descriptions.json`, emits docs-friendly description data into `core/generated/`. |
| `scripts/generateHeroUtils.ts` | Generates small hero-section utility bundles. |
| `generated/` | Output of the above scripts. Gitignored. |

## Constraints

- **Duplicates the package-layer `core` API surface** (style list, categories, descriptions).
- **None of the three scripts are wired into `pnpm build` in the docs app.** The docs build (`next build`) consumes whatever is currently in `generated/`. If you change `metadata.json` or `metadata-descriptions.json`, rerun the matching `generate-*` script before building the docs.
- **`cspell.json` ignores `apps/docs/core/generated/**`** — the generated files are not spell-checked.
- **`generate-data.ts` uses `assert { type: 'json' }`** (an older import-assertion form) for the metadata import. The repo mostly uses the newer `with { type: 'json' }` form.
