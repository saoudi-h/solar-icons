---
name: protocol-adopt
description: 'Adopt optional specifications and decision records without rewriting project history.'
---

# /adopt — Organize project knowledge

> This is an explicit, reviewable migration. It never expands user authority.

## STEP 1 — Establish scope

1. Confirm the target area and read root → target `AGENT.md` files.
2. Read `.autonomos/PROTOCOL.md`, relevant issues, tasks, worklogs, and candidate Markdown.
3. Keep the inventory bounded; do not load unrelated context branches.

## STEP 2 — Classify sources

- Target behavior or requirements → `.autonomos/specs/`
- One technical choice and its rationale → `.autonomos/decisions/`
- Stable operating guidance → `AGENT.md`
- User/developer reference → `docs/`
- Historical or uncertain material → preserve and report

## STEP 3 — Propose before writing

Create a source → destination map with scope, provenance, confidence, and conflicts.
Do not rewrite `worklogs/`, `ISSUES.md`, `TASKS.md`, or managed protocol artifacts.

## STEP 4 — Confirm and apply

Show the map and unresolved conflicts to the user before writing.
After approval, create or update only approved project-owned artifacts.
Copy and link by default; move or remove sources only with explicit approval.
Keep extracted specifications `draft` and decisions `proposed` until accepted.

## STEP 5 — Verify

Check links, duplicates, scope, status, and acceptance criteria.
Record the migration in a new worklog, then run `/reconcile` for a second pass.
