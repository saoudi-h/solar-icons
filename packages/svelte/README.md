# @solar-icons/svelte

The `@solar-icons/svelte` package provides Svelte 5 components for the Solar icon set. It's designed for performance with minimal bundle size and full tree-shaking support.

## Installation

Install the package using npm, pnpm or yarn:

```bash
npm install @solar-icons/svelte
```

or

```bash
pnpm add @solar-icons/svelte
```

## Usage

Import icons from a style and use them as Svelte components:

```svelte
<script>
    import { Home, Settings } from '@solar-icons/svelte/Bold';
</script>

<Home size={24} color="#000" />
<Settings size={32} color="blue" />
```

### Importing by Category

```svelte
<script>
    import { AltArrowLeft, ArrowUp } from '@solar-icons/svelte/category/arrows/Bold';
    import { Cart, Bag } from '@solar-icons/svelte/category/shopping/Linear';
</script>
```

### Direct Import (Optimal Tree-Shaking)

```svelte
<script>
    import Home from '@solar-icons/svelte/category/buildings/Bold/Home.svelte';
</script>
```

## Key Features

- **Svelte 5 Ready**: Built with Svelte 5 runes for optimal performance.
- **Tree-Shakable**: Only the icons you import are included in your bundle.
- **Minimal Size**: Each icon component is ~360 bytes.
- **TypeScript Ready**: Full TypeScript support with proper types.
- **Multiple Import Patterns**: Import by style, by category, or individual icons.

### Properties

Each icon component supports the following properties:

- **`size`**: Defines the size of the icon (e.g., `24`, `"1.5em"`).
- **`color`**: Sets the color of the icon (e.g., `"#000"`, `"currentColor"`).
- **`mirrored`**: Flips the icon horizontally when set to `true`.
- **`alt`**: Provides an accessible title for the icon.

## Available Styles

- `Bold` - Filled icons
- `Linear` - Stroke-based icons
- `Outline` - Outlined icons
- `BoldDuotone` - Two-tone filled icons
- `LineDuotone` - Two-tone stroke icons
- `Broken` - Broken line style icons

## Contributing

Contributions to further optimize and expand the `@solar-icons/svelte` package are welcome. If you wish to contribute, please follow our [contribution guidelines](../CONTRIBUTING.md).

## License

The `@solar-icons/svelte` code and library are licensed under the [MIT License](./LICENSE). The Solar icon pack itself is licensed under **CC BY 4.0** by **480 Design**, which requires attribution for any use. For more information and to view the original icon set, visit [480 Design's Figma page](https://www.figma.com/community/file/1166831539721848736).

## Acknowledgements

Special thanks to **480 Design** for creating the original Solar icon pack. Additional appreciation goes to **Phosphor Icons** and **Lucide Icons** for their inspiration in shaping the design and approach of the Solar icon packages.

---

For more details on other packages and usage examples, refer to the [project's main documentation](../README.md).
