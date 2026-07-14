# @solar-icons/angular

Angular components for Solar Icons. This package provides 7,476 SVG icons across 6 styles (Bold, Broken, Linear, Outline, Bold Duotone, Line Duotone), optimized for Angular applications.

## Features

- **7,476 SVGs:** 1,246 unique icons in 6 styles. Designed by 480 Design.
- **Tree-shakeable:** Import only the icons you use.
- **Global configuration:** Set defaults for size, color, and stroke width using `<solar-provider>`.
- **Customizable:** Override size, color, and stroke width per icon via inputs or CSS variables.
- **Duotone support:** Secondary color controls for `bold-duotone` and `line-duotone` styles.
- **TypeScript:** Typed components and inputs.

## Install

```sh
npm install @solar-icons/angular
```

## Usage

```ts
import { Component } from '@angular/core'
import { HomeIcon, LoginIcon } from '@solar-icons/angular/linear'

@Component({
    standalone: true,
    imports: [HomeIcon, LoginIcon],
    template: `
        <div>
            <svg solarHomeIcon></svg>
            <svg solarLoginIcon color="#3b82f6" size="32" strokeWidth="2"></svg>
        </div>
    `,
})
export class AppComponent {}
```

### Global Configuration (Provider)

Wrap your components in `<solar-provider>` to set default properties:

```ts
import { Component } from '@angular/core'
import { SolarProvider } from '@solar-icons/angular'
import { HomeIcon } from '@solar-icons/angular/linear'

@Component({
    standalone: true,
    imports: [SolarProvider, HomeIcon],
    template: `
        <solar-provider size="24" color="currentColor" strokeWidth="1.5">
            <svg solarHomeIcon></svg>
        </solar-provider>
    `,
})
export class AppComponent {}
```

## Documentation

For installation guides, API reference, and a searchable icon catalog, visit the [Angular Documentation](https://solar-icons.vercel.app/docs/v2/frameworks/angular).

## License

MIT License. Icons by 480 Design (CC BY 4.0).
