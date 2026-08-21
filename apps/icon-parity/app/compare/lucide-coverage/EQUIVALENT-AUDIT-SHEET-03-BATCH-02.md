# Equivalent Audit: Solar Sheet 03, Batch 02

This batch audits the next twelve Solar sheet-03 rows labelled `equivalent` after batch 01. The
strict criterion is semantic interchangeability: modifiers, states, direction, and object
specificity must survive replacement; stroke and construction differences alone are acceptable.
All shortlisted candidates remain preserved in the production sheet.

## Results

All twelve rows remain strict matches. No production reference required correction.

| Solar ID | Solar | Lucide ID | Lucide | Verdict | Evidence |
| --- | --- | --- | --- | --- | --- |
| S0246 | `clipboard-add` | L0435 | `clipboard-plus` | match | Same clipboard object with an add/plus modifier. |
| S0247 | `clipboard-check` | L0427 | `clipboard-check` | match | Same clipboard object with a check modifier. |
| S0249 | `clipboard-list` | L0430 | `clipboard-list` | match | Same clipboard object with a list modifier; the dot/line construction is stylistic. |
| S0250 | `clipboard-remove` | L0437 | `clipboard-x` | match | Same clipboard object with a remove/cross modifier; Lucide `clipboard` and `clipboard-minus` lose or alter the action. |
| S0252 | `clock-circle` | L0438 | `clock` | match | Same circular clock face and time-reading concept; Solar's name encodes the enclosing circle already present in Lucide's drawing. |
| S0254 | `close-circle` | L0422 | `circle-x` | match | Same circle container with a close X. |
| S0255 | `close-square` | L1558 | `square-x` | match | Same square container with a close X. |
| S0258 | `cloud` | L0460 | `cloud` | match | Same plain cloud object. |
| S0259 | `cloud-bolt` | L0469 | `cloud-lightning` | match | Same cloud with a lightning modifier; Lucide `cloud` omits the weather state. |
| S0261 | `cloud-check` | L0463 | `cloud-check` | match | Same cloud with a check modifier. |
| S0263 | `cloud-download` | L0465 | `cloud-download` | match | Same cloud with a downward download arrow. |
| S0274 | `cloud-upload` | L0479 | `cloud-upload` | match | Same cloud with an upward upload arrow. |

## Verification

- Solar atlas inspected: `.atlas/solar/solar-03.png`.
- Lucide clipboard, clock, close, and cloud families inspected in `.atlas/lucide/lucide-05.png`.
- Candidate alternatives were considered; they either remove the modifier or change the action/state.
- `sheet-03.json` references and decisions were unchanged in this batch.
- `verified-matches.json` was not modified.

```bash
pnpm --filter icon-parity production:validate -- 03
pnpm --filter icon-parity exec tsc --noEmit
git diff --check
```
