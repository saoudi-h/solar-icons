# @solar-icons/solid-v2

SolidJS 2 components for Solar Icons. This package provides 10,152 SVG icons across 6 styles (Bold, Broken, Linear, Outline, Bold Duotone, Line Duotone), built for Solid 2.

## Which package should I use?

| Your app uses | Install                 |
| ------------- | ----------------------- |
| Solid 1       | `@solar-icons/solid`    |
| Solid 2       | `@solar-icons/solid-v2` |

The `v2` in the name is the Solid major version. It is not the Solar Icons major version, which both packages share.

Solid 1 and Solid 2 changed their compiler output, their DOM and server runtimes (`solid-js/web` became `@solidjs/web`), their reactivity rules and their JSX types. A single published build cannot serve both without trade-offs in SSR, hydration and typing, so the two lines are kept apart for the time being. This is a transition measure for Solid, not a pattern we plan to repeat for other frameworks. We will look again at a single package once the Solid 2 ecosystem is mature, and `@solar-icons/solid` remains the package for Solid 1 and is not deprecated.

## Features

- **10,152 SVGs:** 1,692 unique icons in 6 styles. Designed by 480 Design.
- **Tree-shakeable:** Import only the icons you use.
- **Global configuration:** Set defaults for size, color, and stroke width using `<SolarProvider>`.
- **Customizable:** Override size, color, and stroke width per icon via props or CSS variables.
- **Duotone support:** Secondary color controls for `bold-duotone` and `line-duotone` styles.
- **Dynamic icons:** Switch the style at runtime with `weight`.
- **SSR and hydration:** Server and DOM builds, selected through package conditions.
- **TypeScript:** Typed components and props.

## Install

```sh
npm install @solar-icons/solid-v2 solid-js @solidjs/web
```

Peer dependencies: `solid-js` and `@solidjs/web`, both `^2.0.0`. Solid 1 is rejected by the install, on purpose.

Your build must compile JSX for Solid 2: use `@solidjs/vite-plugin` (3.x) or `unplugin-solid` 3, and set `"jsxImportSource": "@solidjs/web"` in `tsconfig.json`.

## Usage

```tsx
import { HomeIcon, LoginIcon } from '@solar-icons/solid-v2/linear'

function App() {
    return (
        <div>
            <HomeIcon />
            <LoginIcon color="#3b82f6" size={32} strokeWidth={2} />
        </div>
    )
}
```

### Global Configuration (Provider)

Wrap your application in `<SolarProvider>` to set default properties:

```tsx
import { SolarProvider } from '@solar-icons/solid-v2'
import { HomeIcon } from '@solar-icons/solid-v2/linear'

function App() {
    return (
        <SolarProvider size={24} color="currentColor" strokeWidth={1.5}>
            <HomeIcon />
        </SolarProvider>
    )
}
```

### Dynamic icons

```tsx
import { HeartIcon } from '@solar-icons/solid-v2/dynamic'
import { createSignal } from 'solid-js'

function App() {
    const [weight, setWeight] = createSignal<'Linear' | 'Bold'>('Linear')

    return <HeartIcon weight={weight()} onClick={() => setWeight('Bold')} />
}
```

## Differences with `@solar-icons/solid`

The import paths, component names, props, CSS variables and CSS classes are the same. These points follow Solid 2 and differ from the Solid 1 package:

| Topic              | `@solar-icons/solid` (Solid 1) | `@solar-icons/solid-v2` (Solid 2)                                        |
| ------------------ | ------------------------------ | ------------------------------------------------------------------------ |
| Peer dependency    | `solid-js` `^1.6.0`            | `solid-js` and `@solidjs/web`, `^2.0.0`                                  |
| JSX types          | `JSX` from `solid-js`          | `JSX` from `@solidjs/web`                                                |
| `class`            | String                         | String, array or object (Solid 2 class values)                           |
| `useSolar` setters | Apply right away               | Batched like any Solid 2 signal write: the DOM updates on the next flush |
| No provider        | `useSolar()` throws            | `useSolar()` throws Solid's context error                                |
| Version            | Stable                         | Stable                                                                   |

## Documentation

For the API reference and a searchable icon catalog, visit the [Solid Documentation](https://solar-icons.dev/docs/v2/packages/solid).

## Versions this package is tested with

`solid-js` and `@solidjs/web` 2.0.0, `@solidjs/vite-plugin` 3.0.1, `unplugin-solid` 3.0.0.

## License

MIT License. Icons by 480 Design (CC BY 4.0).
