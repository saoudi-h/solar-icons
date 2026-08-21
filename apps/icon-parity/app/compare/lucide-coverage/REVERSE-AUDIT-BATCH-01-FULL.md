# Reverse Audit: Lucide Non-Equivalent Batch 01

This historical calibration packet closes the first 50 entries from the declared filter
`coverage === "non-equivalent"` and `suggestedBatch === 1`. Every target was reviewed against
the Solar atlas, with up to three candidates retained and a binary reverse decision recorded.

It established the review contract. New packets use 100 targets; this 50-target packet is not the
target cadence going forward.

The machine-readable evidence is
[`lucide-gap-batch-01-non-equivalent-review.json`](reverse-batches/lucide-gap-batch-01-non-equivalent-review.json).
The original visual-board handoff remains
[`lucide-gap-batch-01-non-equivalent.json`](reverse-batches/lucide-gap-batch-01-non-equivalent.json).

## Result

- 50 targets reviewed in one packet.
- 24 strict reverse equivalents.
- 26 explicit no-matches.
- 50/50 rows include a binary decision, rationale, and zero to three Solar candidates.
- No `verified-matches.json` change.
- 21 existing forward Solar references were deliberately promoted to `equivalent` after the
  reverse visual review, raising strict Lucide coverage from 292 to 313.
- Three reverse equivalents remain alias evidence rather than forward replacements: `expand`
  (L0610), `arrow-up-down` (L0094), and `door-open` (L0577). Their Solar rows already serve a
  different Lucide target and require an explicit alias policy.

## Strict reverse equivalents

| Lucide                      | Solar evidence              |
| --------------------------- | --------------------------- |
| `expand` (L0610)            | `full-screen` (S0439)       |
| `briefcase` (L0251)         | `case-round` (S0195)        |
| `chart-line` (L0335)        | `graph` (S0470)             |
| `speaker` (L1476)           | `speaker` (S0989)           |
| `file-x` (L0700)            | `file-remove` (S0398)       |
| `medal` (L1044)             | `medal-ribbon` (S0639)      |
| `arrow-up-down` (L0094)     | `transfer-vertical` (S1119) |
| `briefcase-medical` (L0254) | `medical-kit` (S0645)       |
| `coffee` (L0487)            | `cup-hot` (S0313)           |
| `door-open` (L0577)         | `exit` (S0376)              |
| `repeat` (L1320)            | `repeat` (S0821)            |
| `trophy` (L1698)            | `cup` (S0311)               |
| `type` (L1709)              | `text-format` (S1097)       |
| `accessibility` (L0004)     | `accessibility` (S0001)     |
| `file-plus` (L0676)         | `document-add` (S0338)      |
| `house-plus` (L0883)        | `home-add` (S0513)          |
| `list-check` (L0972)        | `list-check` (S0581)        |
| `list-checks` (L0973)       | `checklist` (S0229)         |
| `list-video` (L0992)        | `playlist` (S0769)          |
| `log-out` (L1005)           | `logout` (S0603)            |
| `mic` (L1082)               | `microphone` (S0654)        |
| `mirror-round` (L1097)      | `mirror` (S0669)            |
| `moon-star` (L1113)         | `moon-stars` (S0681)        |
| `mouse-pointer` (L1121)     | `cursor` (S0317)            |

The remaining 26 targets are explicit no-matches in the JSON record. Their nearest candidates are
retained to support later icon-addition prioritisation without confusing related concepts with
interchangeable replacements.

## Verification

```bash
pnpm --filter icon-parity lucide:gap:check
git diff --check
```
