# Reverse Audit: Lucide Non-Equivalent Batch 01, Micro-Batch 05

This micro-batch re-reviewed high-confidence rows from the declared filter
`coverage === "non-equivalent"` and `suggestedBatch === 1`. The strict reverse criterion remains
semantic interchangeability: object, action, state, modifier, and specificity must survive
replacement; stroke and construction differences are styling only.

## Results

All thirteen rows below are promoted to strict equivalence after visual review. Existing Solar
references were retained; no accepted-map file was changed.

| Lucide ID | Lucide              | Solar ID | Solar                   | Evidence                                                                    |
| --------- | ------------------- | -------- | ----------------------- | --------------------------------------------------------------------------- |
| L0262     | `bug`               | S0145    | `bug`                   | Same generic bug object; body segmentation and leg arrangement are styling. |
| L0274     | `calendar`          | S0153    | `calendar`              | Same generic calendar; optional date-grid detail is styling.                |
| L0425     | `clapperboard`      | S0239    | `clapperboard`          | Same clapperboard; board and hinged-slate construction are styling.         |
| L0590     | `dumbbell`          | S0360    | `dumbbell`              | Same generic dumbbell; proportions and handle/weight geometry are styling.  |
| L0703     | `files`             | S0341    | `documents`             | Same multiple-document object; page stacking and outline are styling.       |
| L0916     | `key-square`        | S0547    | `key-square`            | Same square-enclosed key; enclosure and key geometry are styling.           |
| L1002     | `lock-keyhole-open` | S0596    | `lock-keyhole-unlocked` | Same unlocked lock with keyhole; ring-versus-dot construction is styling.   |
| L1004     | `log-in`            | S0600    | `login`                 | Same login/entry action; circular-versus-door boundary is styling.          |
| L1010     | `mail`              | S0560    | `letter`                | Same closed mail envelope; rounded-versus-conventional outline is styling.  |
| L1234     | `phone-outgoing`    | S0711    | `outgoing-call`         | Same outgoing-call action; handset and arrow geometry are styling.          |
| L1614     | `tablet`            | S1076    | `tablet`                | Same tablet object; orientation and home-mark construction are styling.     |
| L1670     | `tornado`           | S1113    | `tornado`               | Same tornado phenomenon; funnel and contour construction are styling.       |
| L1835     | `zoom-in`           | S0613    | `magnifier-zoom-in`     | Same zoom-in action; lens, handle, and plus geometry are styling.           |

## Verification

- The reverse boards were generated from the updated `coverage.json` with
  `pnpm --filter icon-parity lucide:gap:board -- --batch 1 --coverage non-equivalent`.
- The Solar candidates were inspected in `.atlas/solar/solar-02.png`,
  `.atlas/solar/solar-03.png`, `.atlas/solar/solar-04.png`, `.atlas/solar/solar-06.png`,
  `.atlas/solar/solar-07.png`, `.atlas/solar/solar-08.png`, `.atlas/solar/solar-11.png`,
  and `.atlas/solar/solar-12.png`.
- The Lucide targets were inspected in `.atlas/lucide/lucide-03.png`,
  `.atlas/lucide/lucide-05.png`, `.atlas/lucide/lucide-06.png`, `.atlas/lucide/lucide-07.png`,
  `.atlas/lucide/lucide-08.png`, `.atlas/lucide/lucide-11.png`, and `.atlas/lucide/lucide-17.png`.
- Candidate arrays remain intact; `verified-matches.json` was not modified.

```bash
pnpm --filter icon-parity production:validate -- 2
pnpm --filter icon-parity production:validate -- 3
pnpm --filter icon-parity production:validate -- 4
pnpm --filter icon-parity production:validate -- 6
pnpm --filter icon-parity production:validate -- 7
pnpm --filter icon-parity production:validate -- 8
pnpm --filter icon-parity production:validate -- 11
pnpm --filter icon-parity production:validate -- 12
pnpm --filter icon-parity lucide:coverage
pnpm --filter icon-parity lucide:coverage:check
pnpm --filter icon-parity exec tsc --noEmit
git diff --check
```
