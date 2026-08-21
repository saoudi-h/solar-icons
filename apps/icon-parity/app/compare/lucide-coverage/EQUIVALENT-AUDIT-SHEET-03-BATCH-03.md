# Equivalent Audit: Solar Sheet 03, Batch 03

This batch audits the seven remaining Solar sheet-03 rows labelled `equivalent` after batches 01
and 02. The strict criterion is semantic interchangeability: syntax/object identity and modifiers
must be preserved; line-weight and construction differences are styling only. Candidates remain
preserved as evidence.

## Results

All seven rows remain strict matches. No production reference required correction.

| Solar ID | Solar | Lucide ID | Lucide | Verdict | Evidence |
| --- | --- | --- | --- | --- | --- |
| S0279 | `code` | L0483 | `code` | match | Same angle-bracket code symbol. |
| S0280 | `code-2` | L0484 | `code-xml` | match | Same XML/code-bracket symbol; the slash construction is retained. |
| S0282 | `code-file` | L0649 | `file-code` | match | Same document/file object with an embedded code symbol. |
| S0284 | `code-square` | L1515 | `square-code` | match | Same square container with an embedded code symbol. |
| S0286 | `command` | L0495 | `command` | match | Same command-key glyph. |
| S0287 | `compass` | L0496 | `compass` | match | Same compass object and central needle. |
| S0297 | `copyright` | L0515 | `copyright` | match | Same copyright mark in a circular container. |

## Verification

- Solar atlas inspected: `.atlas/solar/solar-03.png`.
- Lucide code, command, compass, and copyright families inspected in `.atlas/lucide/lucide-05.png`
  and `.atlas/lucide/lucide-06.png`.
- Shortlisted alternatives were considered; the selected entries preserve the same syntax, object,
  or legal mark without adding a different modifier.
- `sheet-03.json` references and decisions were unchanged in this batch.
- `verified-matches.json` was not modified.

```bash
pnpm --filter icon-parity production:validate -- 03
pnpm --filter icon-parity exec tsc --noEmit
git diff --check
```
