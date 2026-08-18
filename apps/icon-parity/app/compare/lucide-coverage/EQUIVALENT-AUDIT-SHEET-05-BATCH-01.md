# Equivalent Audit: Solar Sheet 05, Batch 01

This batch audits all eight Solar sheet-05 rows labelled `equivalent`. The strict criterion is
semantic interchangeability: object, action, state, modifier, and specificity must survive
replacement; stroke and construction differences are styling only. Candidates remain preserved in
the production sheet.

## Results

All eight rows remain strict matches. No production reference required correction.

| Solar ID | Solar | Lucide ID | Lucide | Verdict | Evidence |
| --- | --- | --- | --- | --- | --- |
| S0402 | `file-text` | L0690 | `file-text` | match | Same generic document with text lines. |
| S0408 | `flag` | L0714 | `flag` | match | Same plain flag object without a state modifier. |
| S0412 | `flashlight` | L0720 | `flashlight` | match | Same handheld flashlight object. |
| S0421 | `folder-check` | L0735 | `folder-check` | match | Same folder object with a check modifier. |
| S0433 | `forward` | L0767 | `forward` | match | Same rightward curved forward arrow action. |
| S0476 | `hamburger-menu` | L1049 | `menu` | match | Same three horizontal menu bars; the naming difference is non-semantic. |
| S0492 | `health` | L0868 | `heart-plus` | match | Same heart-with-plus health/medical symbol. |
| S0493 | `heart` | L0863 | `heart` | match | Same plain heart object without a modifier. |

## Verification

- Solar atlas inspected: `.atlas/solar/solar-05.png`.
- Lucide file, flag, flashlight, folder, forward, menu, and heart families inspected in
  `.atlas/lucide/lucide-05.png`, `.atlas/lucide/lucide-06.png`, and
  `.atlas/lucide/lucide-09.png`.
- Shortlisted alternatives were considered; selected references preserve the same object, action,
  and modifiers without introducing a different state.
- `sheet-05.json` references and decisions were unchanged in this batch.
- `verified-matches.json` was not modified.

```bash
pnpm --filter icon-parity production:validate -- 05
pnpm --filter icon-parity exec tsc --noEmit
git diff --check
```
