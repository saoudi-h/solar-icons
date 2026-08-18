# Equivalent Audit: Solar Sheet 02, Batch 02

This batch audits the five remaining Solar sheet-02 rows labelled `equivalent` after batch 01.
The criterion is strict semantic interchangeability: visual construction and stroke treatment may
differ, but the object, action, state, and specificity must remain replaceable. All existing
candidates remain preserved in the production sheet.

## Results

All five rows remain strict matches. No production reference required correction.

| Solar ID | Solar | Lucide ID | Lucide | Verdict | Evidence |
| --- | --- | --- | --- | --- | --- |
| S0172 | `car-battery` | L0307 | `car-battery` | match | Both show a vehicle battery with distinct negative and positive terminals; Lucide `battery` is a generic battery and loses the vehicle-specific casing. |
| S0173 | `card` | L0526 | `credit-card` | match | Both are generic payment-card objects; the stripe and small detail marks differ only in drawing treatment. `id-card` and `wallet-cards` add semantics not present in Solar. |
| S0193 | `case` | L0252 | `briefcase-business` | match | Both show a closed handled work case with a front flap and clasp. Lucide `briefcase` has different rectangular geometry and `tool-case` adds tool contents. |
| S0198 | `cassette` | L0316 | `cassette-tape` | match | Both show a cassette tape with two reels and a cassette housing; Lucide `music` and `boom-box` are different objects. |
| S0200 | `cat` | L0319 | `cat` | match | Same cat-face concept; whisker and facial construction differences are stylistic. |

## Verification

- Visual board inspected: `.atlas/review/review-08.png` for `car-battery` and `card`, and
  `.atlas/review/review-10.png` for `case`, `cassette`, and `cat`.
- All shortlisted alternatives were considered, including generic `battery`, `briefcase`,
  `tool-case`, `music`, and `boom-box`.
- `sheet-02.json` references and decisions were unchanged in this batch.
- `verified-matches.json` was not modified.

```bash
pnpm --filter icon-parity production:validate -- 02
pnpm --filter icon-parity exec tsc --noEmit
git diff --check
```
