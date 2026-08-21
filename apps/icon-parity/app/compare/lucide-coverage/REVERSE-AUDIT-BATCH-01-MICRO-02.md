# Reverse Audit: Lucide Non-Equivalent Batch 01, Micro-Batch 02

This micro-batch re-reviewed the next rows from the declared filter
`coverage === "non-equivalent"` and `suggestedBatch === 1`. The strict reverse criterion remains
semantic interchangeability: object, action, state, modifier, and specificity must survive
replacement; stroke and construction differences are styling only.

## Results

Two rows are promoted to strict equivalence after visual review. The generic Solar `bag` remains a
strict non-match for Lucide `shopping-bag` because the shopping-use specificity is not preserved.

| Lucide ID | Lucide         | Solar ID | Solar           | Verdict    | Evidence                                                                     |
| --------- | -------------- | -------- | --------------- | ---------- | ---------------------------------------------------------------------------- |
| L0967     | `link`         | S0569    | `link`          | equivalent | Same generic linked-chain object; stroke and link angle are stylistic.       |
| L1229     | `phone-call`   | S0741    | `phone-calling` | equivalent | Same phone-call-with-ringing state; handset and wave geometry are stylistic. |
| L1433     | `shopping-bag` | S0065    | `bag`           | no-match   | Solar is a generic handled bag; Lucide adds shopping-use specificity.        |

## Verification

- Reverse boards were generated from the updated `coverage.json` with
  `pnpm --filter icon-parity lucide:gap:board -- --batch 1 --coverage non-equivalent`.
- Solar atlas source: `.atlas/solar/solar-01.png`, `.atlas/solar/solar-06.png`, and
  `.atlas/solar/solar-08.png`.
- Lucide atlas source: `.atlas/lucide/lucide-02.png`, `.atlas/lucide/lucide-10.png`, and
  `.atlas/lucide/lucide-15.png`.
- Candidate arrays remain intact; `verified-matches.json` was not modified.

```bash
pnpm --filter icon-parity production:validate -- 1
pnpm --filter icon-parity production:validate -- 6
pnpm --filter icon-parity production:validate -- 8
pnpm --filter icon-parity lucide:coverage
pnpm --filter icon-parity lucide:coverage:check
pnpm --filter icon-parity exec tsc --noEmit
git diff --check
```
