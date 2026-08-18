# Equivalent Audit: Solar Sheet 01, Batch 03

This batch audits the remaining twelve production rows in Solar sheet 01 that were still labelled
`equivalent` after batch 02. The criterion is semantic interchangeability: direction, turn shape,
state, and object specificity must survive replacement. Non-selected candidates are preserved as
audit evidence.

## Results

Eight rows remain strict matches unchanged. Four `arrow-to-*` rows remain strict matches after
correcting their Lucide references from simple diagonal arrows to the `corner-*` family. The
previous diagonal references preserved only the destination direction; they lost the curved turn
encoded by the Solar icons.

| Solar ID | Solar | Lucide ID | Lucide | Verdict | Evidence |
| --- | --- | --- | --- | --- | --- |
| S0049 | `arrow-left-down` | L0074 | `arrow-down-left` | match | Same diagonal arrow pointing down-left. |
| S0050 | `arrow-left-up` | L0097 | `arrow-up-left` | match | Same diagonal arrow pointing up-left. |
| S0052 | `arrow-right-down` | L0076 | `arrow-down-right` | match | Same diagonal arrow pointing down-right. |
| S0053 | `arrow-right-up` | L0099 | `arrow-up-right` | match | Same diagonal arrow pointing up-right. |
| S0054 | `arrow-to-down-left` | L0518 | `corner-left-down` | match | Corrected: preserves the curved turn into a downward arrow. |
| S0055 | `arrow-to-down-right` | L0520 | `corner-right-down` | match | Corrected: preserves the curved turn into a downward arrow. |
| S0056 | `arrow-to-top-left` | L0519 | `corner-left-up` | match | Corrected: preserves the curved turn into an upward arrow. |
| S0057 | `arrow-to-top-right` | L0521 | `corner-right-up` | match | Corrected: preserves the curved turn into an upward arrow. |
| S0058 | `arrow-up` | L0090 | `arrow-up` | match | Same upward arrow with shaft. |
| S0060 | `atom` | L0107 | `atom` | match | Same atom concept; center rendering is a style difference. |
| S0063 | `backspace` | L0549 | `delete` | match | Same backspace-key shape with an X; Lucide's name differs but the rendered concept matches. |
| S0096 | `bell` | L0170 | `bell` | match | Same plain notification bell. |

## Verification

- Visual boards inspected: `.atlas/review/review-05.png`, `.atlas/review/review-06.png`,
  `.atlas/review/review-07.png`, and `.atlas/review/review-10.png` generated from `sheet-01.json`.
- Lucide family atlas inspected: `.atlas/lucide/lucide-06.png` for the `corner-*` family.
- `verified-matches.json` was not modified.

```bash
pnpm --filter icon-parity production:validate -- 01
pnpm --filter icon-parity lucide:coverage
pnpm --filter icon-parity lucide:coverage:check
pnpm --filter icon-parity exec tsc --noEmit
```
