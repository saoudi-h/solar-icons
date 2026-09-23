# Lucide easy-win mapping

This document is the maintainer decision log for the Lucide parity work. It exists so that a
future gap audit does not confuse a missing Lucide name with a missing Solar concept.

The machine-readable source is `lucide-easy-win-mapping.json`. The mapping uses the pinned local
Lucide snapshot and the current Solar naming conventions. It is separate from the historical
visual production map: a confirmed semantic replacement does not rewrite that accepted map by
itself.

## Already covered

| Lucide concept | Solar equivalent |
| --- | --- |
| `ellipsis-vertical` | `menu-dots-vertical` |
| `loader-circle` | `loader` |
| `archive-x` | `archive-close` |
| `file-chart-column` | `file-chart` |
| `file-chart-column-increasing` / `file-bar-chart` | `file-chart-2` |
| `gauge` | `speedometer-low`, `speedometer-middle`, `speedometer-max` |
| `message-circle-question-mark` / `message-circle-question` | `chat-round-question-mark` |
| `link-2-off` | `unlink`, `unlink-minimalistic` |
| `grid-2x2-x` | `grid-2x2-close` |

These entries must not return as new icon proposals.

## Completed easy-win packet

The packet discussed for the latest Figma session is now present in all six Solar styles:
the copy states, `filter-close`, the nine magnifier state variants, the bookmark states, the two
move-axis variants, both list naming variants, `grid-3x2`, and the dot primitive families.

One naming decision is explicit:

- Lucide `filter-x` becomes Solar `filter-close`.
- Lucide `copy-plus` and `copy-x` become Solar `copy-add` and `copy-close`.

For search, the variants were created for `magnifier-*`, `rounded-magnifier-*`, and
`minimalistic-magnifier-*`, not only for one base family. For list icons, preserve the existing
family-specific placement of `minimalistic` rather than applying a repository-wide rename.

## Deferred second wave

The file, folder, clipboard, table, dashed-panel, sorting-arrow, and user-state candidates are
recorded in `deferredSecondWave` and intentionally remain out of the next Figma packet.

`file-json` remains excluded: it was intentionally rejected as a Solar extension rather than a
required parity item.
