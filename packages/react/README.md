# @solar-icons/react

The `@solar-icons/react` package provides a robust, flexible, and easy-to-use library of React components for the Solar icon set. This package enables developers to seamlessly integrate Solar's multi-style icons into React applications, supporting both client-side rendering (CSR) and server-side rendering (SSR).

## Installation

Install the package using npm or yarn:

```bash
npm install @solar-icons/react
```

or

```bash
yarn add @solar-icons/react
```

## Usage

To use an icon in your React application, simply import it from the package:

```jsx
import solar, { ArrowUp } from '@solar-icons/react';
import { Arrows } from '@solar-icons/react/category';

function App() {
  return (
    <>
        <ArrowUp size={24} weight="Outline" mirrored />
        <solar.Arrows.ArrowDown size={32} weight="BoldDuotone"  />
        <Arrows.AltArrowLeft color="#fff" className="bg-black" weight="Bold" />
    </>
  );
}
```

### Properties

Each icon component supports the following properties:

- **`size`**: Defines the size of the icon (e.g., `24`, `"1.5em"`).
- **`color`**: Sets the color of the icon (e.g., `"#000"`, `"currentColor"`).
- **`weight`**: Specifies the icon style. Options include `"Bold"`, `"Linear"`, `"Outline"`, `"BoldDuotone"`, `"LineDuotone"`, and `"Broken"`.
- **`mirrored`**: Flips the icon horizontally when set to `true`.

## Advanced Usage

### Global Icon Configuration

To apply consistent styles across multiple icons, use the `SolarProvider` component to wrap your application:

```jsx
import { SolarProvider } from '@solar-icons/react';

function App() {
  return (
    <SolarProvider value={{ size: '32', color: 'purple', weight: 'Linear' }}>
      <YourComponents />
    </SolarProvider>
  );
}
```

### Server-Side Rendering (SSR)

The `@solar-icons/react` package is optimized for SSR, ensuring that icons render correctly on both the client and server sides:

```jsx
import solar, { ArrowUp } from '@solar-icons/react/ssr';
import { Arrows } from '@solar-icons/react/ssr/category';

function App() {
  return (
    <>
        <ArrowUp size={24} weight="Outline" />
        <solar.Arrows.ArrowDown size={32} weight="BoldDuotone"  />
        <Arrows.AltArrowLeft color="#fff" className="bg-black" weight="Bold" />
    </>
  );
}
```



## Contributing

As an open-source project, contributions are welcome. However, please note that while the Solar project is maintained by a single developer, we encourage anyone interested to contribute through pull requests and issues.

## License

This libraries are licensed under the [MIT License](./LICENSE), making it free for both personal and commercial use. However, the Solar icon pack is licensed under **CC BY 4.0** by **480 Design**, which allows commercial use with attribution. Please visit [480 Design's Figma page](https://www.figma.com/community/file/1166831539721848736) to explore the original icon set or see the [LICENSE-THIRD-PARTY](./LICENSE-THIRD-PARTY) file.

## Acknowledgements

Special thanks to **480 Design** for creating the original Solar icon pack. Additional appreciation goes to **Phosphor Icons** and **Lucide Icons** for their inspiration in shaping the structure and approach of the `@solar-icons/react` package.

---

For detailed documentation and examples, refer to the [project's main documentation](../README.md).

