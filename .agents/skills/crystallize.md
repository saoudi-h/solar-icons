---
name: protocol-crystallize
description: 'Mandatory close-out before ending a session. Forces durable knowledge capture.'
---

# /crystallize — End session

> **CRITICAL:** You MUST NOT ask the user what to crystallize. This is YOUR job. Reflect, decide, write. Then inform the user what you saved.
> **Authority:** If the user limited the work to read-only or no changes, do not modify any artifact; deliver the substantive answer and report that crystallization was skipped.

## STEP 1 — Worklog

Create `.autonomos/worklogs/YYYY-MM-DD-[TASK_ID].md` containing:

- What was done
- Key decisions and why
- Files modified
- Next steps for the next session

## STEP 2 — Route knowledge

For each candidate ask: **Would this still guide a different future task?**

- **No:** keep observations, measurements, chronology, and completed actions in the worklog.
- **Operational explanation:** update existing component documentation when within scope.
- **Yes:** add only stable, normative, non-duplicated guidance to the narrowest applicable `AGENT.md`.

Consolidate or replace superseded entries; remove disproven guidance. Never create an `AGENT.md` based on file count alone.

## STEP 3 — Task status

Mark `[x]` only if complete, `[!]` only if an unresolved dependency prevents progress, or keep `[/]` for partial work.

## STEP 4 — User response

First, deliver a self-contained answer to the original request: outcome, evidence, limitations, and relevant next step. Do not replace it with crystallization status.

Then append this supplementary handoff:

`Crystallization — Task: [x] / [/] / [!] — [ID] | Worklog: .autonomos/worklogs/... | AGENT.md updated: [yes / no — reason]`
