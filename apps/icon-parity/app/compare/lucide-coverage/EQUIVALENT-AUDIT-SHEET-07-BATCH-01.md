# Equivalent Audit: Solar Sheet 07, Batch 01

This batch audits the first twelve Solar sheet-07 rows labelled `equivalent`. The strict criterion
is semantic interchangeability: object, action, state, modifier, and specificity must survive
replacement; stroke and construction differences are styling only. Candidates remain preserved in
the production sheet.

## Results

All twelve rows remain strict matches. No production reference required correction.

| Solar ID | Solar | Lucide ID | Lucide | Verdict | Evidence |
| --- | --- | --- | --- | --- | --- |
| S0609 | `magnet` | L1009 | `magnet` | match | Same magnet object. |
| S0611 | `magnifier` | L1388 | `search` | match | Same plain magnifying-glass/search symbol; the name difference is contextual. |
| S0616 | `map` | L1022 | `map` | match | Same folded map object. |
| S0622 | `map-point` | L1024 | `map-pin` | match | Same map location pin marker. |
| S0634 | `maximize` | L1043 | `maximize-2` | match | Same diagonal expand/maximize action. |
| S0648 | `men` | L1039 | `mars` | match | Same male/mars gender symbol. |
| S0662 | `minimize` | L1094 | `minimize-2` | match | Same diagonal collapse/minimize action. |
| S0667 | `minus-circle` | L0403 | `circle-minus` | match | Same minus sign enclosed in a circle. |
| S0675 | `monitor` | L1098 | `monitor` | match | Same generic desktop monitor object; the existing display/monitor collision remains documented. |
| S0678 | `moon` | L1112 | `moon` | match | Same crescent moon object. |
| S0682 | `mouse` | L1118 | `mouse` | match | Same computer mouse object. |
| S0699 | `notebook` | L1153 | `notebook` | match | Same spiral notebook object. |

## Verification

- Solar atlas inspected: `.atlas/solar/solar-07.png`.
- Lucide magnet, map, gender, maximize/minimize, minus, and monitor families inspected in
  `.atlas/lucide/lucide-11.png`; moon, mouse, and notebook families were inspected in
  `.atlas/lucide/lucide-12.png`; the search reference was inspected in
  `.atlas/lucide/lucide-14.png`.
- Shortlisted alternatives were considered; selected references preserve the same object, action,
  and modifiers without introducing a different state.
- `sheet-07.json` references and decisions were unchanged in this batch.
- `verified-matches.json` was not modified.

```bash
pnpm --filter icon-parity production:validate -- 07
pnpm --filter icon-parity exec tsc --noEmit
git diff --check
```
