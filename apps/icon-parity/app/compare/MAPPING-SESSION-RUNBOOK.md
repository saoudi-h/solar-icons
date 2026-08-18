# Solar to Lucide Mapping Session Runbook

Use this how-to when starting with no chat history. Its audience is a vision-capable coding agent
responsible for completing the Solar to Lucide production pass. The machine-readable checkpoint is
`mapping-state.json`.

The objective is to process all 13 Solar atlas sheets in one continuous agent session. A commit is
a durability checkpoint, not a reason to stop. Do not add icons, start another reference pack,
measure reverse Lucide parity, or modify the accepted mapping during this pass.

## Start Once

From the repository root, read:

1. `.agent/workflows/session.md` and the applicable `AGENT.md` files;
2. `apps/icon-parity/app/compare/mapping-state.json`;
3. this runbook;
4. `apps/icon-parity/app/compare/REVIEW-PROCEDURE.md`.

Inspect `git status --short`. Preserve unrelated changes. Then generate the complete pinned visual
inventory once:

```bash
pnpm --filter icon-parity generate:atlases
pnpm --filter icon-parity production:status
```

The atlas contains 13 Solar sheets and 19 Lucide sheets. Keep the same generated Lucide atlas for
the entire session. Do not regenerate it between Solar batches.

## Continue Until All 13 Sheets Are Complete

Run this loop without returning control after an individual batch commit.

### 1. Prepare or resume the next sheet

```bash
pnpm --filter icon-parity production:prepare
```

The command either creates the lowest missing batch or reports the lowest incomplete batch under
`app/compare/lucide-production/`. It never overwrites progress. The file contains at most 100 Solar
icons; the thirteenth sheet contains the remainder.

Run the structural validator, replacing `N` with the reported sheet number:

```bash
pnpm --filter icon-parity production:validate -- N
```

### 2. Discover candidates from the full Lucide atlas

Inspect `.atlas/solar/solar-NN.png` and all 19 images under `.atlas/lucide/`. Do not inspect
`verified-matches.json` during discovery or visual decision.

For every batch entry:

1. identify the rendered Solar object and its action, state, direction, count, and enclosure;
2. inspect Lucide by visual concept, displayed name, synonyms, and nearby shape families;
3. record zero to three canonical Lucide IDs in `candidates`;
4. set `discoveryComplete` to `true` even when the candidate list is intentionally empty.

Do not write a prose retrieval note for every icon. The candidate IDs are the durable retrieval
record. When all entries have been searched, set the batch `phase` to `visual-decision` and run:

```bash
pnpm --filter icon-parity production:validate -- N
pnpm --filter icon-parity production:review -- app/compare/lucide-production/sheet-NN.json
```

### 3. Resolve the enlarged visual boards

Inspect every `.atlas/review/review-*.png` board. Each row contains the Solar target followed by up
to three shortlisted Lucide candidates.

For every entry, set `status` to `resolved` and record exactly one of:

- `equivalent`: interchangeable concept and specificity;
- `variant`: same concept with a meaningful drawing difference. This is audit-only until a later
  visual review proves it is interchangeable in meaning;
- `related`: nearby subject but not interchangeable. This is audit-only and not a replacement;
- `no-match`: no shortlisted or full-atlas Lucide icon preserves the meaning.

For a non-no-match decision, record the canonical Lucide `reference` and `referenceId`; the ID must
be present in `candidates`. For `no-match`, leave both fields null.

Keep obvious equivalent rows compact: an empty note is allowed. A concrete English note is required
for `variant`, `related`, and `no-match`. If evidence is genuinely insufficient, set `status` to
`unresolved`, leave the decision and reference fields null, and explain what is missing. Never guess
merely to complete a sheet.

When no row remains pending, set the batch `phase` to `complete` and run:

```bash
pnpm production:validate -- N
```

For a complete batch, validation also writes
`.atlas/production/sheet-NN/evaluation.json`. The comparison happens only now, after decisions are
frozen. Its audit queue contains:

- disagreements with the existing map;
- all production no-matches;
- all variants and related decisions;
- unresolved rows;
- a deterministic sample of otherwise agreeing equivalents.

The evaluation report is generated evidence. The versioned batch JSON is the durable result.
The future accepted-map mutation is stricter than the production labels: only `equivalent` is
currently recorded as a replacement match. `variant` and `related` remain audit evidence until
deliberately promoted or resolved to explicit `no-match`. A later visual adjudication may promote a
`variant` only when the meaning is truly interchangeable.

### 4. Commit the checkpoint and continue immediately

From the repository root, confirm that the batch is the only intended tracked change. Commit it:

```bash
git add apps/icon-parity/app/compare/lucide-production/sheet-NN.json
git commit -m "chore(icon-parity): map Solar sheet NN to Lucide"
```

Then continue in the same agent turn:

```bash
pnpm --filter icon-parity production:status
pnpm --filter icon-parity production:prepare
```

Return to candidate discovery for the next sheet. Do not send a final response, wait for another
user message, or ask permission merely because one sheet was committed. The authorized terminal
condition is all 13 sheets complete.

## Compact Batch Schema

Each entry stores only information required for reproducibility:

```json
{
    "solar": "diskette",
    "solarId": "S0332",
    "candidates": ["L1359"],
    "discoveryComplete": true,
    "status": "resolved",
    "reference": "save",
    "referenceId": "L1359",
    "decision": "equivalent",
    "note": ""
}
```

Long prose on obvious equivalents wastes output tokens and is not evidence of better review.
Specific notes remain mandatory wherever a difference or absence must be justified.

## Source of Truth Order

When files or prior conversation disagree, use this order:

1. `mapping-state.json` defines the active direction and authorized continuous action.
2. `lucide-production/sheet-NN.json` files contain durable production progress.
3. `REVIEW-PROCEDURE.md` defines decision semantics and specificity rules.
4. `pilot-adjudication.json` and `pilot-results.json` are completed calibration evidence.
5. `verified-matches.json` is the old accepted map. It is comparison evidence after decision freeze,
   never a candidate-discovery shortcut.
6. `.atlas/` contains reproducible working images and generated evaluation reports.

Chat transcripts, generated images, and agent memory are not durable progress.

## Decision Discipline

A matching name is only a lead. Preserve every semantic dimension visible in Solar:

- primary object;
- action or state;
- direction and orientation;
- number or multiplicity;
- enclosure or container;
- domain-specific modifier.

A generic base object is not equivalent to a specific composite. `no-match` is valid only after
relevant Lucide synonym and shape families were inspected. When one family error is discovered,
check sibling icons in the active batch before continuing.

## Recovery and Actual Stop Conditions

- If `.atlas/` is missing, regenerate it once and resume the lowest incomplete versioned batch.
- If a context compaction occurs, run `pnpm production:status` and continue the reported sheet.
- If the source snapshot or stable IDs change, stop and report the mismatch.
- If an unrelated dirty-worktree change overlaps the active batch, stop and report it.
- If execution is forcibly ending before a sheet is complete, validate and commit the partial batch
  with its real phase, then record the exact resume point. This is a fallback, not the normal loop.
- Do not stop for a completed batch, a successful commit, a large remaining count, or because the
  next sheet has not yet been created.

When `production:status` reports 13/13 sheets and 1,247/1,247 icons complete, stop before modifying
`verified-matches.json`. A stronger reviewer or maintainer will inspect the targeted audit queues
and authorize any accepted-map mutation separately. That later mutation must collapse the production
records to the binary contract: strict `equivalent` or explicit `no-match`, after any deliberate
variant promotions have been reviewed.

After the production pass is complete, continue from `LUCIDE-COVERAGE-RUNBOOK.md`. Do not use this
production runbook to restart completed sheet mapping.
