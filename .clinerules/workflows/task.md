---
name: protocol-task
description: 'Mandatory procedure before starting a new task. Invoke before touching code.'
---

# /task — Begin a task

> **Authority:** Enter execution only for changes the user authorized. Answer-only, read-only, and diagnosis-without-fix requests must not mutate protocol or project artifacts.

**Do NOT touch code before Step 2 is done.**

## STEP 1 — Build fractal context

1. From the target file/folder, walk up to the project root. Read every `AGENT.md` you find on that path (root → target).
2. Read the linked issue when present; if resuming, read the task's most recent worklog.
3. If present, read only relevant accepted specifications and decision records; drafts/proposals inform exploration, superseded records do not constrain work.
4. Do not load unrelated worklogs or context branches. Search archives only to resolve a specific question; reserve new IDs against current and archived registries.

## STEP 2 — Declare plan

State in 3–5 steps what you will do. The user must be able to say OK or adjust; when the request already authorizes this work (explicit or delegated instruction), state the plan and proceed.

## STEP 3 — Execute

Register a new task as one line (format in `PROTOCOL.md`), mark it `[/]` in `.autonomos/TASKS.md`, then work. Evidence never goes into the task entry.

## During execution

1. **Before every non-trivial decision:** consult the relevant AGENT.md.
2. Treat new information as a crystallization candidate, not an automatic `AGENT.md` entry. Investigate and correct established in-scope drift proactively; preserve valid subclaims.
3. Keep session evidence with the task; route durable guidance only during `/crystallize`.

## End of task

Mark `[x]` only if complete, `[!]` only if an unresolved dependency prevents progress, or keep `[/]` for partial work. Invoke `/crystallize`.
