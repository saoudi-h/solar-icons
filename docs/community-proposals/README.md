# Community proposals: revised artwork

These 38 families remain under review in PR #692. The submitted versions are preserved in commit `3036cbd3b06f144556b257b0c05143d71e3e3854`. The revised SVGs were exported individually from the separate Figma review section; the maintained catalogue sections were not modified.

Authorship remains with GrandMagus02 (Grand Magus). Maintainer revisions do not imply contributor approval. No release assets or changeset are included. The contributor has final artwork approval before merge.

Each preview shows the submitted artwork above the revised artwork. Columns: Linear, Broken, Line Duotone, Outline, Bold, Bold Duotone. Paint is rendered in monochrome for comparison; opacity is preserved.

The revisions standardize editable stroke styles and expanded filled styles, stroke weight and duotone treatment where needed. The table explicitly records naming and category changes. It does not claim that every family required every type of adjustment.

| Original name | Revised name | Category | Before / after |
| --- | --- | --- | --- |
| `blend` | `blend` | `tools` | ![blend: submitted then revised](previews/blend.png) |
| `bring-layer-backward` | `layer-arrow-down` | `tools` | ![layer-arrow-down: submitted then revised](previews/layer-arrow-down.png) |
| `bring-layer-forward` | `layer-arrow-up` | `tools` | ![layer-arrow-up: submitted then revised](previews/layer-arrow-up.png) |
| `bring-layer-to-background` | `layers-arrow-down` | `tools` | ![layers-arrow-down: submitted then revised](previews/layers-arrow-down.png) |
| `bring-layer-to-foreground` | `layers-arrow-up` | `tools` | ![layers-arrow-up: submitted then revised](previews/layers-arrow-up.png) |
| `brush-cross-pen` | `brush-cross-pen` | `tools` | ![brush-cross-pen: submitted then revised](previews/brush-cross-pen.png) |
| `calendar-range` | `calendar-range` | `time` | ![calendar-range: submitted then revised](previews/calendar-range.png) |
| `checkerboard` | `checkerboard` | `tools` | ![checkerboard: submitted then revised](previews/checkerboard.png) |
| `circle` | `circle` | `tools` | ![circle: submitted then revised](previews/circle.png) |
| `contrast` | `contrast` | `tools` | ![contrast: submitted then revised](previews/contrast.png) |
| `distort` | `distort` | `tools` | ![distort: submitted then revised](previews/distort.png) |
| `ellipse` | `ellipse` | `tools` | ![ellipse: submitted then revised](previews/ellipse.png) |
| `exclude` | `exclude` | `tools` | ![exclude: submitted then revised](previews/exclude.png) |
| `flat-brush` | `flat-brush` | `tools` | ![flat-brush: submitted then revised](previews/flat-brush.png) |
| `gradient` | `gradient` | `tools` | ![gradient: submitted then revised](previews/gradient.png) |
| `hand-grab` | `hand` | `hands` | ![hand: submitted then revised](previews/hand.png) |
| `hand-grabbing` | `hand-grab` | `hands` | ![hand-grab: submitted then revised](previews/hand-grab.png) |
| `intersect` | `intersect` | `tools` | ![intersect: submitted then revised](previews/intersect.png) |
| `intersect-minimalistic` | `intersect-minimalistic` | `tools` | ![intersect-minimalistic: submitted then revised](previews/intersect-minimalistic.png) |
| `noise-square` | `noise-square` | `tools` | ![noise-square: submitted then revised](previews/noise-square.png) |
| `opacity` | `opacity` | `tools` | ![opacity: submitted then revised](previews/opacity.png) |
| `paint-bucket` | `paint-bucket` | `tools` | ![paint-bucket: submitted then revised](previews/paint-bucket.png) |
| `rectangle` | `rectangle` | `tools` | ![rectangle: submitted then revised](previews/rectangle.png) |
| `rotate-anticlockwise` | `rotate-anticlockwise` | `tools` | ![rotate-anticlockwise: submitted then revised](previews/rotate-anticlockwise.png) |
| `rotate-anticlockwise-2` | `rotate-anticlockwise-2` | `tools` | ![rotate-anticlockwise-2: submitted then revised](previews/rotate-anticlockwise-2.png) |
| `rotate-clockwise` | `rotate-clockwise` | `tools` | ![rotate-clockwise: submitted then revised](previews/rotate-clockwise.png) |
| `rotate-clockwise-2` | `rotate-clockwise-2` | `tools` | ![rotate-clockwise-2: submitted then revised](previews/rotate-clockwise-2.png) |
| `selection` | `selection` | `tools` | ![selection: submitted then revised](previews/selection.png) |
| `shadow` | `shadow` | `tools` | ![shadow: submitted then revised](previews/shadow.png) |
| `shape-rotate` | `shape-rotate` | `tools` | ![shape-rotate: submitted then revised](previews/shape-rotate.png) |
| `sparkles` | `sparkles` | `ui` | ![sparkles: submitted then revised](previews/sparkles.png) |
| `subtract` | `subtract` | `tools` | ![subtract: submitted then revised](previews/subtract.png) |
| `subtract-minimalistic` | `subtract-minimalistic` | `tools` | ![subtract-minimalistic: submitted then revised](previews/subtract-minimalistic.png) |
| `translate` | `translate` | `text-formatting` | ![translate: submitted then revised](previews/translate.png) |
| `union` | `union` | `tools` | ![union: submitted then revised](previews/union.png) |
| `variable-brackets` | `variable-brackets` | `it` | ![variable-brackets: submitted then revised](previews/variable-brackets.png) |
| `variable-square` | `variable-square` | `it` | ![variable-square: submitted then revised](previews/variable-square.png) |
| `warp` | `warp` | `tools` | ![warp: submitted then revised](previews/warp.png) |

## Review boundary

The draft branch deliberately does not regenerate downstream consumers. Existing catalogue-freshness checks may therefore report stale generated files. Once the contributor approves the final artwork, the maintainer can integrate the Figma components into the catalogue categories and prepare the regular export, consumer regeneration and release validation.

## Technical checks

- All 38 families have six 24x24 SVG variants; icon/metadata coverage passes.
- The corrected intersect and paint-bucket variants now pass the stroke-only fill check.
- Theme-resolved black paint was normalized to #1C274C in the review SVGs; geometry and opacity were preserved.
- The strict SVG checker still reports 49 non-round-cap attributes. Forty belong to fully closed paths, where caps have no visible effect. Nine involve open subpaths, including internal junctions, in contrast, exclude, flat-brush, opacity and subtract-minimalistic. These remain explicit follow-up items before integration; no automatic cap changes were applied to the artwork.
- Four warnings belong to the existing WiFi None exceptions, not this proposal batch.

These checks support contributor review, not merge readiness. Downstream generation and final integration checks remain deferred.
