# Metadata semantic audit

Status: in progress.

`packages/core/src/metadata-descriptions.json` is the hand-curated source of truth for icon search metadata. `apps/docs/generated/descriptions.ts` is generated from it and must be refreshed after every source edit. This audit changes metadata only. It does not change Fuse, tokenization, typo tolerance, or search ranking.

## Review rules

- Tags must describe the visible object, modifier, direction, or a direct conventional meaning of the icon.
- A tag must not come from an unrelated object, a guessed use case, or a language-model hallucination.
- Directional and state modifiers must agree with the symbol. For example, a right-facing redo icon must not advertise `undo`, `rewind`, or `backwards`.
- Positive and negative reactions, locked and unlocked states, and upload and download states must not inherit each other's semantic tags.
- `categoryTags` describe the broad catalogue category. They do not justify an unrelated icon tag.
- `check` matching `checkout` is intentional. `unread` is not renamed to `check`, and search behavior is out of scope.

## Current pass

The 2026-09-06 pass changed 285 of 1,268 entries. It covered the following groups:

- Direction and action metadata: arrow direction, transfer, sort, login/logout, import/export, screen sharing, fullscreen, and undo/redo variants.
- Media metadata: record, soundwave, pause/stop, rewind/fast-forward, picture-in-picture, volume, camera, shuffle, film reel, and fullscreen exit.
- Object mismatches: files, folders, maps, radios, projectors, devices, remote controls, feed, safe, money bag, bags, carts, and astronomy symbols.
- Medical and reaction metadata: pulse/ECG, syringe, bone, droppers, dislike, star effects, and user modifiers.
- Security and account states: unlocked locks, closed eye, key, shield keyhole, user add/remove/check, and unread notifications.
- State-specific category metadata: broken hearts, unlocked locks, danger and siren icons, and downward business charts no longer inherit contradictory positive, locked, or growth-oriented category tags.
- Metadata hygiene: malformed spellings, underscores, leading whitespace, duplicate normalized tags, and generic AI filler such as `icon` or `symbol` where it obscured the actual concept.

The exact entry list for this pass is kept in the source diff. The semantic regression guard in `src/scripts/check-metadata-semantics.ts` records the high-confidence false-positive findings so they cannot silently return.

## High-confidence findings recorded

The first findings included:

- `alt-arrow-down` carrying `checkmark`.
- `dislike` carrying positive approval and upvote tags.
- Clipboard and archive variants carrying `check` or checklist tags without the corresponding mark.
- `translation` and `translation-2` carrying language tags even though their SVGs show wireless/radio symbols.
- `revote` carrying only check-verification tags, `feed` carrying file/folder tags, and `remote-controller-2` carrying speaker/audio tags.
- `flag` carrying signal/connectivity tags, a city carrying `factory`, a speedometer carrying `gear-circle`, and text-selection carrying `box-tools`.
- Generic filler tags such as `icon` on Bluetooth, menu dots, and password input icons.
- Broken-heart icons carrying positive `favorite`, `passion`, or `like` tags; vinyl and microphone icons carrying recording-device tags that did not match their drawings.
- Unlocked lock variants carrying `secure`, `safe`, `private`, or `protect` as if they were locked variants.
- Directional controls mixing `undo` with `redo`, or `upload` with `download`, after visual inspection.
- Wrong object tags such as pot on a trash icon, golf on a tennis icon, stroller on a cart, luggage on a boombox, aircraft on a transmission icon, and magnifying-glass tags on a key.
- Additional concrete mismatches: `clipboard-check` carrying checklist/task-list tags, `upload-track-2` carrying video/recording tags, a rocket carrying the nautical `ship` tag, and suitcase variants inheriting nature/plant category tags.
- `volume-knob` inheriting home/furniture category tags despite depicting an audio control.
- `body-shape` variants inheriting fitness category tags despite depicting clothing/underwear silhouettes.

## Validation

Run these checks after editing the source:

```sh
pnpm --filter @solar-icons/core check:descriptions
pnpm --filter @solar-icons/core check:metadata
pnpm --filter @solar-icons/core check:metadata:semantics
pnpm --filter @solar-icons/docs generate:descriptions
```

The semantic check is intentionally a reviewed denylist plus hygiene checks. It is not an automatic relevance classifier. New findings should be visually verified, corrected manually in the source JSON, added to the guard when they are high-confidence, and recorded here.

## Next review tranche

Continue category-by-category visual review for lower-confidence tags and category-specific synonyms. Prioritize entries where a tag names a concrete object not present in the icon, then state modifiers, then generic or redundant wording. Do not broaden the audit into search-engine changes.
