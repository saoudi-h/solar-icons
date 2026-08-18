# Lucide gap review batches

These files are durable review packets for the reverse direction: Lucide icons that do not yet
have a confirmed strict Solar equivalent. They are generated from `lucide-coverage/coverage.json`
and are separate from the Solar production sheets.

Generate a visual packet from the repository root with:

```bash
pnpm --filter icon-parity lucide:gap:board -- --batch 1 --coverage non-equivalent
```

The command writes temporary review boards under `.atlas/lucide-gap/` and a tracked decision
template in this directory. `.atlas/` is disposable; the JSON template is the durable handoff.
Inspect the complete packet in one pass (100 targets by default), preserve up to three Solar
candidate IDs, and use only `equivalent` or `no-match` for the reverse decision. A candidate or
near miss is not an accepted match until the visual review proves semantic interchangeability.

The generated template is the board handoff. The durable result is the sibling `*-review.json`
file, which closes every target with its candidates, binary decision, and rationale. Validate a
closed packet with:

```bash
pnpm --filter icon-parity lucide:gap:check
```

Do not create micro-batches inside a generated packet. A single review commit may contain many
strict promotions and explicit no-match decisions; this keeps the evidence auditable without
revisiting the same board repeatedly.

Closed reverse rows are recorded back into `coverage.json` as review evidence and removed from the
pending gap queue. A reviewed `no-match` therefore remains visible and auditable, but will not be
shown again as unfinished work.

Do not edit `verified-matches.json` while completing a reverse batch. Reverse decisions are
evidence until an explicit integration pass reconciles aliases with the forward Solar production
projection.
