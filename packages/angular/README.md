# @solar-icons/angular

Solar Icons for Angular - A comprehensive icon library with 6 unique styles and +7,400 icons.

## Installation

```bash
npm install @solar-icons/angular
# or
pnpm add @solar-icons/angular
# or
yarn add @solar-icons/angular
```

## Usage

### 1. Static Components (Recommended)
This is the most efficient way to use icons. Only the icons you import are included in your bundle.

```typescript
import { Component } from '@angular/core';
import { ArrowLeftBold } from '@solar-icons/angular';

@Component({
  selector: 'app-example',
  standalone: true,
  imports: [ArrowLeftBold],
  template: `
    <svg solarArrowLeftBold [size]="24" color="#ef4444" />
  `,
})
export class ExampleComponent {}
```

### 2. Dynamic Rendering
If you need to render icons based on dynamic data (strings from a database, conditional logic, etc.), use the `SolarDynamicIcon` directive.

#### Pattern A: Using the Icon Registry (Global/Scoped)
Register icons you want to make available by name. This is ideal when your icon names come from a database or API.

```typescript
// 1. Register icons in your providers (App-wide or Component-level)
import { provideSolarIcons } from '@solar-icons/angular';
import { HeartBold, StarBold } from '@solar-icons/angular/like';

bootstrapApplication(App, {
  providers: [
    provideSolarIcons({ HeartBold, StarBold })
  ]
});

// 2. Use them by string name in your template
import { SolarDynamicIcon } from '@solar-icons/angular';

@Component({
  standalone: true,
  imports: [SolarDynamicIcon],
  template: `
    <!-- By literal string -->
    <ng-container solarIcon="HeartBold" [size]="32" />

    <!-- By variable -->
    <ng-container [solarIcon]="selectedIcon" />
  `
})
export class App {
  selectedIcon = 'StarBold';
}
```

#### Pattern B: Direct Class Reference
You can pass the icon component class directly to `solarIcon`. This **does not** require registering them via `provideSolarIcons`, but the component must be in your `imports`.

```typescript
import { SolarDynamicIcon, SunBold, MoonBold } from '@solar-icons/angular';

@Component({
  standalone: true,
  imports: [SolarDynamicIcon, SunBold, MoonBold],
  template: `
    <ng-container [solarIcon]="isDark ? Moon : Sun" [size]="32" />
  `
})
export class App {
  isDark = true;
  // We must expose the classes to the template
  protected readonly Sun = SunBold;
  protected readonly Moon = MoonBold;
}
```

> [!TIP]
> When using **Pattern B**, the Angular compiler might show a warning (`NG8113`) saying the icon component is not used in the template. This is expected as the compiler doesn't "see" the selector being used directly. You can safely ignore this or use Pattern A to avoid it.

---

## Icon Styles
Solar Icons provides 6 unique styles:
- **Bold** - Bold and solid icons
- **BoldDuotone** - Bold with duotone coloring
- **Broken** - Broken/stylized icons
- **LineDuotone** - Line icons with duotone
- **Linear** - Clean line icons
- **Outline** - Outlined icons

## Properties

| Prop       | Type               | Default          | Description                         |
| ---------- | ------------------ | ---------------- | ----------------------------------- |
| `size`     | `string \| number` | `'1em'`          | Width and height of the icon        |
| `color`    | `string`           | `'currentColor'` | Color of the icon                   |
| `alt`      | `string`           | `undefined`      | Accessible label for screen readers |
| `mirrored` | `boolean`          | `false`          | Flip the icon horizontally          |

## Accessibility
For decorative icons, no action is needed (`aria-hidden="true"` is automatic). For functional icons, provide an `alt` attribute:

```html
<svg solarArrowLeftBold alt="Go back" />
```

## Performance Note
For large grids (e.g., icon pickers), we recommend using **Static Components** instead of `SolarDynamicIcon` for the best performance in Chromium-based browsers.

## License
MIT © [Saoudi Hakim](https://hakimsaoudi.dev)
