# Equivalent Audit: Solar Sheet 09, Batch 01

This batch audits all thirty-one Solar sheet-09 rows labelled `equivalent` before visual review.
The strict criterion is semantic interchangeability: object, action, state, modifier, and
specificity must survive replacement; stroke and construction differences are styling only.
Candidates remain preserved in the production sheet.

## Results

Twenty-five rows remain strict matches. Five rows were retained as `variant` because a meaningful
container or direction modifier is not preserved, and one row was retained as `related` because
the referenced objects are different kinds of scales. No candidate shortlist was removed.

| Solar ID | Solar | Lucide ID | Lucide | Verdict | Evidence |
| --- | --- | --- | --- | --- | --- |
| S0803 | `receive-square` | L1499 | `square-arrow-right-enter` | match | Same receive/enter action in a square control; Lucide uses an open square construction while preserving the action. |
| S0805 | `record` | L0376 | `circle` | match | Same plain circular record button mark. |
| S0818 | `remove-folder` | L0749 | `folder-minus` | match | Same folder object with the remove/minus modifier. |
| S0824 | `reply` | L1326 | `reply` | match | Same left-facing reply action. |
| S0825 | `reply-2` | L1326 | `reply` | match | Same reply action; the alternate curve construction does not change the meaning. |
| S0826 | `restart` | L1340 | `rotate-cw` | match | Same clockwise restart/rotate action. |
| S0836 | `rewind-back` | L1328 | `rewind` | match | Same backward media action with two reverse triangles. |
| S0838 | `rewind-forward` | L0626 | `fast-forward` | match | Same forward media action with two forward triangles. |
| S0840 | `rocket` | L1331 | `rocket` | match | Same rocket object and launch direction. |
| S0843 | `round-alt-arrow-down` | L0388 | `circle-chevron-down` | match | Same downward chevron enclosed by a circle. |
| S0844 | `round-alt-arrow-left` | L0389 | `circle-chevron-left` | match | Same leftward chevron enclosed by a circle. |
| S0845 | `round-alt-arrow-right` | L0390 | `circle-chevron-right` | match | Same rightward chevron enclosed by a circle. |
| S0846 | `round-alt-arrow-up` | L0391 | `circle-chevron-up` | match | Same upward chevron enclosed by a circle. |
| S0847 | `round-arrow-down` | L0378 | `circle-arrow-down` | match | Same downward arrow enclosed by a closed circle. |
| S0848 | `round-arrow-left` | L0379 | `circle-arrow-left` | match | Same leftward arrow enclosed by a closed circle. |
| S0849 | `round-arrow-left-down` | L0380 | `circle-arrow-out-down-left` | variant | Direction is preserved, but Solar keeps the arrow inside a closed circle while Lucide exits through an open circle boundary. |
| S0850 | `round-arrow-left-up` | L0382 | `circle-arrow-out-up-left` | variant | Direction is preserved, but Solar keeps the arrow inside a closed circle while Lucide exits through an open circle boundary. |
| S0851 | `round-arrow-right` | L0384 | `circle-arrow-right` | match | Same rightward arrow enclosed by a closed circle. |
| S0852 | `round-arrow-right-down` | L0381 | `circle-arrow-out-down-right` | variant | Direction is preserved, but Solar keeps the arrow inside a closed circle while Lucide exits through an open circle boundary. |
| S0853 | `round-arrow-right-up` | L0383 | `circle-arrow-out-up-right` | variant | Direction is preserved, but Solar keeps the arrow inside a closed circle while Lucide exits through an open circle boundary. |
| S0854 | `round-arrow-up` | L0385 | `circle-arrow-up` | match | Same upward arrow enclosed by a closed circle. |
| S0873 | `ruble` | L1352 | `russian-ruble` | variant | Same Russian ruble mark, but Solar adds a circular container and Lucide is standalone. |
| S0875 | `ruler` | L1350 | `ruler` | match | Same ruler object and measurement marks. |
| S0882 | `sad-circle` | L0770 | `frown` | match | Same frowning face enclosed by a circle. |
| S0887 | `sale` | L0126 | `badge-percent` | match | Same percent-sale badge object. |
| S0889 | `satellite` | L1356 | `satellite` | match | Same satellite object. |
| S0890 | `scale` | L1365 | `scale` | related | Solar depicts a personal weighing scale, while Lucide depicts a two-pan balance; the objects are not interchangeable. |
| S0891 | `scaling` | L1367 | `scaling` | match | Same expand/scale-up action. |
| S0894 | `scissors` | L1381 | `scissors` | match | Same scissors object. |
| S0895 | `scissors-square` | L1546 | `square-scissors` | match | Same scissors object enclosed by a square. |
| S0896 | `scooter` | L1383 | `scooter` | match | Same scooter object. |

## Verification

- Solar atlas inspected: `.atlas/solar/solar-09.png`.
- Selected Lucide references and nearby alternatives were inspected in `.atlas/lucide/lucide-01.png`,
  `lucide-02.png`, `lucide-04.png`, `lucide-07.png`, `lucide-08.png`, `lucide-14.png`,
  `lucide-15.png`, and `lucide-16.png`.
- The four diagonal round-arrow rows were explicitly checked against Lucide's `circle-arrow-out-*`
  paths; the open boundary is a semantic modifier, so they remain audit variants.
- The Solar `scale` source is a personal weighing scale, not Lucide's two-pan balance; it remains
  related evidence only. The Solar ruble's circular container is also retained as a variant.
- All candidate arrays in `sheet-09.json` remain intact; `verified-matches.json` was not modified.
- `sheet-09.json` now projects 25 strict equivalents, 38 variants, and 37 related rows.

```bash
pnpm --filter icon-parity production:validate -- 09
pnpm --filter icon-parity lucide:coverage
pnpm --filter icon-parity lucide:coverage:check
pnpm --filter icon-parity exec tsc --noEmit
git diff --check
```
