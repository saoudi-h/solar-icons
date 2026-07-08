---
name: protocol-task
description: 'Mandatory procedure before starting a new task. Invoke before touching code.'
---

# /task — Begin a task

**Do NOT touch code before Step 2 is done.**

## STEP 1 — Build fractal context

1. From the target file/folder, walk up to the project root. Read every `AGENT.md` you find on that path (root → target).
2. If no local `AGENT.md` exists at the target and you have worked in that folder before, propose creating one.

## STEP 2 — Declare plan

State in 3–5 steps what you will do. The user must be able to say OK or adjust.

## STEP 3 — Execute

Mark the task `[/]` in `.autonomos/TASKS.md`, then work.

## During execution

1. **Before every non-trivial decision:** consult the relevant AGENT.md.
2. **Every new learning:** append to an AGENT.md immediately. If it contradicts an existing entry, replace in place and note the change in the worklog.
3. **Root AGENT.md** uses the structured template. **Local AGENT.md** files are free format — one line is enough.

## End of task

Mark `[x]` in TASKS.md. Invoke `/crystallize`.
