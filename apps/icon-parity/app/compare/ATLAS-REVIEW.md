# Visual Atlas Matching Pilot

This pilot evaluates whether a vision-capable agent can produce reliable Solar → Lucide mappings more efficiently than the existing lexical-first workflow.

It does not modify `verified-matches.json`. Pilot results remain isolated until a maintainer accepts the method and the calibration results.

For a new session, start with `MAPPING-SESSION-RUNBOOK.md` and `mapping-state.json`. This document
explains the atlas method; it does not define the current checkpoint by itself.

## Generate the atlases

From the repository root:

```bash
pnpm --filter icon-parity generate:atlases
```

The command creates ignored local artifacts under `.atlas/`:

- `solar/`: 13 labeled 10×10 sheets for the 1,247 Solar Linear icons plus `index.json`;
- `lucide/`: labeled 10×10 sheets for all canonical icons in the pinned `@iconify-json/lucide` snapshot plus `index.json`;
- `pilot/solar-pilot-30.png`: the stratified 30-icon calibration target;
- `pilot/shortlist.template.json`: the candidate-discovery output template.

Every displayed icon has a short stable ID. The indexes resolve those IDs to canonical names and record their exact sheet, row, and column. Lucide aliases are retained in the index but are not rendered as separate icons.

## Phase 1: candidate discovery

Give the agent:

1. `pilot/solar-pilot-30.png`;
2. all Lucide PNG sheets;
3. `lucide/index.json`;
4. `pilot/shortlist.template.json`;
5. the rules below.

The agent must inspect the atlas independently from the existing mapping and record zero to three canonical Lucide IDs per Solar icon. It must not decide equivalence during this phase.

Rules:

- Search by rendered concept as well as displayed names.
- Preserve object, action, state, direction, count, and enclosure.
- Treat direct name matches as leads, not verdicts.
- Include differently named candidates when their rendered concept is plausible.
- Return only IDs present in `lucide/index.json`.
- An empty shortlist means the entire Lucide atlas was inspected without finding a plausible candidate.

Save the completed file outside `.atlas`, because atlas regeneration replaces that entire directory.
The committed calibration record is `app/compare/pilot-shortlist.json`. For another batch, pass its
shortlist path to `pnpm generate:review-board -- <path>`.

## Phase 2: visual decision

Generate enlarged comparison boards:

```bash
pnpm generate:review-board
```

Give the agent the generated `.atlas/review/review-*.png` files and `decisions.template.json`.

Use exactly one decision per Solar icon:

- `equivalent`: interchangeable concept and specificity;
- `variant`: same concept, meaningful drawing or style variation;
- `related`: close subject, not interchangeable;
- `no-match`: no candidate can replace the Solar icon without changing meaning or specificity.

For `no-match`, keep `reference: null`. Otherwise, `reference` must be one of the shortlisted Lucide IDs. Notes should identify the decisive visual or conceptual evidence in one sentence.

## Calibration

The 30 targets are split into three retrieval cohorts, not expected outcomes:

- direct-name;
- alternate-vocabulary;
- specificity-trap.

The maintainer reviews all 30 final decisions and records disagreements. The pilot is successful only if false equivalents are rare, alternate-vocabulary candidates are recovered, IDs are exact, and the cost and elapsed time justify scaling to a complete 100-icon Solar sheet.

Do not merge pilot decisions into the durable map merely because all 30 slots are filled.

## Evaluate the frozen pilot

The independent visual decisions are committed in `pilot-results.json`. Validate their IDs and
decision invariants, then compare them with the existing Lucide reviews:

```bash
pnpm evaluate:atlas-pilot
```

The command writes the detailed, ignored comparison report to
`.atlas/review/pilot-evaluation.json`.

The initial calibration produced:

- 22 equivalents;
- 3 variants;
- 1 related icon;
- 4 no-matches.

After canonicalizing Lucide aliases, only 11 of 30 reference-and-decision pairs agree with the
existing mapping. The visual pass recovered six icons that the existing map marked as no-match and
rejected three existing equivalents that omitted a meaningful modifier. These disagreements are
calibration evidence, not automatic edits to `verified-matches.json`; a maintainer should adjudicate
them before the first complete 100-icon sheet is accepted.

## Completed adjudication

Generate the two three-column boards that compare Solar, the frozen atlas decision, and the
existing map:

```bash
pnpm generate:adjudication-board
```

Record decisions in `pilot-adjudication.json`, never under `.atlas/`, then validate the record:

```bash
pnpm validate:adjudication
```

All 19 disagreements were resolved by a separate vision-capable agent. The adjudicator selected the
independent atlas result in every case, with exact IDs and concept-specific notes. The validator
passes with no pending or unresolved entries, so the method has advanced to production batching.

## Continuous production pass

Production uses one versioned file per Solar atlas sheet under `lucide-production/`. The worker
generates the Lucide atlas once, then discovers candidates, reviews enlarged boards, validates,
commits, and immediately continues to the next Solar sheet in the same session.

Run `pnpm production:status` for derived progress. Follow `MAPPING-SESSION-RUNBOOK.md` for the exact
continuous loop. Production results remain isolated from `verified-matches.json` until targeted
quality audit is complete.
