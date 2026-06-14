# @solar-icons/react

Solar Icons for React. Supports dynamic styles and global configuration context.

## Installation

```bash
npm install @solar-icons/react
```

## Usage

Import and render components:

```jsx
import { ArrowUp } from '@solar-icons/react'
import { Arrows } from '@solar-icons/react/category'

function App() {
    return (
        <>
            <ArrowUp size={24} weight="Outline" mirrored />
            <Arrows.AltArrowLeft color="#fff" className="bg-black" weight="Bold" />
        </>
    )
}
```

### Props

Icon components accept standard HTML SVG attributes alongside these props:

- **`size`**: Width and height (e.g., `24`, `"1.5em"`, default: `"1em"`).
- **`color`**: Icon color (e.g., `"#000"`, `"currentColor"`, default: `"currentColor"`).
- **`weight`**: Icon style variant (`"Bold"`, `"Linear"`, `"Outline"`, `"BoldDuotone"`, `"LineDuotone"`, or `"Broken"`, default: `"Linear"`).
- **`mirrored`**: Flips the icon horizontally when `true` (default: `false`).
- **`alt`**: Accessibility title.

## Advanced Usage

### Global Configuration

Set default styles globally using `SolarProvider`:

```jsx
import { SolarProvider } from '@solar-icons/react'

function App() {
    return (
        <SolarProvider value={{ size: '32', color: 'purple', weight: 'Linear' }}>
            <YourComponents />
        </SolarProvider>
    )
}
```

### Server-Side Rendering (SSR)

For Server Components in environments like the Next.js App Router, import from `/ssr`:

```jsx
import { ArrowUp } from '@solar-icons/react/ssr'
import { Arrows } from '@solar-icons/react/ssr/category'

function App() {
    return (
        <>
            <ArrowUp size={24} weight="Outline" />
            <Arrows.AltArrowLeft color="#fff" className="bg-black" weight="Bold" />
        </>
    )
}
```

## License

- **Code**: MIT
- **Icons**: CC BY 4.0 by [480 Design](https://www.figma.com/community/file/1166831539721848736) (requires attribution)

---

For detailed documentation, visit [solar-icons.vercel.app](https://solar-icons.vercel.app).

