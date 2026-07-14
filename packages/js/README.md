# @solar-icons/js

Vanilla JavaScript DOM injection library for Solar Icons. This package provides 7,476 SVG icons across 6 styles (Bold, Broken, Linear, Outline, Bold Duotone, Line Duotone), optimized for environments without a virtual DOM.

## Features

- **7,476 SVGs:** 1,246 unique icons in 6 styles. Designed by 480 Design.
- **Tree-shakeable:** Import only the icons you use.
- **Vanilla DOM injection:** Injects SVG markup into elements based on their `data-solar` attributes.
- **Global configuration:** Override size, color, and stroke width globally via CSS variables (`--solar-color`, `--solar-size`).
- **Duotone support:** Secondary color controls for `bold-duotone` and `line-duotone` styles.
- **Zero dependencies:** String-based rendering.

## Install

```sh
npm install @solar-icons/js
```

## Usage

First, define placeholders in your HTML. The default attribute is `data-solar`.

```html
<i data-solar="home-linear"></i> <i data-solar="login-bold"></i>
```

Then, import the specific icons you need and initialize the library. The `createIcons` function will parse the `data-solar` attributes, convert them to pascal case, and match them against the provided icons object.

```js
import { createIcons } from '@solar-icons/js'
import { HomeLinearIcon } from '@solar-icons/js/linear/home'
import { LoginBoldIcon } from '@solar-icons/js/bold/login'

createIcons({
    icons: {
        HomeLinearIcon,
        LoginBoldIcon,
    },
})
```

## Documentation

For installation guides, API reference, and a searchable icon catalog, visit the [JS Documentation](https://solar-icons.vercel.app/docs/v2/packages/js).

## License

MIT License. Icons by 480 Design (CC BY 4.0).
