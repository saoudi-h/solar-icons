# @solar-icons/react-perf

The `@solar-icons/react-perf` package provides a highly optimized, performance-focused library of React components for the Solar icon set. This package is tailored for developers who prioritize reduced bundle sizes and efficient rendering by focusing on single-style imports and simplified SVG structures.

## Installation

Install the package using npm or yarn:

```bash
npm install @solar-icons/react-perf
```

or

```bash
yarn add @solar-icons/react-perf
```

## Usage

To use an icon in your React application, import the specific icon directly for optimal performance:

```jsx
import { ArrowUpBold, ArrowUpLinear } from '@solar-icons/react-perf';

function App() {
  return (
    <div>
      <ArrowUpBold size={24} color="#000" />
      <ArrowUpLinear size={32} color="blue" />
    </div>
  );
}
```

### Importing by Style

For more modular imports, you can import icons by style:

```jsx
import { ArrowUp } from '@solar-icons/react-perf/linear';
import { ArrowDown } from '@solar-icons/react-perf/bold';

function App() {
  return (
    <div>
      <ArrowUp size={24} />
      <ArrowDown size={32} />
    </div>
  );
}
```

## Key Features

- **Performance-Oriented**: Each icon is packaged individually, ensuring that only the required assets are included in the final bundle.
- **Single-Style Icons**: Icons are separated by style (e.g., `Bold`, `Linear`), enabling more precise imports.
- **Lightweight SVGs**: Each icon is optimized for minimal SVG size to reduce load times.

### Properties

Each icon component supports the following properties:

- **`size`**: Defines the size of the icon (e.g., `24`, `"1.5em"`).
- **`color`**: Sets the color of the icon (e.g., `"#000"`, `"currentColor"`).
- **`mirrored`**: Flips the icon horizontally when set to `true`.


## Advanced Usage

### Custom Styling

Customize icons using standard React properties or additional CSS classes:

```jsx
import { ArrowUpBold } from '@solar-icons/react-perf';

function CustomIcon() {
  return <ArrowUpBold size="48" className="custom-class" />;
}
```

## Performance Benefits

Unlike the versatile `@solar-icons/react` package, `@solar-icons/react-perf` focuses solely on direct imports for enhanced performance and reduced overhead. This package avoids using a provider or dual SSR/CSR support to ensure lightweight integration.

## Contributing

Contributions to further optimize and expand the `@solar-icons/react-perf` package are welcome. If you wish to contribute, please follow our [contribution guidelines](../CONTRIBUTING.md).

## License

The `@solar-icons/react-perf` code and library are licensed under the [MIT License](./LICENSE). The Solar icon pack itself is licensed under **CC BY 4.0** by **480 Design**, which requires attribution for any use. For more information and to view the original icon set, visit [480 Design's Figma page](https://www.figma.com/community/file/1166831539721848736).

## Acknowledgements

Special thanks to **480 Design** for creating the original Solar icon pack. Additional appreciation goes to **Phosphor Icons** and **Lucide Icons** for their inspiration in shaping the design and approach of the Solar icon packages.

---

For more details on other packages and usage examples, refer to the [project's main documentation](../README.md).