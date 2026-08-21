# Issue: preserve composite Figma categories

Status: proposed — defer implementation until the current icon import pipeline is stable.

## Problem

Figma categories are not always a single label. A component can be classified with one label
or with a meaningful composition of two to four labels, for example:

- `Essential, UI` — a broad interface category;
- `Transport, Parts, Service` — a combined mobility and mechanics domain;
- `Video, Audio, Sound` — a media family;
- `Home, Furniture` — a narrower home-furnishing domain;
- `Design, Tools` — design tools, not generic tools.

The current generator has to produce one directory/category key for package imports. It therefore
sorts the labels by length and keeps only the shortest one as the main category. This is a lossy
heuristic: `Design, Tools` becomes `tools`, and the original relationship between the labels is
only partially recoverable from the derived metadata.

This also explains why `tools` exists in the repository even though it is not necessarily a
standalone Figma category. It is a generated canonical key selected from composite labels.

## Impact

- category names in generated package paths can be semantically misleading;
- composite categories can collide after reduction to one token;
- filtering, documentation, and parity analysis lose information from the Figma source;
- moving an icon between derived categories requires manual reconciliation and can be reverted by
  the next Figma export.

## Desired outcome

Keep package category paths backward-compatible while preserving the complete source category
composition as structured metadata. The canonical package key must be selected by an explicit,
documented mapping rather than by label length.

## Acceptance criteria

1. The exported metadata retains the original ordered category labels for every icon.
2. Canonical package keys are resolved by an explicit mapping table with collision checks.
3. Existing import paths remain stable unless a deliberate migration is approved.
4. Composite labels such as `Design, Tools` cannot silently become an unrelated generic category.
5. The inventory and package-generation checks cover category preservation and collisions.
6. The migration and compatibility rules are documented before changing existing categories.

## Out of scope for this issue

Do not rename the current categories or migrate all existing SVG paths immediately. First design
the metadata representation and compatibility layer, then migrate in a separate reviewed change.
