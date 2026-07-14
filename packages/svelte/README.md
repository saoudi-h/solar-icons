# @solar-icons/svelte

Svelte components for Solar Icons. This package provides 7,476 SVG icons across 6 styles (Bold, Broken, Linear, Outline, Bold Duotone, Line Duotone), optimized for Svelte applications.

## Features

- **7,476 SVGs:** 1,246 unique icons in 6 styles. Designed by 480 Design.
- **Tree-shakeable:** Import only the icons you use.
- **Global configuration:** Set defaults for size, color, and stroke width using `<SolarProvider>`.
- **Customizable:** Override size, color, and stroke width per icon via props or CSS variables.
- **Duotone support:** Secondary color controls for `bold-duotone` and `line-duotone` styles.
- **TypeScript:** Typed components and props.

## Install

```sh
npm install @solar-icons/svelte
```

## Usage

```svelte
<script>
    import { HomeIcon, LoginIcon } from '@solar-icons/svelte/linear';
</script>

<div>
    <HomeIcon />
    <LoginIcon color="#3b82f6" size={32} strokeWidth={2} />
</div>
```

### Global Configuration (Provider)

Wrap your layout in `<SolarProvider>` to set default properties:

```svelte
<script>
    import { SolarProvider } from '@solar-icons/svelte';
    import { HomeIcon } from '@solar-icons/svelte/linear';
</script>

<SolarProvider size={24} color="currentColor" strokeWidth={1.5}>
    <HomeIcon />
</SolarProvider>
```

## Documentation

For installation guides, API reference, and a searchable icon catalog, visit the [Svelte Documentation](https://solar-icons.vercel.app/docs/v2/frameworks/svelte).

## License

MIT License. Icons by 480 Design (CC BY 4.0).
