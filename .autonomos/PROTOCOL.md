# AUTONOMOS PROTOCOL (v0.4.0-alpha)

> This file defines the project's AI workflow contract. The workflows execute it. Do not duplicate workflow steps here.

## Quick Reference

| Action | How |
|---|---|
| Start a session | Read the `/session` workflow |
| Start a task | Read the `/task` workflow |
| Triage a problem or proposal | Read the optional `/issue` workflow |
| Audit accumulated drift | Read the `/reconcile` workflow |
| End a session | Read the `/crystallize` workflow |
| Get context | Read root `AGENT.md`, then only the selected scope's ancestor chain |
| Resolve objective | Explicit user request first; otherwise resume `[/]` or pick highest-priority `[ ]` |
| Log session work | Create `.autonomos/worklogs/YYYY-MM-DD-[TASK_ID].md` |

## File Map

| File | Location | Role |
|---|---|---|
| `AGENT.md` | Root + any subdirectory | Durable guidance for its directory scope |
| `TASKS.md` | `.autonomos/TASKS.md` | Single source of truth for task state |
| `ISSUES.md` | `.autonomos/ISSUES.md` | Optional problem, proposal, and question intake |
| `worklogs/` | `.autonomos/worklogs/` | Historical session evidence, not current guidance |
| `PROTOCOL.md` | `.autonomos/PROTOCOL.md` | This file — read-only reference |
| `manifest.json` | `.autonomos/manifest.json` | Protocol version metadata |

## AGENT.md Format Rules

Store only stable guidance that will affect different future tasks. Keep transient evidence in worklogs and operational explanations in component documentation. Use the narrowest applicable `AGENT.md`; consolidate or replace obsolete entries instead of appending history.

**Root `AGENT.md`** — Must use the structured template (frontmatter + sections: Context, Workflow, Stack, Key Directories, Constraints).

**Local `AGENT.md`** (in any subdirectory) — Free format. One line is enough if it is clear. What matters: the next session can use it. Example:

```markdown
# AGENT: packages/core
- Stack: TypeScript, Vitest, tsdown
- Conventions: exports via src/index.ts, tests co-located (*.test.ts)
- Constraint: template changes require workflow test updates
```

## Issue and Task Rules

Issues describe evidence, impact, and a desired outcome without choosing implementation. Tasks describe an accepted intervention and completion criteria. Use optional `ISSUES.md` only when triage is useful; direct, clear changes may become tasks immediately. Link accepted issues and their tasks both ways.

## Task Format

`- [Status] **[ID]** Title \`Priority\` \`Complexity\``

| Status | Priority | Complexity |
|---|---|---|
| `[ ]` Todo | `🔴 Critical` | `S` Small |
| `[/]` In Progress | `🟠 High` | `M` Medium |
| `[x]` Done | `🔵 Medium` | `L` Large |
| `[!]` Blocked | `⚪ Low` | `XL` Huge |

## Metadata Rules

- **Language:** English unless AGENT.md says otherwise.
- **Tone:** Technical, concise, fact-based.
- **Continuity:** Refer to previous work as "we" or "the project".
