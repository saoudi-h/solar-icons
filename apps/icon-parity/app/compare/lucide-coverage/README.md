# Lucide Coverage Report

This reference explains the generated reverse coverage report:
`apps/icon-parity/app/compare/lucide-coverage/coverage.json`.

## Purpose

The 13 production sheets answer the first direction: for each Solar icon, which Lucide icon is a
strict replacement, if any.

The coverage report derives an inverse view from the semantic Solar → Lucide projection: for each
Lucide icon, does Solar already have a confirmed interchangeable icon?

This report does not create new matches and does not modify `verified-matches.json`.

## Semantic Policy

The active reverse projection is `semanticDecision`. It includes the reviewed forward variants,
explicit related promotions, and reference overrides documented in
`forward-semantic-promotions.ts`. The historical `strictDecision`/`strictSolarMatches` fields remain
for comparison only.

Each Lucide entry has exactly one binary projection:

- `semanticDecision: "match"` when at least one Solar semantic row selects it;
- `semanticDecision: "no-match"` otherwise, meaning "not covered by the active projection".

The reverse migration view adds a separate precision tier in `reverseTier`:

- `exact`: at least one semantic Solar match exists; use `preferredSolarMatch` when present;
- `fallback`: no exact Solar match exists, but `fallbackSolarMatches` were explicitly reviewed as
  context-dependent substitutes;
- `gap`: neither an exact replacement nor a reviewed fallback exists.

The tier is intentionally separate from the binary forward decision. A fallback is not promoted to
`semanticDecision: "match"`, and it must never be inferred from a name collision.

The `coverage` field explains why:

- `equivalent`: strict Solar coverage exists;
- `non-equivalent`: Lucide was selected only as a `variant` or `related` reference;
- `candidate-only`: Lucide was shortlisted but never selected as a strict equivalent;
- `no-recorded-coverage`: Lucide never appeared in the recorded Solar to Lucide pass.

## Commands

Run from the repository root:

```bash
pnpm --filter icon-parity generate:atlases
pnpm --filter icon-parity lucide:coverage
pnpm --filter icon-parity lucide:coverage:check
```

`lucide:coverage` regenerates `coverage.json` from:

- `.atlas/lucide/index.json`;
- `app/compare/lucide-production/sheet-01.json` through `sheet-13.json`.

`lucide:coverage:check` fails when the committed report is stale.

## Backlog

`coverage.json.backlog` contains every Lucide icon with `strictDecision: "no-match"`, ranked into
suggested batches of 100 icons. The first 50-target packet was a calibration exception; subsequent
packets are closed in 100-target passes.

Use the backlog for the second direction, Lucide gap discovery:

1. Pick one `suggestedBatch`.
2. Inspect the Lucide atlas cells for those icons.
3. Inspect the attached Solar evidence, including the evidence `role`.
4. Decide whether Solar already has a truly interchangeable concept that the first pass missed.
5. Record any promotion in a separate strict adjudication artifact before mutating the accepted map.

Closed reverse reviews are loaded automatically from `reverse-batches/*-review.json`. Their rows are
removed from the pending backlog but remain attached to the corresponding `coverage.json` entry as
`reverseReview` evidence. This prevents a later agent from re-reviewing a closed target.

Do not treat `non-equivalent` or `candidate-only` as a match. They are just the first audit targets
because they have existing visual context. Some `variant` rows may become strict matches later, but
only after deliberate visual adjudication.
