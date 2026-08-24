# Equivalent Audit: Solar Sheet 06, Batch 01

This batch audits all six Solar sheet-06 rows labelled `equivalent`. The strict criterion is
semantic interchangeability: object, action, state, modifier, and specificity must survive
replacement; stroke and construction differences are styling only. Candidates remain preserved in
the production sheet.

## Results

All six rows remain strict matches. No production reference required correction.

| Solar ID | Solar         | Lucide ID | Lucide      | Verdict | Evidence                                                   |
| -------- | ------------- | --------- | ----------- | ------- | ---------------------------------------------------------- |
| S0502    | `help`        | L0959     | `life-buoy` | match   | Same life-buoy help/support symbol.                        |
| S0536    | `infinite`    | L0903     | `infinity`  | match   | Same infinity symbol; the name difference is non-semantic. |
| S0537    | `info-circle` | L0904     | `info`      | match   | Same lowercase information mark enclosed by a circle.      |
| S0549    | `keyboard`    | L0917     | `keyboard`  | match   | Same keyboard device object.                               |
| S0568    | `like`        | L1651     | `thumbs-up` | match   | Same thumbs-up/like action.                                |
| S0576    | `list`        | L0971     | `list`      | match   | Same bulleted list structure without a modifier.           |

## Verification

- Solar atlas inspected: `.atlas/solar/solar-06.png`.
- Lucide life-buoy, infinity, info, keyboard, and list families inspected in
  `.atlas/lucide/lucide-10.png`; the thumbs-up reference was inspected in
  `.atlas/lucide/lucide-17.png`.
- Shortlisted alternatives were considered; selected references preserve the same object, action,
  and modifiers without introducing a different state.
- `sheet-06.json` references and decisions were unchanged in this batch.
- `verified-matches.json` was not modified.

```bash
pnpm --filter icon-parity production:validate -- 06
pnpm --filter icon-parity exec tsc --noEmit
git diff --check
```
