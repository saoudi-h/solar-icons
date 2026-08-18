# Reverse Audit: Lucide Non-Equivalent Batch 01, Micro-Batch 03

This micro-batch re-reviewed high-confidence rows from the declared filter
`coverage === "non-equivalent"` and `suggestedBatch === 1`. The strict reverse criterion remains
semantic interchangeability: object, action, state, modifier, and specificity must survive
replacement; stroke and construction differences are styling only.

## Results

All thirteen rows below are promoted to strict equivalence after visual review. Existing Solar
references were retained; no accepted-map file was changed.

| Lucide ID | Lucide             | Solar ID | Solar              | Evidence                                                                         |
| --------- | ------------------ | -------- | ------------------ | -------------------------------------------------------------------------------- |
| L0154     | `battery-charging` | S0083    | `battery-charge`   | Same charging-battery state; enclosure and terminal geometry are stylistic.      |
| L0229     | `bookmark`         | S0132    | `bookmark`         | Same standalone bookmark object; top mark and ribbon contour are stylistic.      |
| L1080     | `messages-square`  | S0329    | `dialog-2`         | Same multiple-message square compound; bubble construction is stylistic.         |
| L0579     | `download`         | S0351    | `download`         | Same download action; tray and arrow construction are stylistic.                 |
| L0732     | `folder`           | S0419    | `folder`           | Same generic folder object; the interior detail mark is stylistic.               |
| L1042     | `maximize`         | S0439    | `full-screen`      | Same maximize/full-screen action; corner-bracket construction is stylistic.      |
| L0781     | `gamepad`          | S0455    | `gamepad`          | Same game-controller object; silhouette and button layout are stylistic.         |
| L0811     | `globe`            | S0466    | `global`           | Same globe object; latitude/longitude construction is stylistic.                 |
| L0914     | `key`              | S0541    | `key`              | Same generic key object; head, shaft, and tooth geometry are stylistic.          |
| L0915     | `key-round`        | S0542    | `key-minimalistic` | Same rounded-key object; head and shaft construction are stylistic.              |
| L1000     | `lock`             | S0592    | `lock`             | Same closed-lock object; body and shackle proportions are stylistic.             |
| L1315     | `refresh-cw`       | S0812    | `refresh`          | Same bidirectional refresh action; two-arrow construction is stylistic.          |
| L0704     | `film`             | S1189    | `video-frame`      | Same film-strip object; rounded grid and perforation construction are stylistic. |

## Verification

- Reverse boards were generated from the updated `coverage.json` with
  `pnpm --filter icon-parity lucide:gap:board -- --batch 1 --coverage non-equivalent`.
- Solar atlases inspected: `.atlas/solar/solar-01.png`, `.atlas/solar/solar-02.png`,
  `.atlas/solar/solar-04.png`, `.atlas/solar/solar-05.png`, `.atlas/solar/solar-06.png`,
  `.atlas/solar/solar-09.png`, and `.atlas/solar/solar-12.png`.
- Lucide atlases inspected: `.atlas/lucide/lucide-02.png`, `.atlas/lucide/lucide-03.png`,
  `.atlas/lucide/lucide-06.png`, `.atlas/lucide/lucide-08.png`, `.atlas/lucide/lucide-11.png`,
  and `.atlas/lucide/lucide-15.png`.
- Candidate arrays remain intact; `verified-matches.json` was not modified.

```bash
pnpm --filter icon-parity production:validate -- 1
pnpm --filter icon-parity production:validate -- 2
pnpm --filter icon-parity production:validate -- 4
pnpm --filter icon-parity production:validate -- 5
pnpm --filter icon-parity production:validate -- 6
pnpm --filter icon-parity production:validate -- 9
pnpm --filter icon-parity production:validate -- 12
pnpm --filter icon-parity lucide:coverage
pnpm --filter icon-parity lucide:coverage:check
pnpm --filter icon-parity exec tsc --noEmit
git diff --check
```
