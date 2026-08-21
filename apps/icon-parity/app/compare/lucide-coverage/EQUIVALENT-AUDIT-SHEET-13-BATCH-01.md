# Equivalent Audit: Solar Sheet 13, Batch 01

This batch audits all eleven Solar sheet-13 rows labelled `equivalent`. The strict criterion is
semantic interchangeability: object, action, state, modifier, and specificity must survive
replacement; stroke and construction differences are styling only. Candidates remain preserved in
the production sheet.

## Results

All eleven rows remain strict matches. No production reference or decision required correction.

| Solar ID | Solar | Lucide ID | Lucide | Verdict | Evidence |
| --- | --- | --- | --- | --- | --- |
| S1201 | `vinyl-record` | L0566 | `disc-3` | match | Same grooved disc/record object; Lucide's generic disc name does not change the referent. |
| S1203 | `volleyball` | L1768 | `volleyball` | match | Same volleyball object and panel construction. |
| S1205 | `volume` | L1769 | `volume` | match | Same basic speaker/volume icon with no level modifier. |
| S1208 | `volume-loud` | L1771 | `volume-2` | match | Same speaker with two outgoing sound waves. |
| S1209 | `volume-small` | L1770 | `volume-1` | match | Same speaker with one outgoing sound wave. |
| S1218 | `watch-round` | L1783 | `watch` | match | Same wristwatch object; the round case is preserved. |
| S1222 | `water` | L1784 | `waves` | match | Same three-wave water symbol. |
| S1232 | `widget` | L0946 | `layout-grid` | match | Same 2×2 grid of rounded tiles. |
| S1235 | `widget-4` | L0948 | `layout-panel-left` | match | Same tall left panel with two stacked right panels. |
| S1240 | `wind` | L1808 | `wind` | match | Same three flowing wind lines and direction. |
| S1245 | `women` | L1759 | `venus` | match | Same female/venus symbol; the Lucide candidate `venus-and-mars` is not needed. |

## Verification

- Solar atlas inspected: `.atlas/solar/solar-13.png`.
- Lucide references were inspected in `.atlas/lucide/lucide-06.png`,
  `.atlas/lucide/lucide-10.png`, `.atlas/lucide/lucide-18.png`, and
  `.atlas/lucide/lucide-19.png`.
- The naming differences `vinyl-record`/`disc-3`, `volume-loud`/`volume-2`,
  `volume-small`/`volume-1`, `widget`/`layout-grid`, `widget-4`/`layout-panel-left`, and
  `women`/`venus` do not change replacement meaning. The alternate candidates remain available
  for audit and were not promoted.
- All candidate arrays in `sheet-13.json` remain intact; `verified-matches.json` was not modified.
- The eleven audited rows in `sheet-13.json` remain `equivalent`; no other sheet-13 decisions were
  changed in this batch.

```bash
pnpm --filter icon-parity production:validate -- 13
pnpm --filter icon-parity lucide:coverage:check
pnpm --filter icon-parity exec tsc --noEmit
git diff --check
```
