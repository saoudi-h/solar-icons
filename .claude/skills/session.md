---
name: protocol-session
description: 'Mandatory bootstrap for any new session. Invoke before any work begins.'
---

# /session — Start

**You MUST complete Steps 1–3 before writing any code.**

## STEP 1 — Load context

1. Run `find . -name AGENT.md -not -path '*/node_modules/*'` and read every file found, root-first.
2. Read the most recent file in `.autonomos/worklogs/` (if any).
3. Read `.autonomos/TASKS.md`.

RESPOND with a **3-line max** summary of what you retained. Do not continue without this response.

## STEP 2 — Select task

Pick the highest-priority task not marked `[x]` or `[!]`. If none, ask the user.

RESPOND: `Task: [ID] — [title]. Starting.`

## STEP 3 — Mark and begin

Set the task to `[/]` in `.autonomos/TASKS.md`. Now you may work.

## Session rules (apply until session ends)

1. **Before every non-trivial decision:** check if an AGENT.md says something about it.
2. **Every time you learn something new** (user correction, discovered convention, technical choice): write it to the relevant AGENT.md **now**, not later.
3. **When the session ends:** invoke the `/crystallize` workflow. You cannot close without it.
