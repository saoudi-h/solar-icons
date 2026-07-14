# @solar-icons/static

Static SVG assets and ESM string modules for Solar Icons. This package provides 7,476 SVG icons across 6 styles (Bold, Broken, Linear, Outline, Bold Duotone, Line Duotone) for use without any JavaScript framework.

## Features

- **7,476 SVGs:** 1,246 unique icons in 6 styles. Designed by 480 Design.
- **Multiple formats:** `.svg` files, combined SVG sprite, JSON map, and tree-shakeable ESM string modules.
- **Server-side ready:** Can be used in static site generators or Node.js.
- **Global configuration:** Override size, color, and stroke width globally via CSS variables (`--solar-color`, `--solar-size`).
- **Duotone support:** Secondary color controls for `bold-duotone` and `line-duotone` styles.

## Install

```sh
npm install @solar-icons/static
```

## Usage

### As HTML Images

```html
<img src="@solar-icons/static/dist/icons/linear/home.svg" width="24" height="24" />
```

### SVG String Import (ESM)

Import the raw SVG string to inject manually or use in SSR templates:

```js
import { HomeLinear } from '@solar-icons/static'

document.body.innerHTML = HomeLinear
```

### SVG Sprite

Reference the combined sprite file in your HTML:

```html
<svg>
    <use href="@solar-icons/static/dist/sprite.svg#home-linear" />
</svg>
```

## Documentation

For installation guides, API reference, and a searchable icon catalog, visit the [Static Documentation](https://solar-icons.vercel.app/docs/v2/packages/static).

## License

MIT License. Icons by 480 Design (CC BY 4.0).
