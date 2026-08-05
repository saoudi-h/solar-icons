---
name: protocol-issue
description: 'Optional intake for problems, proposals, and questions before choosing implementation.'
---

# /issue — Capture and triage

> Use this workflow only when the need or solution requires triage. A direct, clear, authorized change may start as a task.

## STEP 1 — Build context

1. Read root and applicable root → target `AGENT.md` files.
2. Read `.autonomos/ISSUES.md` if it exists and search for duplicates.
3. Read related tasks or worklogs only when they provide evidence.

## STEP 2 — Record the signal

Create `.autonomos/ISSUES.md` on first use. Record without prescribing implementation:

```markdown
## [ISSUE-ID] Concise title

- Type: problem | proposal | question
- Status: open | accepted | resolved | declined
- Evidence: observed facts or motivation
- Impact: why it matters
- Desired outcome: solution-independent success
- Tasks: none | TASK-ID, ...
```

Merge duplicate evidence into the existing issue instead of creating another.

## STEP 3 — Triage

- **Open:** preserve the signal; do not create a task before an approach is accepted.
- **Accepted:** create one or more scoped tasks through `/task` and link both directions.
- **Resolved/declined:** record the outcome and concise rationale; preserve the issue as history.
