# Lucide Collision Audit

This report covers the five Lucide icons currently selected as strict references by more than one
Solar icon. It is an audit of reverse-coverage ambiguity, not a change to the accepted mapping.
The production sheets remain the source evidence and `verified-matches.json` remains untouched.

## Findings

| Lucide | Solar references | Semantic finding | Reverse-migration policy |
| --- | --- | --- | --- |
| `monitor` | `display`, `monitor` | Both Solar rows are generic display/monitor objects and the Lucide monitor preserves the concept. The duplicate is a naming-level collision, not a known semantic conflict. | Reverse codemod needs a deterministic Solar preference or a manual tie-break. |
| `reply` | `reply`, `reply-2` | Both Solar rows depict reply actions. Their distinction is a Solar naming/style variant, not a distinct Lucide concept in the current evidence. | Keep both aliases; reverse codemod must not guess between them. |
| `trash` | `trash-bin-2`, `trash-bin-minimalistic-2` | Both Solar rows are trash bins; the minimalistic drawing changes detail, not the object. | Semantically interchangeable, but reverse codemod needs a preferred Solar target. |
| `trash-2` | `trash-bin-minimalistic`, `trash-bin-trash` | Both Solar rows are trash bins; the internal marks and geometry are stylistic/details. | Semantically interchangeable, but reverse codemod needs a preferred Solar target. |
| `upload` | `upload`, `upload-minimalistic` | Both Solar rows are upload actions. The minimalistic form changes enclosure geometry, not meaning. | Semantically interchangeable, but reverse codemod needs a preferred Solar target. |

The four directional collisions from the initial report were resolved during the sheet-01 audit.
The curved Solar `arrow-to-*` rows now use Lucide `corner-*` references, while the straight Solar
directional arrows retain Lucide `arrow-*` references. They are no longer collisions in the
derived coverage report.

## Consequences

The five remaining collisions do not by themselves prove that any Solar row is wrong. They show that a
Lucide-to-Solar codemod cannot infer a unique Solar import from the Lucide name alone. The first
four directional families have now been adjudicated: the curved `arrow-to-*` path encodes a turn
and is distinct from a straight destination arrow. The monitor, reply, trash, and upload collisions
are best handled as explicit Solar aliases or a documented preferred target.

Any future promotion or downgrade must be recorded in the corresponding `sheet-NN.json`, validated,
and followed by regeneration of `coverage.json`.

## Verification

- Source data: `lucide-coverage/coverage.json` and the 13 production sheets.
- Visual spot checks: Solar sheet 01 (directional arrows), sheet 07 (monitor family), sheet 09
  (reply family), and sheet 12 (trash/upload families).
- Structural checks remain:

```bash
pnpm --filter icon-parity production:status
pnpm --filter icon-parity lucide:coverage:check
pnpm --filter icon-parity exec tsc --noEmit
```
