# Lucide Reverse Audit Status

The Solar → Lucide semantic pass is complete enough to begin the Lucide → Solar gap phase.
Reverse equivalents remain auditable evidence; they are not copied into `verified-matches.json`.

## Current state

- Lucide snapshot: `@iconify-json/lucide@1.2.123` (1,836 icons).
- Forward semantic Solar coverage: 529 Lucide targets.
- Additional reverse equivalents awaiting forward integration: 93 targets.
- Closed reverse reviews: 1,544 targets (281 equivalents, 1,263 no-matches).
- Semantic gaps after the closed reverse review: 1,214 Lucide targets.

## Visual workbench

Use `/lucide-gap` to work through the three queues:

- `GAPS À COMBLER`: semantic Solar gap plus reverse `no-match`;
- `TROUVÉS EN REVERSE`: reverse equivalent not yet integrated into the forward projection;
- `DÉJÀ COUVERTS`: already covered by the semantic forward map.

Every new reverse decision remains binary: `equivalent` or `no-match`. A reviewed equivalent is
kept as a durable reverse packet and later integrated into the forward map only after its Solar
candidate has been checked in the opposite direction. Do not mutate `verified-matches.json` during
this phase.

The first new packet should contain 100 targets selected from `/lucide-gap`, not an arbitrary
alphabetical slice. Existing packets 01–18 are closed and must never be reused.

## Regeneration

When the semantic forward map changes, regenerate and check the report:

```bash
pnpm --filter react-app lucide:coverage
pnpm --filter react-app lucide:coverage:check
```

Never reuse a closed review target. `generate-lucide-coverage.ts` rejects duplicate IDs across all
closed reverse review files.
