# Lucide extension roadmap

This file defines how the Lucide gap becomes a small, reviewable icon-delivery queue.

The source of truth for the current queue is `lucide-extension-roadmap.json`. It contains only
Lucide entries whose generated coverage report still says `reverseTier: "gap"`.

## Priority marker

Priority is an order-of-delivery marker, not a popularity score:

- `critical`: a common primitive or state that blocks many ordinary interfaces;
- `high`: broadly useful, but a release can ship without it;
- `normal`: useful parity or a recurring domain need;
- `low`: niche, branded, or specialist use.

Every priority has a short reason. If the evidence changes, update the reason and the queue in the
same commit. Do not infer priority from the Lucide name alone.

The first delivery packet is intentionally six icons. It is a planning packet, not a claim that
all six designs are ready to draw:

1. `minus` — the primitive counterpart to the existing extended `add`;
2. `pencil` — the generic edit action;
3. `ellipsis-vertical` — the vertical overflow-menu primitive;
4. `external-link` — the external-destination action;
5. `users` — the generic people/group primitive;
6. `loader-circle` — the generic loading state.

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
