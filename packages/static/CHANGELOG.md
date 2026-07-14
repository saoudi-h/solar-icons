# @solar-icons/static

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
