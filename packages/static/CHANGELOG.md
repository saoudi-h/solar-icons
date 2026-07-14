# @solar-icons/static

## 2.0.0-beta.0

### Major Changes

- [#501](https://github.com/saoudi-h/solar-icons/pull/501) [`68b1c5f`](https://github.com/saoudi-h/solar-icons/commit/68b1c5f1dc86fa9c8616f4de4e418a1a6c6d87b5) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Add `@solar-icons/static`: framework-free static assets generated from the same
  source as every other package. Ships individual SVG files
  (`dist/icons/<style>/<name>.svg`), an SVG sprite (`dist/sprite.svg`), and an SVG
  string map (`dist/icons.json` + JS import). Duotone accent layers are baked with
  the `--solar-secondary-color` / `--solar-secondary-opacity` CSS variables, so
  duotone theming works with zero runtime.
