---
name: protocol-reconcile
description: 'Audit and safely reconcile accumulated drift across Autonomos artifacts.'
---

# /reconcile — Audit and repair drift

> Reconciliation is evidence-driven and bounded by user authority. Never guess through a semantic conflict or rewrite history to match the present.

## STEP 1 — Inventory and classify

1. Read root and applicable scoped `AGENT.md` files, then current tasks, optional issues, relevant worklogs, linked documentation, and any existing `specs/` or `decisions/`.
2. Classify each artifact as current guidance, current state, historical evidence, or version-pinned protocol content.
3. Check protocol integrity with `autonomos status`; repair managed artifacts only through `autonomos update` when authorized.

## STEP 2 — Detect drift

Look for duplicates, contradictions, obsolete paths or technologies, misplaced knowledge, vague rules, broken references, and task/issue/worklog status mismatches.

## STEP 3 — Verify

1. Test each finding against authoritative repository source, configuration, tests, and current scoped documentation.
2. Use runtime or external evidence only when access is authorized and necessary.
3. Classify the result as **certain**, **uncertain**, or **historical-only**.

## STEP 4 — Reconcile

- **Certain:** make the smallest correction; consolidate duplicates, route misplaced content, and replace or remove disproven current guidance.
- **Uncertain:** do not mutate the disputed facts; report evidence, conflict, and concrete resolution options to the user.
- **Historical-only:** preserve it unless it exposes sensitive data or falsely claims to be current guidance.
- Missing optional `specs/` or `decisions/` are adoption candidates; do not create them automatically.
- Use `/adopt` for history-to-artifact extraction; keep `/reconcile` focused on bounded audit and correction.

Record material corrections and validation in the task worklog. Re-run checks and stop when a second pass produces no deterministic changes.
