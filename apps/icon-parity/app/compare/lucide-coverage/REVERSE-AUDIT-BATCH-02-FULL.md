# Reverse Audit: Lucide Gap Batch 02

This packet closes the next 100 Lucide targets after the 50-target calibration packet. The board
generator excluded all previously closed IDs, so this pass contains only fresh targets.

Machine-readable decisions:
[`lucide-gap-batch-02-non-equivalent-review.json`](reverse-batches/lucide-gap-batch-02-non-equivalent-review.json).
The 100-target board template is
[`lucide-gap-batch-02-non-equivalent.json`](reverse-batches/lucide-gap-batch-02-non-equivalent.json);
the earlier 50-target template is preserved as
[`lucide-gap-batch-01-non-equivalent-calibration.json`](reverse-batches/lucide-gap-batch-01-non-equivalent-calibration.json).

## Result

- 100 targets reviewed in one closed packet.
- 76 strict reverse equivalents.
- 24 explicit no-matches.
- Every row has a binary decision, a rationale, and at most one accepted Solar candidate (with the
  strongest alternatives retained in the board evidence).
- No `verified-matches.json` change; reverse decisions remain auditable evidence in `coverage.json`.
- Closed rows are removed from the pending backlog automatically. The next generated packet starts
  at the next unreviewed Lucide target.

The reverse review is intentionally separate from the forward production sheets: a reverse
equivalent proves that the Lucide target has an interchangeable Solar concept, but does not silently
rewrite an existing Solar row whose forward review was previously marked `variant` or `related`.
Those promotions, when desired, are a separate adjudication step.

## Verification

```bash
pnpm --filter react-app lucide:gap:check
pnpm --filter react-app lucide:coverage
git diff --check
```
