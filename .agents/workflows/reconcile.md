---
name: protocol-reconcile
description: 'Investigate drift, consolidate current knowledge and archive settled work.'
---

# /reconcile — Audit, repair and archive

> Stay within user authority, including read access. Read-only runs propose changes only; do not inspect unrelated host configuration, secrets or production.

## STEP 1 — Bound and classify

1. Read root and applicable scoped `AGENT.md`, current tasks/issues and relevant accepted records. Follow the protocol's archival criteria; search history only for a specific question.
2. Classify individual claims as current guidance, current state, historical evidence, or version-pinned protocol content; a paragraph may mix them.
3. Check managed integrity and context budgets with `autonomos status` when available; repair managed artifacts only through authorized `autonomos update`.
4. If the artifact format is outdated, run an authorized `autonomos migrate --dry-run`, then `autonomos migrate`, before semantic work; its remaining findings become this pass's work items. Move each follow-up it reports into an open record; leftover prose about closed work is yours to archive.

## STEP 2 — Investigate

Look for duplicates, contradictions, obsolete paths or technologies, misplaced knowledge, broken references, and task/issue acceptance mismatches.
Verify against authoritative repository source, configuration, tests, explicit decisions and targeted history. A configuration change is not a runtime observation; age, checkboxes and absent code alone do not prove obsolescence.
Classify findings as **certain**, **uncertain**, or **historical-only**.

## STEP 3 — Consolidate and archive

- **Certain:** make the smallest correction supported by evidence; preserve valid subclaims and applicable accepted requirements, decisions and temporary directives.
- **Uncertain:** do not mutate the disputed facts; leave a visible uncertainty and identify the smallest verification needed.
- **Historical-only:** preserve it outside default context when eligible; do not rewrite conclusions to match today.
- Apply the protocol's archival eligibility to coherent work batches. Completing a child task does not resolve unmet parent criteria. Consolidate still-needed knowledge in its existing narrowest home first.
- Use `/adopt` for history-to-artifact extraction into new specs/decisions; routine reconciliation may update existing guidance within authority.
- Closed tasks/issues go to `.autonomos/archive/closed/` (`autonomos close <ID>`). Move other eligible history to `.autonomos/archive/<batch>/`, preserve content/provenance/IDs and repair references. Update the topic index; retain only necessary current dependencies/outcomes, not permanent per-completion stubs.
- Over-budget `AGENT.md`: keep guidance that applies to most tasks of its scope; move the rest to a narrower `AGENT.md` or project documentation and link it. Over-long open task entries: move evidence and acceptance criteria to the worklog first, then shorten to one line. Never delete a record or its content to satisfy a finding. Findings are agent work, never escalated to the owner; one this task cannot finish becomes an open task saying what remains.

## STEP 4 — Verify and report

Re-read exact source text before edits, preserve unrelated concurrent changes, and verify links, IDs, acceptance states and current-context continuity without archives.
Check the final proposed text for journals, duplicates and unsupported prohibitions; an explanation is not proof that the resulting text is correct.
Record material changes and checks in the task worklog. Stop when a second pass produces no deterministic changes; distinguish recorded validation from checks actually run.
