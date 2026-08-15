# Icon Matching Review Procedure

This is the handoff document for AI sessions continuing the Solar parity work.

## Goal

Create a strict, qualitative replacement map between Solar and Lucide, Phosphor, Hugeicons, Material Symbols, and Tabler.

Names, tags, and categories are retrieval signals only. They never establish a match.

## Source Of Truth

- `verified-matches.json` contains decisions made after visual and conceptual review.
- `rejected-candidates.json` contains retrieval leads that are clearly irrelevant and should not be shown again.
- `data.ts` retrieves broad candidates. Do not turn an individual example into a global matching rule.
- `page.tsx` is the review tool, not the source of truth.

Current state:

- Solar inventory: 1,248 logical icons.
- Reference sets: Lucide, Phosphor, Hugeicons, Material Symbols, Tabler.
- Verified decisions: 43.
- The first reviewed groups include accessibility, add variants, Airbuds variants, and alarm.

## Decision Vocabulary

Use exactly one decision per Solar/source pair:

- `equivalent`: interchangeable for the same concept and specificity.
- `variant`: same concept, but a meaningful drawing or style variant. Do not count it as a strict replacement.
- `related`: thematically close but not interchangeable. Prefer `no-match` when the candidate would mislead a user.
- `no-match`: no source icon can replace the Solar icon without changing the intended meaning or specificity.

Important distinctions to check:

- object versus category;
- object versus container or case;
- earbuds versus headphones;
- open, closed, charged, paused, removed, or active state;
- left versus right;
- singular versus plural;
- generic symbol versus domain-specific composite;
- direction, count, and enclosing shape.

## Review Workflow

1. Read this file, `verified-matches.json`, and `rejected-candidates.json` before starting.
2. Check the current git status. Do not reset or overwrite another session's work.
3. Start the React app and open `/compare`.
4. Use **Contact sheet** mode. Review groups of 12 to 24 icons, not one icon per session turn.
5. Inspect the Solar render and each retrieved reference render side by side.
6. Decide the concept and specificity yourself. Do not accept a candidate because its name is identical.
7. Add the decision to `verified-matches.json` with a short reason that states what made it interchangeable or why it was rejected.
8. Add clearly irrelevant repeated leads to `rejected-candidates.json` with a concrete reason.
9. Keep retrieval broad when uncertain. Do not add a new global token rule to solve one example.
10. Before handing off, report the reviewed Solar names, source pairs added, rejected leads, and unresolved cases.

## Editing Rules

- Never use percentages as match confidence.
- Never label a retrieval candidate as an equivalence.
- Never infer a rule from a single example.
- Never replace a missing strict match with a merely related icon.
- Never delete previous verified decisions; append or correct them deliberately.
- Keep one entry per `solar + source + reference` key.
- If there is no acceptable reference, record `reference: null` and `decision: "no-match"` for that Solar/source pair.

## Validation

Run from `apps/react-app` after changes:

```bash
node_modules/.bin/eslint app/compare --max-warnings 0
node_modules/.bin/tsc --noEmit
node_modules/.bin/next build
```

Also check the browser console, the Next.js runtime error state, and the Contact sheet at desktop and mobile widths.

## Handoff Format

End every session with:

- Solar batch reviewed;
- equivalent mappings added;
- variants and no-matches added;
- irrelevant candidates rejected;
- unresolved cases;
- validation commands and results.

The next session should continue with the next unreviewed batch, not restart the matching strategy.
