# @solar-icons/static

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

### What's New

New package: static assets (individual SVGs, SVG sprite, per-icon ESM string modules, metadata JSON) with no framework required.

### Minor Changes

- [#508](https://github.com/saoudi-h/solar-icons/pull/508) [`55f7893`](https://github.com/saoudi-h/solar-icons/commit/55f7893f7dcd0888bb0efe606e84da10e2f205b2) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Enrich icon metadata with specific tags to improve search accuracy

### Patch Changes

- [`afce9f9`](https://github.com/saoudi-h/solar-icons/commit/afce9f92c6fb3b0e90caf14a62e27e508f9a3820) Thanks [@saoudi-h](https://github.com/saoudi-h)! - update readme files

## 2.0.0-beta.3

### Patch Changes

- [`afce9f9`](https://github.com/saoudi-h/solar-icons/commit/afce9f92c6fb3b0e90caf14a62e27e508f9a3820) Thanks [@saoudi-h](https://github.com/saoudi-h)! - update readme files

## 2.0.0-beta.2

### Minor Changes

- [#508](https://github.com/saoudi-h/solar-icons/pull/508) [`55f7893`](https://github.com/saoudi-h/solar-icons/commit/55f7893f7dcd0888bb0efe606e84da10e2f205b2) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Enrich icon metadata with specific tags to improve search accuracy

## 2.0.0-beta.1

### Patch Changes

- [#504](https://github.com/saoudi-h/solar-icons/pull/504) [`3723c12`](https://github.com/saoudi-h/solar-icons/commit/3723c12f5e096ff2670067a0d3df9960990c31dc) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: update airbuds and radial-blur icons (fix stroke width and styles)

## 2.0.0-beta.0

### Major Changes

- [#501](https://github.com/saoudi-h/solar-icons/pull/501) [`68b1c5f`](https://github.com/saoudi-h/solar-icons/commit/68b1c5f1dc86fa9c8616f4de4e418a1a6c6d87b5) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Add `@solar-icons/static`: framework-free static assets generated from the same
  source as every other package. Ships individual SVG files
  (`dist/icons/<style>/<name>.svg`), an SVG sprite (`dist/sprite.svg`), and an SVG
  string map (`dist/icons.json` + JS import). Duotone accent layers are baked with
  the `--solar-secondary-color` / `--solar-secondary-opacity` CSS variables, so
  duotone theming works with zero runtime.
