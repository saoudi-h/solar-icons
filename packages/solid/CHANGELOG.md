# @solar-icons/solid

## 2.5.0

### Minor Changes

- [#711](https://github.com/saoudi-h/solar-icons/pull/711) [`c81ade3`](https://github.com/saoudi-h/solar-icons/commit/c81ade37c39319174163d213091f68e298e0cb61) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Expand catalogue to 1,517 icon families (9,102 SVGs) and deliver harmonized artwork:
  
  - Add 38 community icon families across all 6 styles contributed by Grand Magus:
    - Design & Vector Tools: `blend`, `brush-cross-pen`, `checkerboard`, `contrast`, `distort`, `exclude`, `flat-brush`, `gradient`, `intersect`, `intersect-minimalistic`, `noise-square`, `opacity`, `paint-bucket`, `selection`, `shadow`, `shape-rotate`, `subtract`, `subtract-minimalistic`, `union`, `warp`.
    - Basic Shapes: `circle`, `ellipse`, `rectangle`.
    - Canvas Controls & Transforms: `hand`, `hand-grab`, `rotate-anticlockwise`, `rotate-anticlockwise-2`, `rotate-clockwise`, `rotate-clockwise-2`, `translate`, `sparkles`.
    - Layers & Structure: `layer-arrow-down`, `layer-arrow-up`, `layers-arrow-down`, `layers-arrow-up`.
    - Calendar & Programming Tokens: `calendar-range`, `variable-brackets`, `variable-square`.
  - Harmonize `waterdrop` geometry across all 6 styles to align with teardrop proportions and consistency with `opacity`.

## 2.4.0

### Minor Changes

- [#707](https://github.com/saoudi-h/solar-icons/pull/707) [`5482577`](https://github.com/saoudi-h/solar-icons/commit/54825778823d8de6c349c36d809f4d30f5874be1) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Expand the catalogue to 1,479 icon families (8,874 SVGs) and deliver refined artwork:
  
  - Add `cookie` family across all 6 styles (closes [#631](https://github.com/saoudi-h/solar-icons/issues/631)).
  - Add `microphone-off`, `microphone-2-off`, `microphone-3-off`, and `microphone-large-off` families across all 6 styles (closes [#702](https://github.com/saoudi-h/solar-icons/issues/702)).
  - Add `list-unordered` and `list-unordered-minimalistic` families across all 6 styles (closes [#703](https://github.com/saoudi-h/solar-icons/issues/703)).
  - Add 21 UI, formatting, status, connectivity, and state-mark families across all 6 styles: `equal`, `divide`, `percent`, `asterisk`, `heart-off`, `star-half`, `list-indent-increase`, `list-indent-decrease`, `map-point-off`, `signal`, `signal-high`, `signal-medium`, `signal-low`, `signal-zero`, `rss`, `eye-off`, `shield-off`, `toggle-left`, `toggle-right`, `text-heading`, and `cloud-off`.
  - Harmonize enclosed interior contours in `Bold` and `Bold Duotone` for `eye`, `eye-scan`, and `map-point`.
  - Correct cross-variant centering and alignment drift across 24 families (including CPU, Phone Rounded, Walking, Laptop, Sleeping Faces, and UI controls).
  - Refine the Volume family artwork with clean line geometry and unified silhouettes.

## 2.3.5

### Patch Changes

- [#697](https://github.com/saoudi-h/solar-icons/pull/697) [`b1bf864`](https://github.com/saoudi-h/solar-icons/commit/b1bf8641283a2c70c562e0ca44bae69a043a9941) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Restore corrected Solar artwork from the reviewed Figma source. Preserve editable line geometry, corrected dashed details and theme-neutral colors across the catalogue without adding or removing icons.

## 2.3.4

### Patch Changes

- [#635](https://github.com/saoudi-h/solar-icons/pull/635) [`154b19f`](https://github.com/saoudi-h/solar-icons/commit/154b19f2bc90053d3de595fa15311d6a8d4e0381) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Restore compatibility with Solid 1. The 2.3.3 build imported a runtime that only exists in Solid 2, so the icons failed to load in Solid 1 projects.

## 2.3.3

### Patch Changes

- [#590](https://github.com/saoudi-h/solar-icons/pull/590) [`48ed3a5`](https://github.com/saoudi-h/solar-icons/commit/48ed3a552b0968f0401adaca9ebf048c40f510ef) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Validate the npm OIDC trusted publishing configuration in the release workflow. No functional change.

## 2.3.2

### Patch Changes

- [#562](https://github.com/saoudi-h/solar-icons/pull/562) [`d08cab3`](https://github.com/saoudi-h/solar-icons/commit/d08cab3c2d29aa81e0dfc4cb00fc11a7f5c6db34) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Apply the latest Figma corrections to the generated Solar Icons SVG catalogue.

## 2.3.1

### Patch Changes

- [#560](https://github.com/saoudi-h/solar-icons/pull/560) [`95f0b7c`](https://github.com/saoudi-h/solar-icons/commit/95f0b7c94840e77e3e3a431d9f02f3f5ed007a08) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Refresh the generated packages with the latest icon catalogue, enriched metadata, and corrected public inventory counts.

## 2.3.0

### Minor Changes

- [#555](https://github.com/saoudi-h/solar-icons/pull/555) [`747b9af`](https://github.com/saoudi-h/solar-icons/commit/747b9af569f499ad330e7679b179318da4ec61b1) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Refresh the icon catalogue and generated framework packages with the latest SVG quality corrections. Add the canonical `chart-square-2` name while preserving `chat-square-2` as a deprecated compatibility alias, and keep the codemod and package metadata aligned with the updated catalogue.

## 2.2.0

### Minor Changes

- [#551](https://github.com/saoudi-h/solar-icons/pull/551) [`343029a`](https://github.com/saoudi-h/solar-icons/commit/343029ab152b6853e4f3bf538260d61662a3e9ee) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Expand the catalogue from 1,268 to 1,379 icons across all six styles, including the shadcn/ui coverage extensions and family variants. Preserve non-breaking file and chat naming changes through deprecated aliases, normalize those aliases during codemod migrations, and expose the updated catalogue across the CLI, MCP, static, and framework packages.

## 2.1.0

### Minor Changes

- [#535](https://github.com/saoudi-h/solar-icons/pull/535) [`b5ab9d2`](https://github.com/saoudi-h/solar-icons/commit/b5ab9d2f72b93af91086711e7e073e63781a1785) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Add the next curated Solar extension batch: barcode, barcode-scan, binoculars, bot, brain,
  paint-brush, toolbox, videocamera-off, webcam, webcam-off, and the Wi-Fi status variants. All
  extensions include the six canonical styles and auditable metadata.

### Patch Changes

- [#535](https://github.com/saoudi-h/solar-icons/pull/535) [`b5ab9d2`](https://github.com/saoudi-h/solar-icons/commit/b5ab9d2f72b93af91086711e7e073e63781a1785) Thanks [@saoudi-h](https://github.com/saoudi-h)! - add the extended `add`, `minus`, `close`, `exclamation-mark`, and
  `question-mark` icons, correct the `file-smile` name, preserve the
  metadata/deprecation validation model across generated packages, and expose
  auditable extension priorities for future icon additions.

## 2.0.2

### Patch Changes

- [#531](https://github.com/saoudi-h/solar-icons/pull/531) [`171c9bf`](https://github.com/saoudi-h/solar-icons/commit/171c9bf09ea9c86887260db9ba23479cc7b1f5e2) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: correct the ticket-star icon name, preserve ticker-star compatibility exports, and refresh logout Bold SVG

## 2.0.1

### Patch Changes

- [#531](https://github.com/saoudi-h/solar-icons/pull/531) [`29bfda4`](https://github.com/saoudi-h/solar-icons/commit/29bfda4ced2e0db927c10fb87b8484c9400d8ed4) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: correct the ticket-star icon name, preserve ticker-star compatibility exports, and refresh logout Bold SVG

## 2.0.0

### Breaking Changes

- **`Icon` suffix on every component name.** `Home` is now `HomeIcon`.
- **Per-style import paths.** Category imports are gone. Import per style (`@solar-icons/solid/bold`) or per icon (`@solar-icons/solid/bold/home`).
- **`mirrored` prop removed.**
- **Duotone props renamed.** `duotoneColor`/`duotoneOpacity` → `secondaryColor`/`secondaryOpacity`.
- **Icon renames.** Some icon names changed (`weigher` → `scale`, ...). See the [migration guide](https://solar-icons.vercel.app/docs/v2/migration-to-v2/icon-renames).
- **ESM-only.** `require()` no longer works.

### What's New

- **`<SolarProvider>` + `useSolar()`** with CSS-variable theming (`--solar-color`, `--solar-size`, `--solar-stroke-width`, `--solar-secondary-color`, `--solar-secondary-opacity`).
- **Dynamic icons** (`@solar-icons/solid/dynamic`) with runtime `weight` switching.
- **Migration codemod**: `npx @solar-icons/codemod` migrates v1 projects automatically.

### Patch Changes

- [#513](https://github.com/saoudi-h/solar-icons/pull/513) [`b766d76`](https://github.com/saoudi-h/solar-icons/commit/b766d7630624520b819a05a1a3837c4d5f66d4e7) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: resolve inline style specificity preventing utility classes from overriding icon size

- [`afce9f9`](https://github.com/saoudi-h/solar-icons/commit/afce9f92c6fb3b0e90caf14a62e27e508f9a3820) Thanks [@saoudi-h](https://github.com/saoudi-h)! - update readme files

## 2.0.0-beta.3

### Patch Changes

- [#513](https://github.com/saoudi-h/solar-icons/pull/513) [`b766d76`](https://github.com/saoudi-h/solar-icons/commit/b766d7630624520b819a05a1a3837c4d5f66d4e7) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: resolve inline style specificity preventing utility classes from overriding icon size

## 2.0.0-beta.2

### Patch Changes

- [`afce9f9`](https://github.com/saoudi-h/solar-icons/commit/afce9f92c6fb3b0e90caf14a62e27e508f9a3820) Thanks [@saoudi-h](https://github.com/saoudi-h)! - update readme files

## 2.0.0-beta.1

### Patch Changes

- [#504](https://github.com/saoudi-h/solar-icons/pull/504) [`3723c12`](https://github.com/saoudi-h/solar-icons/commit/3723c12f5e096ff2670067a0d3df9960990c31dc) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: update airbuds and radial-blur icons (fix stroke width and styles)

## 1.0.1

### Patch Changes

- [#461](https://github.com/saoudi-h/solar-icons/pull/461) [`da571b7`](https://github.com/saoudi-h/solar-icons/commit/da571b744d1253dbf0e37d81f161a8645c6ae4b9) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: logout Bold icon
