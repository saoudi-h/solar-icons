# Equivalent Audit: Solar Sheet 08, Batch 01

This batch audits all eighteen Solar sheet-08 rows labelled `equivalent`. The strict criterion is
semantic interchangeability: object, action, state, modifier, and specificity must survive
replacement; stroke and construction differences are styling only. Candidates remain preserved in
the production sheet.

## Results

All eighteen rows remain strict matches. No production reference required correction.

| Solar ID | Solar | Lucide ID | Lucide | Verdict | Evidence |
| --- | --- | --- | --- | --- | --- |
| S0715 | `paint-roller` | L1179 | `paint-roller` | match | Same paint roller object. |
| S0721 | `paperclip` | L1206 | `paperclip` | match | Same paperclip object. |
| S0731 | `pause` | L1211 | `pause` | match | Same pause state/action. |
| S0733 | `paw` | L1212 | `paw-print` | match | Same paw-print symbol; the naming difference is non-semantic. |
| S0734 | `pen` | L1214 | `pen` | match | Same pen object. |
| S0740 | `phone` | L1228 | `phone` | match | Same generic telephone handset. |
| S0744 | `pie-chart` | L1240 | `pie-chart` | match | Same segmented pie-chart object. |
| S0747 | `pill` | L1245 | `pill` | match | Same capsule/pill object. |
| S0751 | `pin` | L1247 | `pin` | match | Same pushpin object. |
| S0756 | `pipette` | L1249 | `pipette` | match | Same laboratory pipette object. |
| S0765 | `play` | L1254 | `play` | match | Same right-facing play action. |
| S0766 | `play-circle` | L0410 | `circle-play` | match | Same play triangle enclosed in a circle. |
| S0781 | `power` | L1269 | `power` | match | Same power symbol/action. |
| S0783 | `printer` | L1272 | `printer` | match | Same printer object. |
| S0787 | `projector` | L1275 | `projector` | match | Same projector object. |
| S0790 | `qr-code` | L1279 | `qr-code` | match | Same QR-code object. |
| S0791 | `question-circle` | L0414 | `circle-question-mark` | match | Same question mark enclosed in a circle. |
| S0793 | `quit-full-screen` | L1093 | `minimize` | match | Same four-corner collapse/exit-full-screen action. |

## Verification

- Solar atlas inspected: `.atlas/solar/solar-08.png`.
- Lucide paint, paperclip, pause, paw, pen, phone, pie-chart, pill, pin, pipette, play, power,
  printer, projector, and QR-code families inspected in `.atlas/lucide/lucide-12.png` and
  `.atlas/lucide/lucide-13.png`; circle-play and circle-question references were inspected in
  `.atlas/lucide/lucide-05.png`; the minimize reference was inspected in
  `.atlas/lucide/lucide-11.png`.
- Shortlisted alternatives were considered; selected references preserve the same object, action,
  and modifiers without introducing a different state.
- `sheet-08.json` references and decisions were unchanged in this batch.
- `verified-matches.json` was not modified.

```bash
pnpm --filter react-app production:validate -- 08
pnpm --filter react-app exec tsc --noEmit
git diff --check
```
