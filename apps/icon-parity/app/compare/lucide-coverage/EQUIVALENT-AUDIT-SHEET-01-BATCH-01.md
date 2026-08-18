# Equivalent Audit: Solar Sheet 01, Batch 01

This batch audits the first twelve production rows that were labelled `equivalent`. The criterion
is semantic interchangeability; stroke weight and minor construction differences are acceptable,
but a lost object, action, state, direction, or specificity is not.

## Results

All twelve rows remain strict matches. Four alignment references were corrected after comparing
the rendered orientation and guide axis; the remaining eight rows were left unchanged.

| Solar ID | Solar | Lucide ID | Lucide | Verdict | Evidence |
| --- | --- | --- | --- | --- | --- |
| S0002 | `add` | L1259 | `plus` | match | Same addition symbol. |
| S0003 | `add-circle` | L0411 | `circle-plus` | match | Same plus symbol enclosed by a circle. |
| S0004 | `add-folder` | L0754 | `folder-plus` | match | Same folder object with an addition modifier. |
| S0005 | `add-square` | L1542 | `square-plus` | match | Same plus symbol enclosed by a square. |
| S0018 | `alarm` | L0009 | `alarm-clock` | match | Same alarm-clock object and meaning. |
| S0019 | `alarm-add` | L0013 | `alarm-clock-plus` | match | Same alarm-clock object with an addition modifier. |
| S0022 | `alarm-remove` | L0011 | `alarm-clock-minus` | match | Same alarm-clock object with a removal/minus modifier. |
| S0026 | `align-bottom` | L0019 | `align-end-horizontal` | match | Corrected: the rendered Solar objects are vertical and sit on a horizontal bottom guide. |
| S0027 | `align-horizontal-center` | L0018 | `align-center-vertical` | match | Corrected: the rendered Solar objects are centered around a vertical guide. |
| S0028 | `align-horizontal-spacing` | L0028 | `align-horizontal-space-between` | match | Same horizontal space-between operation. |
| S0029 | `align-left` | L0033 | `align-start-vertical` | match | Corrected: the rendered Solar objects align to a vertical left guide; Lucide `align-left` is text-oriented. |
| S0030 | `align-right` | L0020 | `align-end-vertical` | match | Corrected: the rendered Solar objects align to a vertical right guide; Lucide `align-right` is text-oriented. |

The alignment rows were checked against their adjacent Lucide family members. The initial
production choices for S0026, S0027, S0029, and S0030 selected the wrong guide axis; those four
references were corrected in the working production JSON. The corrected rows now preserve object
orientation and guide direction.

## Verification

- Visual boards inspected: `.atlas/review/review-01.png`, `.atlas/review/review-02.png`, and
  `.atlas/review/review-03.png` generated from `sheet-01.json`.
- Production row count and candidate/reference IDs:

```bash
pnpm --filter react-app production:validate -- 01
pnpm --filter react-app lucide:coverage:check
pnpm --filter react-app exec tsc --noEmit
```

- `verified-matches.json` was not modified.
