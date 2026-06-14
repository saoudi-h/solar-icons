# @solar-icons/svelte

Solar Icons for Svelte 5. Built with runes for optimal performance and minimal bundle size.

## Installation

```bash
npm install @solar-icons/svelte
```

## Usage

Import and render components:

```svelte
<script>
    import { Home, Settings } from '@solar-icons/svelte/Bold';
</script>

<Home size={24} color="#000" />
<Settings size={32} color="blue" />
```

### Import Patterns

#### Import by Style

Import multiple icons of the same style:

```svelte
<script>
    import { Home, Settings } from '@solar-icons/svelte/Bold';
    import { Home as HomeLinear } from '@solar-icons/svelte/Linear';
</script>
```

Available styles: `Bold`, `Linear`, `Outline`, `BoldDuotone`, `LineDuotone`, `Broken`.

#### Import by Category

Import categorized icons directly:

```svelte
<script>
    import { AltArrowLeft, ArrowUp } from '@solar-icons/svelte/category/arrows/Bold';
</script>
```

#### Direct Component Import

Import individual components directly:

```svelte
<script>
    import House from '@solar-icons/svelte/category/buildings/Bold/House.svelte';
</script>
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
