---
name: protocol-crystallize
description: 'Close work with a proportionate record, durable knowledge and bounded current context.'
---

# /crystallize — End session

> **CRITICAL:** You MUST NOT ask the user what to crystallize. Reflect, decide, write, then report.
> **Authority:** If the user limited the work to read-only or no changes, do not modify any artifact; deliver the substantive answer and report that crystallization was skipped.

## STEP 1 — Worklog: only what outlives the session

Write `.autonomos/worklogs/YYYY-MM-DD-[TASK_ID].md` with only what a future agent cannot recover from code, git, tests or other records. Use exactly this shape; do not model it on existing worklogs:

`# [ID] Title` · `Outcome:` 1–3 lines · `Decisions:` non-obvious choices and why · `Validation:` check → result, one line each · `Open:` limits and follow-ups (write `none` when empty).

Leave out chronology, plans, file lists, restated task/issue/commit text, explanations of what was unnecessary, and raw data (save it beside the worklog and link it). Stay under 2,500 bytes. An S task whose commit and task line say everything needs no worklog.

## STEP 2 — Consolidate knowledge

For each candidate ask: **Would this still guide a different future task?** Then: does it apply to most tasks in this scope, already exist, replace a claim, or belong in a narrower scope?

- Keep observations, measurements, chronology and completed actions in the worklog; update existing component documentation for operational explanation.
- Route stable operating guidance to the narrowest `AGENT.md`; tool-, component- or incident-specific knowledge goes to a local `AGENT.md` or project documentation. Root `AGENT.md` stays under 8,000 bytes, local ones under 4,000: consolidate before adding.
- Route target requirements to `specs/` and decision rationale to `decisions/`; update existing knowledge instead of duplicating it.
- Consolidate or replace superseded and disproven guidance claim by claim, preserving valid restrictions in mixed paragraphs. Do not turn a current choice into a broader prohibition.
- Do not turn historical worklogs, issues, or tasks into current specs/decisions without `/adopt`. Never create an `AGENT.md` based on file count alone. Keep progress out of `AGENT.md`; rewrite Current direction only when it helps the next session.

## STEP 3 — Close the work boundary

Mark `[x]` only if complete, `[!]` only if an unresolved dependency prevents progress, or keep `[/]` for partial work. Check linked issue acceptance separately.
Move finished records out of current context now: `autonomos close <ID>` moves a `[x]` task (adding `Completed:`) or a resolved/declined issue to `.autonomos/archive/closed/`; without the CLI, move the entry by hand. A closed issue gets a one-line resolution, never a progress journal.
Verify the actual resulting text and links; preserve unrelated concurrent edits. Then run `autonomos status --strict` when available: it checks structure and flags records removed or shortened without their content landing elsewhere. A clean status is not completion; the work is recorded only once its task, worklog (unless S) and closure exist.

## STEP 4 — User response

First deliver a self-contained answer to the original request: outcome, evidence, limitations, and relevant next step.
Then append this supplementary handoff:

`Crystallization — Task: [x] / [/] / [!] — [ID] | Worklog: .autonomos/worklogs/... or none (S) | AGENT.md updated: [yes / no — reason]`
