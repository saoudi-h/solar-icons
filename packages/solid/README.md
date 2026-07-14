# @solar-icons/solid

SolidJS components for Solar Icons. This package provides 7,476 SVG icons across 6 styles (Bold, Broken, Linear, Outline, Bold Duotone, Line Duotone), optimized for Solid applications.

## Features

- **7,476 SVGs:** 1,246 unique icons in 6 styles. Designed by 480 Design.
- **Tree-shakeable:** Import only the icons you use.
- **Global configuration:** Set defaults for size, color, and stroke width using `<SolarProvider>`.
- **Customizable:** Override size, color, and stroke width per icon via props or CSS variables.
- **Duotone support:** Secondary color controls for `bold-duotone` and `line-duotone` styles.
- **TypeScript:** Typed components and props.

## Install

```sh
npm install @solar-icons/solid
```

## Usage

```tsx
import { HomeIcon, LoginIcon } from '@solar-icons/solid/linear';

function App() {
    return (
        <div>
            <HomeIcon />
            <LoginIcon color="#3b82f6" size={32} strokeWidth={2} />
        </div>
    );
}
```

### Global Configuration (Provider)

Wrap your application in `<SolarProvider>` to set default properties:

```tsx
import { SolarProvider } from '@solar-icons/solid';
import { HomeIcon } from '@solar-icons/solid/linear';

function App() {
    return (
        <SolarProvider size={24} color="currentColor" strokeWidth={1.5}>
            <HomeIcon />
        </SolarProvider>
    );
}
```

## Documentation

For installation guides, API reference, and a searchable icon catalog, visit the [Solid Documentation](https://solar-icons.vercel.app/docs/v2/frameworks/solid).

## License

MIT License. Icons by 480 Design (CC BY 4.0).
