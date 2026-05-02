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
import { ArrowLeftBold } from '@solar-icons/angular';

@Component({
    selector: 'app-example',
    standalone: true,
    imports: [ArrowLeftBold],
    template: `
        <svg solarArrowLeftBold [size]="24" color="currentColor"></svg>
    `
})
export class ExampleComponent {}
```

### Import by Style

```typescript
// Import all icons from a specific style
import { ArrowLeft, ArrowRight } from '@solar-icons/angular/Bold';
```

### Import by Category

```typescript
// Import all styles from a category
import * as Bold from '@solar-icons/angular/category/Arrows';
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

| Prop | Type | Default | Description |
|------|------|---------|-------------|
| `size` | `string \| number` | `'1em'` | Width and height of the icon |
| `color` | `string` | `'currentColor'` | Color of the icon |
| `alt` | `string` | `undefined` | Accessible label for screen readers |
| `mirrored` | `boolean` | `false` | Flip the icon horizontally |

## Accessibility

For decorative icons (most cases), no additional configuration is needed. The icon will have `aria-hidden="true"` automatically.

For functional icons, provide an `alt` attribute:

```html
<svg solarArrowLeftBold alt="Go back"></svg>
```

## License

MIT © [Saoudi Hakim](https://hakimsaoudi.dev)
