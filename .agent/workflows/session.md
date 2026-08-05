---
name: protocol-session
description: 'Mandatory bootstrap for any new session. Invoke before any work begins.'
---

# /session — Start

> **Authority:** The protocol never expands the user's requested scope. Answer-only, read-only, and diagnosis-without-fix requests remain non-mutating.

## STEP 1 — Orient

1. Read the root `AGENT.md`.
2. Read `.autonomos/TASKS.md`.

RESPOND with a **3-line max** summary of relevant project context. Do not continue without this response.

## STEP 2 — Resolve the objective

1. If the user supplied an objective, it takes precedence. Match a task, use `/issue` for untriaged signals, or register a task for a clear authorized change.
2. For non-mutating work, load only the context needed, answer, and do not start a task.
3. Without a user objective, resume a `[/]` task; otherwise pick the highest-priority `[ ]` task. If none exists, ask the user.

RESPOND: `Task: [ID] — [title]. Starting.` when a task will run.

## STEP 3 — Begin

Invoke `/task`; it owns scoped context, planning, and the `[/]` transition.

## Session rules

1. Before non-trivial decisions, consult the applicable root → target `AGENT.md` chain.
2. Capture durable knowledge according to `/crystallize`, within user authority.
3. When authorized task work ends, invoke `/crystallize`.
