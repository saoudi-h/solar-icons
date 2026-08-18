# Equivalent Audit: Solar Sheet 11, Batch 01

This batch audits all twenty-one Solar sheet-11 rows labelled `equivalent`. The strict criterion is
semantic interchangeability: object, action, state, modifier, and specificity must survive
replacement; stroke and construction differences are styling only. Candidates remain preserved in
the production sheet.

## Results

All twenty-one rows remain strict matches. No production reference or decision required correction.

| Solar ID | Solar | Lucide ID | Lucide | Verdict | Evidence |
| --- | --- | --- | --- | --- | --- |
| S1001 | `square-arrow-down` | L1490 | `square-arrow-down` | match | Same downward arrow action enclosed by a square. |
| S1002 | `square-arrow-left` | L1493 | `square-arrow-left` | match | Same leftward arrow action enclosed by a square. |
| S1003 | `square-arrow-left-down` | L1491 | `square-arrow-down-left` | match | Same down-left directional arrow enclosed by a square. |
| S1004 | `square-arrow-left-up` | L1502 | `square-arrow-up-left` | match | Same up-left directional arrow enclosed by a square. |
| S1005 | `square-arrow-right` | L1498 | `square-arrow-right` | match | Same rightward arrow action enclosed by a square. |
| S1006 | `square-arrow-right-down` | L1492 | `square-arrow-down-right` | match | Same down-right directional arrow enclosed by a square. |
| S1007 | `square-arrow-right-up` | L1503 | `square-arrow-up-right` | match | Same up-right directional arrow enclosed by a square. |
| S1008 | `square-arrow-up` | L1501 | `square-arrow-up` | match | Same upward arrow action enclosed by a square. |
| S1025 | `star` | L1567 | `star` | match | Same five-point star object with no additional modifier. |
| S1028 | `star-circle` | L0418 | `circle-star` | match | Same star enclosed by a circle. |
| S1043 | `stethoscope` | L1576 | `stethoscope` | match | Same medical stethoscope object. |
| S1050 | `stop-circle` | L0419 | `circle-stop` | match | Same stop-square control enclosed by a circle. |
| S1065 | `sun` | L1592 | `sun` | match | Same sun/weather object with rays. |
| S1068 | `sunrise` | L1597 | `sunrise` | match | Same sun rising over a horizon action/state. |
| S1069 | `sunset` | L1598 | `sunset` | match | Same sun setting below a horizon action/state. |
| S1074 | `syringe` | L1605 | `syringe` | match | Same medical syringe object. |
| S1075 | `t-shirt` | L1432 | `shirt` | match | Same shirt/garment object; the naming difference does not change the referent. |
| S1077 | `tag` | L1617 | `tag` | match | Same price/tag label object. |
| S1082 | `telescope` | L1628 | `telescope` | match | Same telescope object on a tripod. |
| S1088 | `text-bold` | L0198 | `bold` | match | Same bold-formatting action represented by a bold B glyph. |
| S1098 | `text-italic` | L0907 | `italic` | match | Same italic-formatting action represented by an italic I glyph. |

## Verification

- Solar atlas inspected: `.atlas/solar/solar-11.png`.
- Selected Lucide references were inspected in `.atlas/lucide/lucide-02.png`,
  `lucide-05.png`, `lucide-10.png`, `lucide-16.png`, and `lucide-17.png`.
- The directional, enclosure, medical, weather, garment, label, device, and text-formatting
  families preserve their object, action, and meaningful modifiers. Naming differences such as
  `star-circle`/`circle-star`, `stop-circle`/`circle-stop`, and `t-shirt`/`shirt` do not change
  replacement meaning.
- All candidate arrays in `sheet-11.json` remain intact; `verified-matches.json` was not modified.
- The 21 audited rows in `sheet-11.json` remain `equivalent`; no other sheet-11 decisions were
  changed in this batch.

```bash
pnpm --filter react-app production:validate -- 11
pnpm --filter react-app lucide:coverage:check
pnpm --filter react-app exec tsc --noEmit
git diff --check
```
