---
name: protocol-crystallize
description: 'Mandatory close-out before ending a session. Forces durable knowledge capture.'
---

# /crystallize — End session

> **CRITICAL:** You MUST NOT ask the user what to crystallize. This is YOUR job. Reflect, decide, write. Then inform the user what you saved.

## STEP 1 — Worklog

Create `.autonomos/worklogs/YYYY-MM-DD-[TASK_ID].md` containing:

- What was done
- Key decisions and why
- Files modified
- Next steps for the next session

## STEP 2 — Crystallize into AGENT.md

Ask yourself silently — do NOT ask the user:

1. **What did I learn?** (preferences, constraints, conventions, corrections) → Write to the relevant AGENT.md.
2. **Is any AGENT.md entry now wrong?** → Replace in place, log the change in the worklog.
3. **Should a new local AGENT.md exist?** (worked in a folder with >5 files and no AGENT.md) → Create one, free format.

## STEP 3 — Task status

Mark the task `[x]` (or `[!]` if blocked) in `.autonomos/TASKS.md`.

## STEP 4 — Report

RESPOND with exactly:

- `Task: [x] / [!] — [ID]`
- `Worklog: .autonomos/worklogs/...`
- `AGENT.md updated: [yes / no — reason]`

If you cannot produce these 3 lines, resume from Step 1.
