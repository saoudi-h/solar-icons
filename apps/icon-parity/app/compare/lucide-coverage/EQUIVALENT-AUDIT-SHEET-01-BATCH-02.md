# Equivalent Audit: Solar Sheet 01, Batch 02

This batch audits the next twelve production rows that were labelled `equivalent` after batch 01.
The criterion is semantic interchangeability: stroke weight and minor construction differences are
acceptable, but a lost object, action, state, direction, guide axis, or specificity is not.

## Results

All twelve rows remain strict matches. Two alignment references were corrected after comparing the
rendered guide axis and object orientation against the adjacent Lucide alignment family. The
remaining ten rows were left unchanged.

| Solar ID | Solar | Lucide ID | Lucide | Verdict | Evidence |
| --- | --- | --- | --- | --- | --- |
| S0031 | `align-top` | L0032 | `align-start-horizontal` | match | Corrected: same vertical objects aligned to a top horizontal guide. |
| S0032 | `align-vertical-center` | L0017 | `align-center-horizontal` | match | Corrected: same vertical objects centered on a horizontal guide. |
| S0033 | `align-vertical-spacing` | L0041 | `align-vertical-space-between` | match | Same vertical space-between operation. |
| S0034 | `alt-arrow-down` | L0356 | `chevron-down` | match | Same down chevron without an arrow shaft. |
| S0035 | `alt-arrow-left` | L0359 | `chevron-left` | match | Same left chevron without an arrow shaft. |
| S0036 | `alt-arrow-right` | L0360 | `chevron-right` | match | Same right chevron without an arrow shaft. |
| S0037 | `alt-arrow-up` | L0361 | `chevron-up` | match | Same up chevron without an arrow shaft. |
| S0038 | `archive` | L0056 | `archive` | match | Same archive box object. |
| S0045 | `armchair` | L0060 | `armchair` | match | Same armchair object. |
| S0047 | `arrow-down` | L0069 | `arrow-down` | match | Same downward arrow with shaft. |
| S0048 | `arrow-left` | L0082 | `arrow-left` | match | Same left arrow with shaft. |
| S0051 | `arrow-right` | L0086 | `arrow-right` | match | Same right arrow with shaft. |

The alignment rows were checked against the rendered Lucide family on `lucide-01.png`. The original
production choices for S0031 and S0032 selected the wrong guide-axis family member; those two rows
now preserve both the alignment guide and the orientation of the aligned objects.

## Verification

- Visual boards inspected: `.atlas/review/review-04.png`, `.atlas/review/review-05.png`, and
  `.atlas/review/review-06.png` generated from `sheet-01.json`.
- Lucide family atlas inspected: `.atlas/lucide/lucide-01.png`.
- `verified-matches.json` was not modified.

```bash
pnpm --filter react-app production:validate -- 01
pnpm --filter react-app lucide:coverage
pnpm --filter react-app lucide:coverage:check
pnpm --filter react-app exec tsc --noEmit
```
