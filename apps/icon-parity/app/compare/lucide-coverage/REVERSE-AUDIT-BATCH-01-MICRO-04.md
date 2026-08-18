# Reverse Audit: Lucide Non-Equivalent Batch 01, Micro-Batch 04

This micro-batch re-reviewed high-confidence rows from the declared filter
`coverage === "non-equivalent"` and `suggestedBatch === 1`. The strict reverse criterion remains
semantic interchangeability: object, action, state, modifier, and specificity must survive
replacement; stroke and construction differences are styling only.

## Results

All thirteen rows below are promoted to strict equivalence after visual review. Existing Solar
references were retained; no accepted-map file was changed.

| Lucide ID | Lucide               | Solar ID | Solar               | Evidence                                                                       |
| --------- | -------------------- | -------- | ------------------- | ------------------------------------------------------------------------------ |
| L0593     | `earth`              | S0366    | `earth`             | Same Earth object; filled-versus-outline geography is styling.                 |
| L0718     | `flame`              | S0410    | `flame`             | Same generic flame; pointed-versus-rounded contour is styling.                 |
| L0869     | `heart-pulse`        | S0497    | `heart-pulse`       | Same heart-with-pulse object; path and outline construction are styling.       |
| L0880     | `house`              | S0524    | `house`             | Same generic house object; doorway and chimney details are styling.            |
| L0899     | `inbox`              | S0527    | `inbox`             | Same inbox object; container outline construction is styling.                  |
| L0929     | `laptop`             | S0553    | `laptop`            | Same laptop object; screen, base, and indicator construction are styling.      |
| L0968     | `link-2`             | S0571    | `link-minimalistic` | Same two-segment link object; capsule-versus-chain construction is styling.    |
| L1001     | `lock-keyhole`       | S0593    | `lock-keyhole`      | Same closed lock and keyhole; ring-versus-dot construction is styling.         |
| L1003     | `lock-open`          | S0599    | `lock-unlocked`     | Same unlocked lock state; body and shackle proportions are styling.            |
| L1068     | `message-square-dot` | S0225    | `chat-unread`       | Same square chat with unread dot; placement and proportions are styling.       |
| L1142     | `music-2`            | S0692    | `music-note-2`      | Same single musical note; flag and stem geometry are styling.                  |
| L1435     | `shopping-cart`      | S0180    | `cart`              | Same shopping-cart object; basket, handle, and wheel construction are styling. |
| L1775     | `wallet`             | S1212    | `wallet`            | Same wallet with clasp; orientation and outline construction are styling.      |

## Verification

- The reverse boards were generated from the updated `coverage.json` with
  `pnpm --filter react-app lucide:gap:board -- --batch 1 --coverage non-equivalent`.
- The Solar candidates were inspected in `.atlas/solar/solar-02.png`,
  `.atlas/solar/solar-03.png`, `.atlas/solar/solar-04.png`, `.atlas/solar/solar-05.png`,
  `.atlas/solar/solar-06.png`, `.atlas/solar/solar-07.png`, and `.atlas/solar/solar-13.png`.
- The Lucide targets were inspected in `.atlas/lucide/lucide-02.png`,
  `.atlas/lucide/lucide-03.png`, `.atlas/lucide/lucide-05.png`, `.atlas/lucide/lucide-06.png`,
  `.atlas/lucide/lucide-07.png`, `.atlas/lucide/lucide-09.png`, `.atlas/lucide/lucide-11.png`,
  and `.atlas/lucide/lucide-17.png`.
- Candidate arrays remain intact; `verified-matches.json` was not modified.

```bash
pnpm --filter react-app production:validate -- 2
pnpm --filter react-app production:validate -- 3
pnpm --filter react-app production:validate -- 4
pnpm --filter react-app production:validate -- 5
pnpm --filter react-app production:validate -- 6
pnpm --filter react-app production:validate -- 7
pnpm --filter react-app production:validate -- 13
pnpm --filter react-app lucide:coverage
pnpm --filter react-app lucide:coverage:check
pnpm --filter react-app exec tsc --noEmit
git diff --check
```
