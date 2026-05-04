# @solar-icons/angular

Solar Icons for Angular - A comprehensive icon library with 6 unique styles.

## Installation

```bash
npm install @solar-icons/angular
# or
pnpm add @solar-icons/angular
# or
yarn add @solar-icons/angular
```

## Usage

### Basic Usage

```typescript
import { Component } from '@angular/core'
import { ArrowLeftBold } from '@solar-icons/angular'

@Component({
    selector: 'app-example',
    standalone: true,
    imports: [ArrowLeftBold],
    template: ` <svg solarArrowLeftBold [size]="24" [color]="'currentColor'" /> `,
})
export class ExampleComponent {}
```

### Import Icons

All icons are exported with an **explicit global name** that includes both the icon name and the style suffix. This makes Angular template selectors immediately predictable:

```typescript
// Global import — root entry point, ideal for a handful of icons
import { ArrowLeftBold, HeartLinear, StarOutline } from '@solar-icons/angular'
```

**Import by Category (Recommended for DX)**  
Group icons from the same visual domain for a cleaner imports block:

```typescript
import { ArrowLeftBold, ArrowRightBold, AltArrowDownLinear } from '@solar-icons/angular/arrows'
import { HeartBold, StarBold } from '@solar-icons/angular/like'
```

> ⚠️ **Why no per-style imports?**  
> Unlike the other Solar Icons packages, Angular components are used via **attribute selectors** in templates (`<svg solarArrowLeftBold />`). The full global name — including the style suffix — is part of the selector. Importing `ArrowLeft` from `@solar-icons/angular/Bold` would create a false expectation that `<svg solarArrowLeft />` works, when the actual selector is `<svg solarArrowLeftBold />`. Explicit global names keep the developer experience honest.

### Selector Formats

Each icon supports two selector formats:

```html
<!-- camelCase attribute with "solar" prefix (recommended) -->
<svg solarHeartBold />
<svg solarAltArrowDownBold />

<!-- kebab-case attribute with "solar-" prefix -->
<svg solar-heart-bold />
<svg solar-alt-arrow-down-bold />
```

## Icon Styles

Solar Icons provides 6 unique styles:

- **Bold** - Bold and solid icons
- **BoldDuotone** - Bold with duotone coloring
- **Broken** - Broken/stylized icons
- **LineDuotone** - Line icons with duotone
- **Linear** - Clean line icons
- **Outline** - Outlined icons

## Props

| Prop       | Type               | Default          | Description                         |
| ---------- | ------------------ | ---------------- | ----------------------------------- |
| `size`     | `string \| number` | `'1em'`          | Width and height of the icon        |
| `color`    | `string`           | `'currentColor'` | Color of the icon                   |
| `alt`      | `string`           | `undefined`      | Accessible label for screen readers |
| `mirrored` | `boolean`          | `false`          | Flip the icon horizontally          |

## Accessibility

For decorative icons (most cases), no additional configuration is needed. The icon will have `aria-hidden="true"` automatically.

For functional icons, provide an `alt` attribute:

```html
<svg solarArrowLeftBold [alt]="'Go back'" />
```

## Angular Version

This package supports **Angular 17+** and uses modern Angular features like signals, standalone components, and host directives.

## License

MIT © [Saoudi Hakim](https://hakimsaoudi.dev)
