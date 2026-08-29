# Reverse coverage tiers

The Solar → Lucide mapping is a binary relation per Solar icon: `MATCH` or
`NO MATCH`. It is intentionally not a one-to-one table. Several Solar variants
can describe the same generic Lucide concept, so a Lucide target can have more
than one Solar source in the evidence. That many-to-one relation is useful for
coverage analysis, but it must not be passed directly to a codemod.

The Lucide → Solar workbench therefore exposes three reverse tiers:

| Tier       | Meaning                                                                                                                                                               | May be used as the default replacement? |
| ---------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------- |
| `exact`    | At least one Solar icon has a binary semantic match. `preferredSolarMatch` identifies the deterministic choice when several Solar icons collide on one Lucide target. | Yes, use the preferred icon.            |
| `fallback` | No precise Solar match exists, but a named Solar icon is usable when the consuming context tolerates loss of a state, intensity, or modifier.                         | Only with an explicit context decision. |
| `gap`      | No precise match and no reviewed fallback. This is the genuine icon-design backlog.                                                                                   | No.                                     |

Fallbacks are never inferred from names, similarity scores, or collisions. They
are recorded in `reverse-coverage-policy.ts` with a rationale. This keeps the
forward binary contract intact while giving future prioritisation a more useful
signal than a single covered/not-covered number.

The second reverse pass also re-used the closed reverse-review packets as
evidence. Their `equivalent` rows are shown as reverse exact coverage without
mutating the forward Solar → Lucide map. Three alignment rows were deliberately
kept as gaps because their forward audit distinguishes object alignment from
text alignment. This conflict guard is recorded in
`REVERSE_REVIEW_NO_MATCH_IDS`.

## Example: the sun family

Lucide has `sun`, `sun-medium`, and `sun-dim`; Solar has `sun-2` and `sun`.

- `sun` → preferred Solar `sun-2` (`exact`); Solar `sun` is a fallback because
  it is less intense.
- `sun-medium` → Solar `sun` (`fallback`), not an exact equivalence.
- `sun-dim` → Solar `sun` (`fallback`), useful for a simple theme toggle but
  unsafe for a UI whose meaning depends on three distinct luminosity levels.

The distinction is deliberately contextual: a fallback is evidence that many
ordinary uses can be migrated today, not evidence that the missing precision
does not matter. The `gap` count should be used for the unserved design space;
the fallback count should remain visible when prioritising new icon work.

## Data contract

Each generated `coverage.json` entry contains:

- `reverseTier`;
- `preferredSolarMatch` for exact rows;
- `fallbackSolarMatches` for explicit fallbacks;
- the original `strict*`, `semantic*`, and reverse-review evidence fields.

Do not delete the evidence fields or rewrite `verified-matches.json` while
adjudicating reverse coverage. Add a policy entry only after inspecting the
actual icon and recording why the fallback is safe or unsafe by context.
