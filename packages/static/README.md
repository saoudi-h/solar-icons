# @solar-icons/static

Static Solar Icons assets — no framework required. Individual SVG files, an SVG sprite, an SVG string map, and tree-shakable per-icon ESM modules. Generated from the same source as every other `@solar-icons/*` package.

## Install

```sh
npm install @solar-icons/static
```

## What you get

| Format                 | Path / import                     | Use it for                                          |
| ---------------------- | --------------------------------- | --------------------------------------------------- |
| Individual SVGs        | `dist/icons/<style>/<name>.svg`   | `<img>`, CSS `background-image`                     |
| SVG sprite             | `@solar-icons/static/sprite`      | `<use href="...sprite.svg#<name>-<style>">`         |
| Full string map (JSON) | `@solar-icons/static/icons.json`  | Server-side file read, Node without import          |
| Per-icon ESM modules   | `@solar-icons/static/linear/home` | Tree-shakable string import (bundler / SSR)         |
| Barrel (named exports) | `@solar-icons/static`             | `import { LoginLinear } from '@solar-icons/static'` |

Styles: `bold`, `bold-duotone`, `broken`, `linear`, `line-duotone`, `outline`.

## Usage

### As an image or background

```html
<img src="@solar-icons/static/dist/icons/linear/home.svg" width="24" height="24" />
```

### From the barrel (named PascalCase)

```js
import { LoginLinear, HomeBold } from '@solar-icons/static'

document.body.innerHTML = LoginLinear
```

### Per-icon (tree-shakable)

```js
import loginLinear from '@solar-icons/static/linear/login'
```

### Sprite

```html
<svg><use href="@solar-icons/static/dist/sprite.svg#login-linear" /></svg>
```

### Full JSON map (Node / file read)

```js
import icons from '@solar-icons/static/icons.json'

const svg = icons['login-linear']
```

## Theming

Every icon inherits CSS custom properties, so color, size, stroke width and duotone accent work the same as in the framework packages:

```css
.solar {
    --solar-color: #3b82f6;
    --solar-size: 32px;
    --solar-secondary-color: #93c5fd;
}
```

`stroke-width` only affects stroke-based styles (`linear`, `broken`, `line-duotone`). `bold` / `bold-duotone` are fill-based and ignore it.

Unlike the framework packages, there is no Provider component — set the CSS variables on any ancestor.
