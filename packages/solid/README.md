# @solar-icons/solid

The `@solar-icons/solid` package provides a robust, flexible, and easy-to-use library of SolidJS components for the Solar icon set.

## Installation

Install the package using npm or yarn:

```bash
npm install @solar-icons/solid
```

or

```bash
yarn add @solar-icons/solid
```

## Usage

To use an icon in your SolidJS application, simply import it from the package:

```tsx
import { ArrowUp } from '@solar-icons/solid'
import { Arrows } from '@solar-icons/solid/category'

function App() {
    return (
        <>
            <ArrowUp size={24} weight="Outline" mirrored />
            <Arrows.AltArrowLeft color="#fff" weight="Bold" />
        </>
    )
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

```tsx
import { SolarProvider } from '@solar-icons/solid'

function App() {
    return (
        <SolarProvider color="purple" size="32" weight="Linear">
            <YourComponents />
        </SolarProvider>
    )
}
```

### Programmatic Configuration

You can also use the `createSolarIcons` and `useSolar` utilities for more control:

```tsx
import { createSolarIcons, useSolar } from '@solar-icons/solid'

function MyComponent() {
    const { config, setColor, setSize } = useSolar()
    // Read current config or update it programmatically
}
```

## Contributing

As an open-source project, contributions are welcome. However, please note that while the Solar project is maintained by a single developer, we encourage anyone interested to contribute through pull requests and issues.

## License

This library is licensed under the [MIT License](./LICENSE), making it free for both personal and commercial use. However, the Solar icon pack is licensed under **CC BY 4.0** by **480 Design**, which allows commercial use with attribution. Please visit [480 Design's Figma page](https://www.figma.com/community/file/1166831539721848736) to explore the original icon set or see the [LICENSE-THIRD-PARTY](./LICENSE-THIRD-PARTY) file.

## Acknowledgements

Special thanks to **480 Design** for creating the original Solar icon pack. Additional appreciation goes to **Phosphor Icons** and **Lucide Icons** for their inspiration in shaping the structure and approach of the `@solar-icons/solid` package.

---

For detailed documentation and examples, refer to the [project's main documentation](../README.md).
