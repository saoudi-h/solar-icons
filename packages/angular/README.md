# @solar-icons/angular

Solar Icons for Angular 17+. Standalone components with signal-based inputs.

## Installation

```bash
npm install @solar-icons/angular
```

## Usage

### Static components

Import icons with the `Solar` prefix and style suffix, then use attribute selectors on `<svg>`:

```typescript
import { Component } from '@angular/core'
import { SolarHomeBold } from '@solar-icons/angular'

@Component({
    selector: 'app-example',
    standalone: true,
    imports: [SolarHomeBold],
    template: ` <svg solarHomeBold [size]="32" color="#ef4444" /> `,
})
export class ExampleComponent {}
```

### SolarProvider

Wrap a subtree to share icon styling via CSS custom properties:

```typescript
import { Component } from '@angular/core'
import { SolarProviderComponent, SolarHomeBold, SolarStarBold } from '@solar-icons/angular'

@Component({
    selector: 'app-demo',
    standalone: true,
    imports: [SolarProviderComponent, SolarHomeBold, SolarStarBold],
    template: `
        <solar-provider color="#3b82f6" [size]="32" [strokeWidth]="1.5">
            <svg solarHomeBold></svg>
            <svg solarStarBold></svg>
        </solar-provider>
    `,
})
export class DemoComponent {}
```

| Input              | CSS Variable              | Default        |
| ------------------ | ------------------------- | -------------- |
| `color`            | `--solar-color`           | `currentColor` |
| `size`             | `--solar-size`            | `24px`         |
| `strokeWidth`      | `--solar-stroke-width`    | `1.5`          |
| `secondaryColor`   | `--solar-duotone-color`   | `currentColor` |
| `secondaryOpacity` | `--solar-duotone-opacity` | `0.5`          |

### useSolar

For child-driven control, call `useSolar()` inside a component that is a descendant of `<solar-provider>`:

```typescript
import { Component } from '@angular/core'
import { useSolar, SolarProviderComponent, SolarHomeBold } from '@solar-icons/angular'

@Component({
    selector: 'app-controls',
    standalone: true,
    imports: [SolarHomeBold],
    template: `
        <svg solarHomeBold></svg>
        <input
            type="color"
            [value]="solar.color()"
            (input)="solar.setColor($any($event.target).value)" />
    `,
})
export class ControlsComponent {
    readonly solar = useSolar()
}
```

Wrap the component in a `<solar-provider>` ancestor:

```html
<solar-provider>
    <app-controls />
</solar-provider>
```

### Multi-style dynamic components

Import components that bundle all 6 styles and switch via `weight`:

```typescript
import { Component } from '@angular/core'
import { SolarHome } from '@solar-icons/angular/dynamic'

@Component({
    selector: 'app-example',
    standalone: true,
    imports: [SolarHome],
    template: `<svg solarHome weight="Bold" [size]="32" color="#ef4444" />`,
})
export class ExampleComponent {}
```

Available from `@solar-icons/angular/dynamic` (barrel) or `@solar-icons/angular/dynamic/home` (single).

### Dynamic rendering with `SolarIcon`

The `SolarIcon` directive renders icons at runtime from a class or registered name. Use it for data-driven scenarios.

```typescript
import { Component } from '@angular/core'
import { SolarIcon, provideSolarIcons } from '@solar-icons/angular'
import { SolarHome } from '@solar-icons/angular/dynamic'

@Component({
    selector: 'app-example',
    standalone: true,
    imports: [SolarIcon],
    template: ` <ng-container [solarIcon]="myIcon" [weight]="'Bold'" [size]="32" /> `,
})
export class ExampleComponent {
    myIcon = SolarHome
}
```

`SolarIcon` accepts `size`, `color`, `strokeWidth`, `weight`, `secondaryColor`, `secondaryOpacity`, `alt` — all forwarded to the created icon.

### CSS variables

Icons read from CSS custom properties when explicit inputs are omitted:

```css
:host {
    --solar-color: #ef4444;
    --solar-size: 32px;
    --solar-stroke-width: 2;
}
```

### Accessibility

Icons have `aria-hidden="true"` by default. Provide `alt` or `ariaLabel` to make them accessible:

```html
<svg solarHomeBold alt="Home" /> <svg solarHomeBold ariaLabel="Navigate to home page" />
```

## Inputs

| Input              | Type               | Description                    |
| ------------------ | ------------------ | ------------------------------ |
| `color`            | `string`           | Icon color                     |
| `size`             | `string \| number` | Width and height               |
| `strokeWidth`      | `string \| number` | Stroke width                   |
| `secondaryColor`   | `string`           | Duotone accent color           |
| `secondaryOpacity` | `number`           | Duotone accent opacity         |
| `isolated`         | `boolean`          | Ignores provider CSS variables |
| `alt`              | `string`           | Accessibility label            |
| `ariaLabel`        | `string`           | `aria-label` attribute         |

## License

- **Code**: MIT
- **Icons**: CC BY 4.0 by [480 Design](https://www.figma.com/community/file/1166831539721848736) (requires attribution)
