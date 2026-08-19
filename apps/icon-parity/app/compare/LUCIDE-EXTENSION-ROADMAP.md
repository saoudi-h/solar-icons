# Lucide extension roadmap

This file defines how the Lucide gap becomes a small, reviewable icon-delivery queue.

The source of truth for the current queue is `lucide-extension-roadmap.json`. It contains only
Lucide entries whose generated coverage report still says `reverseTier: "gap"`.

## Work lanes

Not every Lucide gap deserves an AI design pass. The queue separates three decisions:

- **match correction**: an existing Solar icon was missed by the mapping review. Fix the mapping
  and remove the Lucide icon from the extension queue;
- **derived variant**: the icon is useful, but it can be produced deterministically from an
  existing Solar primitive by rotating, mirroring, scaling, opening, or adding a simple state
  mark. Draw these directly in Figma;
- **assisted design**: the object or compound state is genuinely absent and needs a new
  silhouette. These are the appropriate candidates for the reference-board/image-generation
  experiment.

The JSON queue stores `workType` as either `derived-variant` or `assisted-design`. Match
corrections belong in the reverse coverage policy, not in this queue.

## Priority marker

Priority is an order-of-delivery marker, not a popularity score:

- `critical`: a common primitive or state that blocks many ordinary interfaces;
- `high`: broadly useful, or a low-effort derived variant with clear package value;
- `normal`: useful parity or a recurring domain need;
- `low`: niche, branded, or specialist use.

Every priority has a short reason. It is a delivery order, not a popularity claim: combine
semantic value, absence of a reliable fallback, and implementation effort. If the evidence
changes, update the reason and the queue in the same commit. Do not infer priority from the
Lucide name alone.

The current queue deliberately contains both easy wins and artistic candidates. The first pass
must clear match corrections before creating anything. The next derived-variant pass covers
`ellipsis-vertical`, `loader-circle`, `grip-vertical`, and `move`. The assisted-design packet is
reserved for genuinely absent objects such as `camera-off`, `bot`, `brain`, `barcode`,
`binoculars`, `paintbrush`, `toolbox`, `webcam`, and `wifi-cog`.

## Lifecycle

`planned` → `in-progress` → `ready` → `created`.

Use `deferred` when review deliberately postpones an item. A roadmap entry is not a package icon
until its SVGs and metadata have landed in `packages/core`.

Validate the queue from the repository root:

```sh
pnpm --filter icon-parity lucide:roadmap:check
```

## Release packet rule

Create and review one packet of up to six icons at a time. A packet is complete only when every
icon has all six Solar styles, curated metadata, and passes the core checks. Do not mark an icon
`created` merely because a Figma draft exists.

The reverse coverage report remains the evidence that led to the queue. It must be regenerated and
checked after a new icon is integrated:

```sh
pnpm --filter icon-parity lucide:coverage
pnpm --filter icon-parity lucide:coverage:check
```
