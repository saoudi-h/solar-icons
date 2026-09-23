# Solar catalogue growth audit

This audit keeps the Lucide extension work aligned with the actual Solar catalogue. It records
the changes made after the original 1,246-icon baseline so an already-delivered icon is not
proposed again under the same name.

## Counts

| Catalogue state | Solar icons | Change from previous state |
| --- | ---: | ---: |
| Historical baseline (`171c9bf09`) | 1,246 | — |
| Corrected asset release (`b5ab9d2f7`) | 1,268 | +22 |
| Catalogue extension (`cd61a55cf`) | 1,379 | +111 |
| Check icon and chart rename (`747b9af56`) | 1,380 | +1 |
| Current working tree | 1,417 | +37 |

The working tree therefore contains 171 more logical icons than the baseline. Across the four
waves there were 184 addition events and 13 removals or renames. Comparing only the final sets,
182 new canonical names remain and 11 baseline names no longer remain. The current working tree
includes the maintainer's uncommitted Figma import; it is not yet a published package state.

## What changed

- The first release added 22 icons, including `minus`, `barcode`, `binoculars`, `bot`, `brain`,
  `toolbox`, `webcam`, and `webcam-off`. The old `file-smile-` spelling became `file-smile`.
- The September catalogue extension added 111 net icons. It covered the file, folder, clipboard,
  chat, grid, table, Git, layout, loader, grip, move, panel, and quote families. Seven legacy
  names were removed in favour of canonical names: `chat-dots`, `chat-line`, `chat-unread`,
  `cloud-file`, `code-file`, `figma-file`, and `zip-file`.
- The next refresh added `check` and corrected `chat-square-2` to `chart-square-2`. The old
  spelling is represented through the deprecated-alias metadata path.
- The current Figma import adds the directional arrow and chevron families, six new file icons,
  layout rows/separators, explicit left/right/bottom panel variants, and three `panels-*`
  variants. The four old unqualified sidebar names were removed as part of that canonical rename.

## Lucide overlap found in the history

Comparing every canonical name introduced after the baseline with the pinned Lucide snapshot
(`@iconify-json/lucide@1.2.123`) finds 123 exact name overlaps:

- 8 in the first release;
- 77 in the September catalogue extension;
- 1 (`check`) in the next refresh;
- 37 in the current working-tree import.

These are now accounted for in the extension/family tracking instead of being treated as missing
ideas. An exact name is evidence for the queue, not by itself a visual equivalence decision; the
historical production Solar → Lucide map remains frozen until a visual mapping pass explicitly
accepts a new entry.

## Current queue state

- The curated easy-win family report contains 75 proposals: 72 are already present, one is an
  existing semantic equivalent, one needs visual review, none are missing, and one is outside the
  pinned Lucide snapshot.
- The extension roadmap contains 132 delivered entries or maintainer-confirmed mappings. Only
  `square` remains planned from the previous compatibility queue.
- The eight planned entries are the remaining candidates from that roadmap; they must still be
  checked against the current Figma catalogue before any new design work begins.

The historical production coverage files intentionally retain their 1,247-icon input. This audit
separates “the package has grown” from “the accepted visual mapping has changed,” preventing a
future mapping session from mixing the two.
