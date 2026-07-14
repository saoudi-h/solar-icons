---
"@solar-icons/static": major
---

Add `@solar-icons/static`: framework-free static assets generated from the same
source as every other package. Ships individual SVG files
(`dist/icons/<style>/<name>.svg`), an SVG sprite (`dist/sprite.svg`), and an SVG
string map (`dist/icons.json` + JS import). Duotone accent layers are baked with
the `--solar-secondary-color` / `--solar-secondary-opacity` CSS variables, so
duotone theming works with zero runtime.
