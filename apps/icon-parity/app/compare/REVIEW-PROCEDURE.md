# Icon Matching Review Procedure

This is the handoff document for AI sessions continuing the Solar parity work.

For the active atlas workflow, begin with `MAPPING-SESSION-RUNBOOK.md` and
`mapping-state.json`. This document remains the normative decision policy. The state file decides
which direction, reference pack, batch, and stage are currently authorized.

## Goal

Create a strict, qualitative replacement map between Solar and Lucide, Phosphor, Hugeicons, Material Symbols, and Tabler.

The work has two separate phases:

1. **Candidate discovery** uses names, tags, categories, synonyms, general knowledge of each icon set, and shape families to build a broad shortlist.
2. **Decision review** uses rendered side-by-side comparison and concept analysis to decide whether a reference is actually interchangeable.

The same AI session may perform both phases. It must still treat them as separate steps. A good candidate shortlist is not evidence of a match, and a bad shortlist must be rebuilt before deciding `no-match`.

## Source Of Truth

- `verified-matches.json` contains decisions made after visual and conceptual review.
- `rejected-candidates.json` contains retrieval leads that are clearly irrelevant and should not be shown again.
- `data.ts` retrieves candidates. Its ranking is a discovery aid, never a verdict.
- `page.tsx` is the review tool, not the source of truth.

Current state:

- Solar inventory: 1,247 logical icons.
- Reference sets: Lucide, Phosphor, Hugeicons, Material Symbols, Tabler.
- Verified decisions: 6,235.
- All 1,247 Solar icons currently have one decision for each of the five sources.
- The next phase is re-audit and enrichment, not first-pass completion.

The JSON files are append-only working records and are not ordered by review progress. Determine progress from the Solar/source pairs, not from the last line of either file.

## Decision Vocabulary

Use exactly one working decision per Solar/source pair:

- `equivalent`: interchangeable for the same concept and specificity.
- `variant`: same concept, but a meaningful drawing or style variant. Preserve it for audit only; do not count it as a strict replacement.
- `related`: thematically close but not interchangeable. Preserve it for audit only; do not present it as a replacement.
- `no-match`: no source icon can replace the Solar icon without changing the intended meaning or specificity.

Final accepted output is binary:

- accepted `equivalent` rows become matches;
- accepted `no-match` rows become explicit non-matches;
- `variant` and `related` rows are adjudication evidence, not final replacements. A `variant` row
  may be promoted only after a new visual review proves it is interchangeable in meaning.

Important distinctions to check:

- arrow versus chevron versus caret versus angle;
- object versus category;
- object versus container or case;
- earbuds versus headphones;
- open, closed, charged, paused, removed, or active state;
- left versus right;
- singular versus plural;
- generic symbol versus domain-specific composite;
- direction, count, and enclosing shape;
- filled, outlined, rounded, sharp, or otherwise meaningful drawing differences.

## Batch Boundaries

The Contact-sheet boundaries below describe the existing browser review workflow. When
`mapping-state.json` activates an atlas batch, its fixed batch definition takes precedence; do not
mix the two batching schemes in one session.

- Work on one fixed Contact sheet group at a time.
- The UI group contains 12 Solar icons. If needed, review it internally in smaller packets of 6 to 12 icons.
- Do not advance to the next UI group until every icon in the current group has one decision for all five sources.
- A `no-match` row is a completed decision. An absent row is unresolved.
- The group counter is a progress aid, not proof that the decisions are correct.
- If a later audit reveals a bad earlier decision, reopen and correct that pair deliberately. Completed does not mean immutable.

## Phase 1: Candidate Discovery

For every Solar icon, first write a short concept brief from the rendered Solar icon and its metadata:

- primary object or symbol;
- action, state, or modifier;
- direction and orientation;
- enclosing shape or container;
- count or multiplicity;
- relevant visual family, such as chevron, caret, arrow, bandage, case, or headphones.

Then search each source using all of the following, not just the Solar name:

1. Name and tag terms from Solar.
2. Synonyms and domain vocabulary. For example, `adhesive-plaster` may be called `bandage`, and a chevron may be called `caret` or `expand`.
3. Shape-family terms. For directional symbols, always inspect arrow, chevron, caret, angle, and expand candidates when the source uses those naming conventions.
4. State and specificity terms, such as `open`, `closed`, `charge`, `check`, `remove`, `left`, and `right`.
5. Known naming conventions of the source set. These are search hints only, not automatic matches.

The shortlist must contain plausible alternatives from different naming families when they exist. Do not let a direct name match crowd out structural candidates. In particular, an `a-arrow-*` icon is not a valid substitute for a chevron merely because both names contain `arrow`.

Never infer a shape from a numbered suffix. Icon sets use suffixes differently: in Hugeicons, for example, `arrow-up-01` is a chevron-like form while `arrow-up-02` includes an arrow shaft. Every numbered family member must be rendered before it is selected.

If the shortlist contains only generic symbols or unrelated names, search the source collection again using the concept brief before deciding `no-match`.

## Phase 2: Visual Decision

For each source, inspect the Solar render and every plausible candidate render side by side. Use the same Solar style consistently, then switch styles when the distinction depends on the Solar drawing treatment.

Use this order:

1. Identify the concept represented by the Solar icon without looking at candidate names.
2. Classify each candidate by its actual rendered form and meaning.
3. Check specificity: object, state, direction, count, enclosure, and action must agree.
4. Decide `equivalent`, `variant`, `related`, or `no-match`.
5. Record a note explaining the visual/conceptual reason, not merely the name similarity.

Never accept a candidate because:

- its name is identical or nearly identical;
- it shares one token such as `arrow`, `check`, `case`, or `charge`;
- it is the first or highest-ranked retrieval lead;
- the source has no candidate in the current shortlist.

`no-match` is allowed only after the source was searched through the relevant synonym and shape families and the plausible results were visually checked. If the source collection failed to load, leave the pair unresolved instead of recording `no-match`.

## Family Re-Audit

When a repeated naming or shape error is discovered, pause the current batch and re-audit the whole family before continuing. Examples include:

- `alt-arrow-*` and `arrow-*`;
- `archive-up`, `archive-down`, and their minimalistic variants;
- `bag-*` and other object variants where the suffix changes specificity;
- any source family where `01`, `02`, `03`, `filled`, `outline`, or `sharp` changes the drawing.

For a family re-audit:

1. List every affected Solar icon and every affected source pair.
2. Render the current references and at least two nearby alternatives from the same source.
3. Correct all wrong decisions together instead of fixing only the example that exposed the problem.
4. Record the correction in the handoff and do not commit until the family has been checked.

## Post-Completion Enrichment Passes

Once every Solar/source pair has a decision, do not start another blind first pass. Use focused re-audit passes over the existing map, still in fixed batches:

1. **Recall pass:** start with `no-match` rows. Search synonyms, shape families, and source-specific naming conventions again. Only replace the row after visual review finds a usable candidate.
2. **Related pass:** inspect `related` rows for candidates that may actually be equivalent, and downgrade misleading related references to `no-match` when they would cause a wrong replacement.
3. **Visual-equivalence pass:** inspect `equivalent` rows whose source name differs substantially from Solar, or whose note relies mainly on the name. Check the rendered silhouette, direction, state, and specificity again.
4. **Variant pass:** inspect `variant` rows to decide whether the difference is only stylistic or changes the object, state, count, or enclosure. A changed concept is not a variant.
5. **Source pass:** audit one reference set at a time using its actual naming conventions. Never assume a suffix such as `01`, `02`, `outline`, or `sharp` has the same meaning across sets.
6. **Family pass:** when one error is found, re-audit all siblings in that Solar family and all five sources before continuing.

Each pass should state its target filter, reviewed batch, changed pairs, and remaining uncertainty. Enrichment is allowed to replace an earlier decision, but it must not silently append a conflicting second decision for the same Solar/source pair.

## Same-Agent Separation Rule

The same AI may discover candidates and make decisions, but it must pause between the phases:

- First produce the broad shortlist for all five sources.
- Then review the Solar concept brief again without assuming the top candidate is correct.
- Then compare the shortlist visually.
- Only after that write the durable decisions.

This prevents the retrieval ranking from becoming a hidden verdict. When uncertain, prefer adding a candidate to the shortlist over prematurely rejecting the entire source.

> This document describes the archived five-pack comparison. For the active Lucide-only work,
> follow `LUCIDE-COVERAGE-RUNBOOK.md` and use `pnpm --filter icon-parity ...` commands.

## Editing Rules

- Never use percentages as match confidence.
- Never label a retrieval candidate as an equivalence before visual review.
- Never infer a matching rule from a single example.
- Never replace a missing strict match with a merely related icon.
- Never use `related` as a replacement mapping.
- Never promote `variant` to a replacement mapping without a new visual review that proves it is actually interchangeable.
- Keep exactly one decision row per `solar + source` pair.
- If there is no acceptable reference, record `reference: null` and `decision: "no-match"`.
- When correcting an existing pair, replace the old decision deliberately; do not create duplicate rows.
- Add clearly irrelevant repeated leads to `rejected-candidates.json` with a concrete reason. Rejections hide retrieval leads; they do not replace the required decision row.
- Do not add global token aliases to solve one icon without checking their effect on other groups.

## Resume Check

To independently find incomplete icons, run this from `apps/icon-parity`:

```bash
node - <<'NODE'
const inventory = require('../../packages/core/src/metadata-descriptions.json')
const verified = require('./app/compare/verified-matches.json').matches
const sources = ['lucide', 'phosphor', 'hugeicons', 'material', 'tabler']
const names = inventory.map(icon => icon.name).sort()
const completed = new Map()
for (const entry of verified) {
  const sourcesForIcon = completed.get(entry.solar) ?? new Set()
  sourcesForIcon.add(entry.source)
  completed.set(entry.solar, sourcesForIcon)
}
console.log(names.filter(name => sources.some(source => !completed.get(name)?.has(source))))
NODE
```

Do not infer that a Solar icon is complete because it has one equivalent mapping. It is complete only when all five source pairs have a row in `verified-matches.json`.

## Validation

Run from `apps/icon-parity` after changes:

```bash
node_modules/.bin/eslint app/compare --max-warnings 0
node_modules/.bin/tsc --noEmit
node_modules/.bin/next build
```

Also check the browser console, the Next.js runtime error state, and the Contact sheet at desktop and mobile widths. Before closing a batch, inspect at least one known shape-sensitive case such as a chevron versus an arrow with a shaft.

## Handoff Format

End every session with:

- Solar batch reviewed;
- concept briefs or shape families checked;
- equivalent mappings added;
- variants, related entries, and no-matches added;
- irrelevant candidates rejected;
- corrections to previous decisions;
- unresolved cases;
- validation commands and results.

The next session should run a focused enrichment pass over the existing complete map, not restart the first-pass matching strategy and not trust the retrieval order as a decision order.
