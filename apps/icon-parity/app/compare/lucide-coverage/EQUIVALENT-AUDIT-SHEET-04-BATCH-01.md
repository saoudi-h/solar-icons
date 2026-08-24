# Equivalent Audit: Solar Sheet 04, Batch 01

This batch audits the first twelve Solar sheet-04 rows labelled `equivalent`. The strict criterion
is semantic interchangeability: object, action, modifier, and specificity must survive replacement;
stroke and construction differences are styling only. Candidates remain preserved in the production
sheet.

## Results

All twelve rows remain strict matches. No production reference required correction.

| Solar ID | Solar                   | Lucide ID | Lucide               | Verdict | Evidence                                                                                                                     |
| -------- | ----------------------- | --------- | -------------------- | ------- | ---------------------------------------------------------------------------------------------------------------------------- |
| S0304    | `creative-commons`      | L0525     | `creative-commons`   | match   | Same Creative Commons mark in a rounded container.                                                                           |
| S0305    | `crop`                  | L0528     | `crop`               | match   | Same crop-corner tool and action.                                                                                            |
| S0320    | `danger-circle`         | L0377     | `circle-alert`       | match   | Same circular warning state with exclamation; nearby `circle-x` changes the state to close/error.                            |
| S0322    | `danger-triangle`       | L1695     | `triangle-alert`     | match   | Same triangular warning state with exclamation.                                                                              |
| S0323    | `database`              | L0537     | `database`           | match   | Same stacked database cylinder.                                                                                              |
| S0333    | `dislike`               | L1650     | `thumbs-down`        | match   | Same thumbs-down/dislike action.                                                                                             |
| S0334    | `display`               | L1098     | `monitor`            | match   | Same generic desktop display object; this is the documented monitor collision with Solar `monitor`, not a semantic mismatch. |
| S0335    | `dna`                   | L0569     | `dna`                | match   | Same double-helix DNA object.                                                                                                |
| S0343    | `dollar`                | L0394     | `circle-dollar-sign` | match   | Same dollar sign enclosed in a circle.                                                                                       |
| S0345    | `donut`                 | L0574     | `donut`              | match   | Same ring-shaped donut object.                                                                                               |
| S0347    | `double-alt-arrow-down` | L0362     | `chevrons-down`      | match   | Same pair of downward chevrons.                                                                                              |
| S0348    | `double-alt-arrow-left` | L0364     | `chevrons-left`      | match   | Same pair of leftward chevrons.                                                                                              |

## Verification

- Solar atlas inspected: `.atlas/solar/solar-04.png`.
- Lucide creative-commons, crop, database, dislike, DNA, dollar, donut, and chevron families
  inspected in `.atlas/lucide/lucide-05.png`, `.atlas/lucide/lucide-06.png`, `.atlas/lucide/lucide-11.png`,
  and `.atlas/lucide/lucide-17.png`.
- Shortlisted alternatives were considered; selected references preserve the same object and
  modifier. The `display` collision remains explicitly documented in `COLLISION-AUDIT.md`.
- `sheet-04.json` references and decisions were unchanged in this batch.
- `verified-matches.json` was not modified.

```bash
pnpm --filter icon-parity production:validate -- 04
pnpm --filter icon-parity exec tsc --noEmit
git diff --check
```
