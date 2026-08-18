# Lucide Coverage Audit Report

This report records the handoff from the completed Solar → Lucide semantic mapping to the Lucide →
Solar gap phase. It is an audit projection, not an accepted-map mutation.

## Forward result

- 13/13 Solar sheets complete;
- 1,247/1,247 Solar icons resolved;
- 889 semantic Solar matches and 358 Solar no-matches;
- historical audit labels remain in the production sheets;
- `verified-matches.json` remains unchanged.

The semantic rules and explicit overrides are documented in
`../FORWARD-SEMANTIC-ADJUDICATION.md` and `../forward-semantic-promotions.ts`.

## Reverse result

The pinned Lucide inventory contains 1,836 icons. The generated `coverage.json` now reports:

- 529 Lucide icons already covered by the semantic forward map;
- reverse tiers after the second semantic pass: 623 exact, 44 explicit fallbacks, and 1,169 true gaps;
- 93 Lucide icons found equivalent by the closed reverse review but not yet integrated forward;
- 1,214 remaining Lucide gaps after those reverse no-matches;
- 1,544 closed reverse reviews: 281 equivalents and 1,263 no-matches.

Use `/lucide-gap` to inspect these queues visually. A reverse equivalent is evidence for a future
Solar candidate, not permission to mutate the accepted map.

## Next action

Start a new 100-target reverse packet from `/lucide-gap`, prioritising the `GAPS À COMBLER` queue.
Review `FALLBACKS CONTEXTUELS` separately: they are usable in some contexts but are not exact
equivalences and should not be counted as completed parity.
Every target receives exactly one binary decision: `equivalent` or `no-match`. Keep the packet
durable under `lucide-coverage/reverse-batches/` and validate it before integrating any forward
reference.
