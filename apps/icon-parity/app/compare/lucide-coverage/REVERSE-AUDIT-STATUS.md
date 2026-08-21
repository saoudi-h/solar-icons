# Lucide Reverse Audit Status

The Solar → Lucide semantic pass and the first Lucide → Solar review pass are complete.
Reverse equivalents remain auditable evidence; they are not copied into `verified-matches.json`.

## Current state

- Lucide snapshot: `@iconify-json/lucide@1.2.123` (1,836 icons).
- Forward semantic Solar coverage: 529 Lucide targets.
- Additional reverse equivalents awaiting forward integration: 93 targets.
- Closed reverse reviews: 1,544 targets (281 equivalents, 1,263 no-matches).
- Reverse gap tier after the collision guard: 1,170 Lucide targets.

## Visual workbench

Use `/lucide-gap` to work through the three queues:

- `GAPS À COMBLER`: semantic Solar gap plus reverse `no-match`;
- `TROUVÉS EN REVERSE`: reverse equivalent not yet integrated into the forward projection;
- `DÉJÀ COUVERTS`: already covered by the semantic forward map.

Every new reverse decision remains binary: `equivalent` or `no-match`. A reviewed equivalent is
kept as a durable reverse packet and later integrated into the forward map only after its Solar
candidate has been checked in the opposite direction. Do not mutate `verified-matches.json` during
this phase.

There is currently no unreviewed reverse packet: all 1,836 Lucide entries are either covered by
the semantic forward projection or have a closed binary reverse review.

The next work queue is the 93 reverse `equivalent` rows that are not yet represented in the
Solar → Lucide projection. Review them in `/lucide-gap` with `TROUVÉS EN REVERSE`, resolve
many-to-one Solar collisions, then integrate only the validated choices into
`forward-semantic-promotions.ts`. After that integration, audit the remaining 1,169 `gap` rows
for false negatives. This is a quality pass over closed `no-match` decisions, not a new packet
generation phase.

## Regeneration

When the semantic forward map changes, regenerate and check the report:

```bash
pnpm --filter icon-parity lucide:coverage
pnpm --filter icon-parity lucide:coverage:check
```

Never reuse a closed review target. `generate-lucide-coverage.ts` rejects duplicate IDs across all
closed reverse review files.
