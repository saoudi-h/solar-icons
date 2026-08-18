# Equivalent Audit: Solar Sheet 04, Batch 02

This batch audits the final ten Solar sheet-04 rows labelled `equivalent` after batch 01. The
strict criterion is semantic interchangeability: object, action, state, and specificity must be
preserved; construction and stroke differences are styling only. Candidates remain preserved as
evidence.

## Results

All ten rows remain strict matches. No production reference required correction.

| Solar ID | Solar | Lucide ID | Lucide | Verdict | Evidence |
| --- | --- | --- | --- | --- | --- |
| S0349 | `double-alt-arrow-right` | L0367 | `chevrons-right` | match | Same pair of rightward chevrons. |
| S0350 | `double-alt-arrow-up` | L0369 | `chevrons-up` | match | Same pair of upward chevrons. |
| S0372 | `eraser` | L0606 | `eraser` | match | Same eraser object and diagonal orientation. |
| S0375 | `euro` | L0399 | `circle-euro` | match | Same euro currency mark in a circular container. |
| S0381 | `eye` | L0612 | `eye` | match | Same eye object. |
| S0382 | `eye-closed` | L0613 | `eye-closed` | match | Same closed-eye state. |
| S0389 | `ferris-wheel` | L0629 | `ferris-wheel` | match | Same ferris-wheel object. |
| S0390 | `figma` | L0630 | `figma` | match | Same Figma mark. |
| S0392 | `file` | L0631 | `file` | match | Same generic file/document object. |
| S0393 | `file-check` | L0645 | `file-check` | match | Same file object with a check modifier. |

## Verification

- Solar atlas inspected: `.atlas/solar/solar-04.png`.
- Lucide chevron, eraser, currency, eye, ferris-wheel, Figma, and file families inspected in
  `.atlas/lucide/lucide-04.png`, `.atlas/lucide/lucide-05.png`, and `.atlas/lucide/lucide-07.png`.
- Shortlisted alternatives were considered; selected references preserve the same object and
  modifiers without introducing a different state.
- `sheet-04.json` references and decisions were unchanged in this batch.
- `verified-matches.json` was not modified.

```bash
pnpm --filter react-app production:validate -- 04
pnpm --filter react-app exec tsc --noEmit
git diff --check
```
