# @solar-icons/angular

Solar Icons for Angular 17+. Standalone components built using Signals.

## Installation

```bash
npm install @solar-icons/angular
```

## Usage

### 1. Components

Import individual icon components:

```typescript
import { Component } from '@angular/core'
import { ArrowLeftBold } from '@solar-icons/angular'

@Component({
    selector: 'app-example',
    standalone: true,
    imports: [ArrowLeftBold],
    template: ` <svg solarArrowLeftBold [size]="24" color="#ef4444" /> `,
})
export class ExampleComponent {}
```

This package targets SVGs using attribute selectors (e.g., `solarArrowLeftBold` on `<svg>`).

### 2. Dynamic Rendering

To render icons based on dynamic data, use the `SolarDynamicIcon` directive.

#### Pattern A: Using the Icon Registry

Register icons to expose them to dynamic lookup:

```typescript
// Register in providers (App-wide or Component-level)
import { provideSolarIcons } from '@solar-icons/angular'
import { HeartBold, StarBold } from '@solar-icons/angular/like'

bootstrapApplication(App, {
    providers: [provideSolarIcons({ HeartBold, StarBold })],
})
```

```typescript
// Render by name in your template
import { SolarDynamicIcon } from '@solar-icons/angular'

@Component({
    standalone: true,
    imports: [SolarDynamicIcon],
    template: `
        <ng-container solarIcon="HeartBold" [size]="32" />
        <ng-container [solarIcon]="selectedIcon" />
    `,
})
export class App {
    selectedIcon = 'StarBold'
}
```

#### Pattern B: Direct Class Reference

Pass component classes directly to `solarIcon`:

```typescript
import { SolarDynamicIcon, SunBold, MoonBold } from '@solar-icons/angular'

@Component({
    standalone: true,
    imports: [SolarDynamicIcon, SunBold, MoonBold],
    template: ` <ng-container [solarIcon]="isDark ? Moon : Sun" [size]="32" /> `,
})
export class App {
    isDark = true
    protected readonly Sun = SunBold
    protected readonly Moon = MoonBold
}
```

---

## Inputs & Properties

| Input      | Type               | Default          | Description                        |
| ---------- | ------------------ | ---------------- | ---------------------------------- |
| `size`     | `string \| number` | `'1em'`          | Width and height of the icon.      |
| `color`    | `string`           | `'currentColor'` | Color of the icon.                 |
| `alt`      | `string`           | `undefined`      | Accessible label (adds `<title>`). |
| `mirrored` | `boolean`          | `false`          | Flips the icon horizontally.       |

## License

- **Code**: MIT
- **Icons**: CC BY 4.0 by [480 Design](https://www.figma.com/community/file/1166831539721848736) (requires attribution)
