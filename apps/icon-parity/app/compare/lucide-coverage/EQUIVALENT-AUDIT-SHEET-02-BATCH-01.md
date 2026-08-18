# Equivalent Audit: Solar Sheet 02, Batch 01

This batch audits the first twelve rows in Solar sheet 02 that were labelled `equivalent`. The
criterion is strict semantic interchangeability: minor stroke and construction differences are
acceptable, but a lost object, action, state, direction, or specificity is not. Candidates remain
in each production row as audit evidence.

## Results

Eleven rows remain strict matches. The `call-dropped-rounded` row was downgraded to `related`: its
Solar arrow modifier is not interchangeable with Lucide's missed-call X modifier. No candidate in
the inspected shortlist preserves the call-drop/hang-up state exactly.

| Solar ID | Solar | Lucide ID | Lucide | Verdict | Evidence |
| --- | --- | --- | --- | --- | --- |
| S0110 | `bluetooth` | L0194 | `bluetooth` | match | Same Bluetooth symbol; only the drawing treatment differs. |
| S0117 | `bolt` | L1820 | `zap` | match | Same standalone lightning-bolt symbol and meaning; Lucide `bolt` is an unrelated bolt-in-hexagon symbol. |
| S0122 | `bone` | L0201 | `bone` | match | Same single bone object and orientation. |
| S0124 | `bone-fracture` | L0202 | `bone-fracture` | match | Same fractured bone with the fracture burst modifier. |
| S0126 | `bonfire` | L0719 | `flame-kindling` | match | Both show a flame above crossed firewood; the bonfire concept and enclosure are preserved. |
| S0127 | `book` | L0203 | `book` | match | Same closed book/document object. |
| S0129 | `book-bookmark` | L0216 | `book-marked` | match | Same book with a bookmark modifier; Lucide's bookmark is rendered inside the book rather than using Solar's lower bookmark tab. |
| S0137 | `boombox` | L0235 | `boom-box` | match | Same portable boombox object with two speaker circles. |
| S0140 | `box` | L0241 | `box` | match | Same single three-dimensional box; `boxes` is a multiplicity mismatch. |
| S0151 | `calculator` | L0273 | `calculator` | match | Same calculator body and display/key layout at the concept level. |
| S0158 | `calendar-search` | L0291 | `calendar-search` | match | Same calendar with a search magnifier modifier. |
| S0164 | `call-dropped-rounded` | L1232 | `phone-missed` | related | Corrected: Solar uses a bent outgoing/drop arrow, whereas Lucide uses an X for a missed call. The failed-call theme is related, but the state glyph is not interchangeable. |

## Verification

- Visual boards inspected: `.atlas/review/review-01.png`, `.atlas/review/review-02.png`,
  `.atlas/review/review-03.png`, `.atlas/review/review-04.png`, `.atlas/review/review-06.png`, and
  `.atlas/review/review-07.png` generated from `sheet-02.json`.
- The adjacent candidates for each row were checked, including `bolt` versus `zap`,
  `bonfire` versus `flame`, `book-marked` versus `book`/`bookmark`, `box` versus `boxes`, and
  `phone-forwarded` versus `phone-missed`.
- `verified-matches.json` was not modified.

```bash
pnpm --filter icon-parity production:validate -- 02
pnpm --filter icon-parity exec tsc --noEmit
git diff --check
```
