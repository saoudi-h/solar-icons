# AUTONOMOS PROTOCOL (v0.3.0-alpha)

> This file defines the project's AI workflow contract. The workflows execute it. Do not duplicate workflow steps here.

## Quick Reference

| Action | How |
|---|---|
| Start a session | Read the `/session` workflow |
| Start a task | Read the `/task` workflow |
| End a session | Read the `/crystallize` workflow |
| Get context | Read `AGENT.md` (root → local) |
| Find all AGENT.md | `find . -name AGENT.md -not -path '*/node_modules/*'` |
| Pick next task | Open `.autonomos/TASKS.md`, pick highest priority not `[x]` |
| Log session work | Create `.autonomos/worklogs/YYYY-MM-DD-[TASK_ID].md` |

## File Map

| File | Location | Role |
|---|---|---|
| `AGENT.md` | Root + any subdirectory | Fractal knowledge base (context, preferences, stack) |
| `TASKS.md` | `.autonomos/TASKS.md` | Single source of truth for task state |
| `worklogs/` | `.autonomos/worklogs/` | Session history (one file per session) |
| `PROTOCOL.md` | `.autonomos/PROTOCOL.md` | This file — read-only reference |
| `manifest.json` | `.autonomos/manifest.json` | Protocol version metadata |

## AGENT.md Format Rules

**Root `AGENT.md`** — Must use the structured template (frontmatter + sections: Context, Workflow, Stack, Key Directories, Constraints).

**Local `AGENT.md`** (in any subdirectory) — Free format. One line is enough if it is clear. What matters: the next session can use it. Example:

```markdown
# AGENT: packages/core
- Stack: TypeScript, Vitest, tsdown
- Conventions: exports via src/index.ts, tests co-located (*.test.ts)
- Constraint: template changes require workflow test updates
```

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
