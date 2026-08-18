# Lucide Coverage Runbook

Use this how-to after the Solar to Lucide production pass is structurally complete. Its audience is
a coding or vision-capable agent continuing the parity work with no chat history.

## Goal

Turn the completed Solar to Lucide production sheets into two reliable work queues:

1. a semantic binary Solar to Lucide replacement projection;
2. a Lucide to Solar gap backlog for future icon additions.

Do not add icons, start another source pack, or mutate `verified-matches.json` during this step.

## Start

From the repository root, read:

1. root `AGENT.md`;
2. `.agent/workflows/session.md`, `.agent/workflows/task.md`, and
   `.agent/workflows/crystallize.md`;
3. `apps/icon-parity/AGENT.md`;
4. `apps/icon-parity/app/compare/mapping-state.json`;
5. `apps/icon-parity/app/compare/REVIEW-PROCEDURE.md`;
6. this runbook;
7. `apps/icon-parity/app/compare/lucide-coverage/AUDIT-REPORT.md`.
8. `apps/icon-parity/app/compare/REVERSE-COVERAGE-TIERS.md`.

Then run:

```bash
pnpm --filter icon-parity production:status
```

The expected baseline is 13 complete sheets and 1,247 resolved Solar icons.

If `.atlas/` is missing, regenerate it:

```bash
pnpm --filter icon-parity generate:atlases
```

Then regenerate coverage:

```bash
pnpm --filter icon-parity lucide:coverage
pnpm --filter icon-parity lucide:coverage:check
```

## Decision Contract

The active forward projection is semantic and binary:

- `equivalent` and reviewed semantic promotions mean `MATCH`;
- explicit semantic exclusions and the remaining `related`/`no-match` rows mean `NO MATCH`;
- the reverse queue still uses only `equivalent` or `no-match` decisions.

The generated `coverage.json` uses `semanticDecision` as the active reverse projection. The
historical `strictDecision` fields remain available for audit and must not be confused with the
semantic result. For reverse migration, also use `reverseTier`: `exact`, `fallback`, or `gap`.
An exact row has a deterministic `preferredSolarMatch`; a fallback row is explicitly reviewed but
does not preserve every state or modifier; a gap has neither. Never infer a fallback from a name
collision.

## Work Queues

Use `apps/icon-parity/app/compare/lucide-coverage/coverage.json` and the `/lucide-gap` workbench.

Before any reverse-codemod design, read `apps/icon-parity/app/compare/lucide-coverage/COLLISION-AUDIT.md`.
It records Lucide references selected by multiple Solar icons and identifies where a deterministic
Solar preference is still required.

Priority order:

1. `entries` where `reverseTier === "gap"`: true Lucide gap backlog.
2. `entries` where `reverseTier === "fallback"`: decide whether the missing precision deserves a
   new Solar icon; preserve the fallback as evidence.
3. `entries` where `semanticSolarMatches.length > 1`: collision audit for future codemods.
4. `entries` where `semanticDecision === "match"`: false-positive audit after the reverse gap pass.
5. `backlog` rows where `coverage === "non-equivalent"`: near misses and possible semantic
   promotions after visual review.
6. `backlog` rows where `coverage === "candidate-only"`: candidates seen but not selected.
7. `backlog` rows where `coverage === "no-recorded-coverage"`: true Lucide gap backlog.

Do not process all missing Lucide icons blindly. Work in packets of 100 with a declared
filter and record which filter was completed. A packet is closed only when every row has a binary
decision; do not split a packet into 10–13-row promotion loops.

To prepare a visual reverse-review packet, generate the target boards and durable decision
template:

```bash
pnpm --filter icon-parity lucide:gap:board -- --batch 1 --coverage non-equivalent
```

The boards are written to disposable `.atlas/lucide-gap/` output. The tracked template is written
under `lucide-coverage/reverse-batches/`; fill its `solarCandidates` and binary `decision` fields
without editing production sheets or `verified-matches.json`. The board includes the strongest
recorded Solar evidence first, but every target must still be checked against the complete Solar
atlas before accepting `equivalent`.

## Batch Method

For each batch:

1. state the exact filter, for example `backlog where coverage === "non-equivalent"` and
   `suggestedBatch === 1`;
2. inspect all rows in the 100-target packet against the complete Solar atlas;
3. preserve zero to three candidates and write `equivalent` or `no-match` plus a rationale for
   every row in a durable `*-review.json` artifact;
4. run `pnpm --filter icon-parity lucide:gap:check` to ensure the packet is actually closed;
5. only in a separate integration pass, edit production rows that are deliberately promoted;
6. rerun `production:validate` for each edited sheet and then rerun `lucide:coverage` and
   `lucide:coverage:check`;
7. summarize the whole packet once. Do not make a commit per individual icon.

Keep candidates even when the final decision is no strict match. They are useful audit evidence.
The coverage generator imports closed `*-review.json` packets: reviewed rows remain in the full
Lucide inventory but are removed from the pending backlog, including explicit `no-match` rows.
When a reverse equivalent points to a Solar row already used for another Lucide target, retain the
reverse evidence and defer alias reconciliation to the integration pass; never silently replace a
forward reference just to make the reverse counter increase.

## Stop Conditions

Stop and report instead of guessing when:

- the generated Lucide atlas does not match `@iconify-json/lucide@1.2.123`;
- an intended correction would require changing `verified-matches.json`;
- a batch cannot be visually inspected;
- the same Lucide icon appears to map to several Solar icons and the semantic distinction is unclear.

When ending a session, write the worklog required by `/crystallize` and include:

- filter reviewed;
- production rows changed;
- validation commands and results;
- next exact filter to continue.
