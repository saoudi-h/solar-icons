# Equivalent Audit: Solar Sheet 03, Batch 01

This batch audits the first twelve Solar sheet-03 rows labelled `equivalent` in atlas order. The
criterion is strict semantic interchangeability: style and stroke construction may differ, but the
message shape, modifier, state, and object specificity must survive replacement. Every production
shortlist remains intact as audit evidence.

## Results

All twelve rows remain strict matches. No production reference required correction.

| Solar ID | Solar | Lucide ID | Lucide | Verdict | Evidence |
| --- | --- | --- | --- | --- | --- |
| S0209 | `chat-round` | L1051 | `message-circle` | match | Same circular speech bubble and tail; Lucide uses a lighter outline construction. |
| S0211 | `chat-round-check` | L1052 | `message-circle-check` | match | Same circular message bubble with a check modifier. |
| S0212 | `chat-round-dots` | L1056 | `message-circle-more` | match | Same circular message bubble with the three-dot continuation modifier. |
| S0213 | `chat-round-like` | L1055 | `message-circle-heart` | match | Same circular message bubble with a heart/like modifier. |
| S0218 | `chat-square` | L1063 | `message-square` | match | Same square speech bubble and tail; corner radius is a style difference. |
| S0222 | `chat-square-check` | L1064 | `message-square-check` | match | Same square message bubble with a check modifier. |
| S0223 | `chat-square-code` | L1065 | `message-square-code` | match | Same square message bubble with code brackets. |
| S0224 | `chat-square-like` | L1069 | `message-square-heart` | match | Same square message bubble with a heart/like modifier. |
| S0226 | `check-circle` | L0386 | `circle-check` | match | Same circle container with a single check. |
| S0227 | `check-read` | L0346 | `check-check` | match | Same double-check/read state; Lucide uses a slightly different check construction. |
| S0228 | `check-square` | L1509 | `square-check` | match | Same square container with a single check. |
| S0231 | `chef-hat` | L0348 | `chef-hat` | match | Same chef-hat object and silhouette; stroke treatment differs only stylistically. |

## Verification

- Solar atlas inspected: `.atlas/solar/solar-03.png`.
- Lucide message family inspected in `.atlas/lucide/lucide-11.png`; check, chef-hat, and square
  families inspected in `.atlas/lucide/lucide-04.png` and `.atlas/lucide/lucide-16.png`.
- All shortlisted alternatives were considered; the selected entries preserve the same modifiers
  while nearby alternatives either change the container or add a different state.
- `sheet-03.json` references and decisions were unchanged in this batch.
- `verified-matches.json` was not modified.

```bash
pnpm --filter icon-parity production:validate -- 03
pnpm --filter icon-parity exec tsc --noEmit
git diff --check
```
