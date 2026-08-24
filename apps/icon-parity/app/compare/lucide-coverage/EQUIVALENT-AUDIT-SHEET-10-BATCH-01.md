# Equivalent Audit: Solar Sheet 10, Batch 01

This batch audits all twenty-two Solar sheet-10 rows labelled `equivalent`. The strict criterion is
semantic interchangeability: object, action, state, modifier, and specificity must survive
replacement; stroke and construction differences are styling only. Candidates remain preserved in
the production sheet.

## Results

All twenty-two rows remain strict matches. No production reference or decision required correction.

| Solar ID | Solar                    | Lucide ID | Lucide                 | Verdict | Evidence                                                           |
| -------- | ------------------------ | --------- | ---------------------- | ------- | ------------------------------------------------------------------ |
| S0912    | `share`                  | L1410     | `share-2`              | match   | Same three-node share graph and connecting paths.                  |
| S0915    | `shield-check`           | L1417     | `shield-check`         | match   | Same shield object with a check modifier.                          |
| S0916    | `shield-cross`           | L1429     | `shield-x`             | match   | Same shield object with a cross/X modifier.                        |
| S0917    | `shield-keyhole`         | L1422     | `shield-keyhole`       | match   | Same shield and keyhole security mark.                             |
| S0920    | `shield-minus`           | L1424     | `shield-minus`         | match   | Same shield with a minus modifier.                                 |
| S0922    | `shield-plus`            | L1426     | `shield-plus`          | match   | Same shield with a plus modifier.                                  |
| S0925    | `shield-user`            | L1428     | `shield-user`          | match   | Same shield with a user silhouette.                                |
| S0926    | `shield-warning`         | L1415     | `shield-alert`         | match   | Same warning/exclamation state inside a shield.                    |
| S0931    | `shuffle`                | L1442     | `shuffle`              | match   | Same crossed two-path shuffle action.                              |
| S0934    | `sidebar-minimalistic`   | L1193     | `panel-right`          | match   | Same right-side panel layout; the naming difference is contextual. |
| S0937    | `sim-card`               | L0311     | `card-sim`             | match   | Same clipped SIM-card object with an embedded chip.                |
| S0945    | `skip-next`              | L1454     | `skip-forward`         | match   | Same forward media skip action with a terminal bar.                |
| S0946    | `skip-previous`          | L1453     | `skip-back`            | match   | Same backward media skip action with a terminal bar.               |
| S0948    | `slash-circle`           | L0415     | `circle-slash`         | match   | Same diagonal slash enclosed by a circle.                          |
| S0949    | `slash-square`           | L1548     | `square-slash`         | match   | Same diagonal slash enclosed by a square.                          |
| S0965    | `smartphone`             | L1461     | `smartphone`           | match   | Same smartphone device object.                                     |
| S0972    | `smile-circle`           | L1464     | `smile`                | match   | Same smiling face enclosed by a circle.                            |
| S0974    | `snowflake`              | L1467     | `snowflake`            | match   | Same snowflake weather object.                                     |
| S0997    | `square-alt-arrow-down`  | L1511     | `square-chevron-down`  | match   | Same downward chevron enclosed by a square.                        |
| S0998    | `square-alt-arrow-left`  | L1512     | `square-chevron-left`  | match   | Same leftward chevron enclosed by a square.                        |
| S0999    | `square-alt-arrow-right` | L1513     | `square-chevron-right` | match   | Same rightward chevron enclosed by a square.                       |
| S1000    | `square-alt-arrow-up`    | L1514     | `square-chevron-up`    | match   | Same upward chevron enclosed by a square.                          |

## Verification

- Solar atlas inspected: `.atlas/solar/solar-10.png`.
- Selected Lucide references were inspected in `.atlas/lucide/lucide-04.png`, `lucide-05.png`,
  `lucide-12.png`, `lucide-15.png`, and `lucide-16.png`.
- The panel-right, card-sim, share, shield, skip, slash, device, weather, and square-chevron
  families preserve their object or action and all meaningful modifiers. Naming differences such as
  `sidebar-minimalistic`/`panel-right`, `shield-warning`/`shield-alert`, and
  `skip-next`/`skip-forward` do not change the replacement meaning.
- All candidate arrays in `sheet-10.json` remain intact; `verified-matches.json` was not modified.
- The 22 audited rows in `sheet-10.json` remain `equivalent`; no other sheet-10 decisions were
  changed in this batch.

```bash
pnpm --filter icon-parity production:validate -- 10
pnpm --filter icon-parity lucide:coverage:check
pnpm --filter icon-parity exec tsc --noEmit
git diff --check
```
