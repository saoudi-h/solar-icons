# @solar-icons/solid

Solar Icons for SolidJS. Built for performance and minimal bundle size.

## Installation

```bash
npm install @solar-icons/solid
```

## Usage

Import and render components:

```tsx
import { House, Settings } from '@solar-icons/solid/Bold';

function App() {
    return (
        <div>
            <House size={24} color="#000" />
            <Settings size={32} color="blue" />
        </div>
    );
}
```

### Import Patterns

#### Import by Style

Import multiple icons of the same style:

```tsx
import { House, Settings } from '@solar-icons/solid/Bold';
import { House as HouseLinear } from '@solar-icons/solid/Linear';
```

Available styles: `Bold`, `Linear`, `Outline`, `BoldDuotone`, `LineDuotone`, `Broken`.

#### Import by Category

Import categorized icons directly:

```tsx
import { AltArrowLeft, ArrowUp } from '@solar-icons/solid/category/arrows/Bold';
```

#### Direct Component Import

Import individual components directly:

```tsx
import { House } from '@solar-icons/solid/category/building/Bold/House';
```

#### Using IconBase

```tsx
import { IconBase } from '@solar-icons/solid/lib/IconBase';

function CustomIcon() {
    return (
        <IconBase size={24} color="red">
            <path d="M12 2L15.09 8.26..." fill="currentColor" />
        </IconBase>
    );
}
```

### Props

Icon components accept standard SVG attributes alongside these props:

- **`size`**: Width and height (e.g., `24`, `"1.5em"`, default: `"1em"`).
- **`color`**: Icon color (e.g., `"#000"`, `"currentColor"`, default: `"currentColor"`).
- **`mirrored`**: Flips the icon horizontally when `true` (default: `false`).
- **`alt`**: Accessibility title.

## License

- **Code**: MIT
- **Icons**: CC BY 4.0 by [480 Design](https://www.figma.com/community/file/1166831539721848736) (requires attribution)

---

For detailed documentation, visit [solar-icons.vercel.app](https://solar-icons.vercel.app).
