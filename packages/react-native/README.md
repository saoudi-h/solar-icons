# @solar-icons/react-native

Solar Icons for React Native — 1,246 icons across 6 styles, built on `react-native-svg`.

## Features

- 🎨 **1,246 Icons** across 37 categories
- 🎭 **6 Styles**: Bold, BoldDuotone, Broken, LineDuotone, Linear, Outline
- 🎨 **Duotone customization** — `secondaryColor` / `secondaryOpacity` per icon or via `<SolarProvider>`
- 🖊 **Adjustable stroke width** — per icon or via `<SolarProvider>`
- 📦 **Tree-shakeable** — one `.tsx` per icon per style
- 🔧 **Full TypeScript** — `Icon`, `IconProps`, `IconStyle`
- ⚡ **ESM-only**
- 📱 **iOS & Android** via `react-native-svg`

## Installation

```bash
npm install @solar-icons/react-native react-native-svg
# or
yarn add @solar-icons/react-native react-native-svg
# or
pnpm add @solar-icons/react-native react-native-svg
```

> **Note**: `react-native-svg` is a peer dependency and must be installed separately.

## Usage

### Per-style import (recommended)

```tsx
import { HomeIcon, UserIcon, SettingsIcon } from '@solar-icons/react-native/bold'
import { HeartIcon, StarIcon } from '@solar-icons/react-native/linear'

function App() {
    return (
        <View style={{ flexDirection: 'row', gap: 8 }}>
            <HomeIcon size={24} color="#000" />
            <UserIcon size={32} color="#ff0000" />
            <HeartIcon size={40} color="#22c55e" />
        </View>
    )
}
```

### Available styles

```tsx
import { IconName } from '@solar-icons/react-native/bold'
import { IconName } from '@solar-icons/react-native/bold-duotone'
import { IconName } from '@solar-icons/react-native/broken'
import { IconName } from '@solar-icons/react-native/line-duotone'
import { IconName } from '@solar-icons/react-native/linear'
import { IconName } from '@solar-icons/react-native/outline'
```

### With SolarProvider (global defaults)

```tsx
import { SolarProvider } from '@solar-icons/react-native'
import { HomeIcon, StarIcon } from '@solar-icons/react-native/bold'

function App() {
    return (
        <SolarProvider color="#3b82f6" size={32} strokeWidth={2} secondaryColor="#ef4444">
            <HomeIcon /> {/* blue, 32px, stroke 2 */}
            <StarIcon color="#22c55e" /> {/* overrides to green */}
        </SolarProvider>
    )
}
```

### Using useSolar

```tsx
import { SolarProvider, useSolar } from '@solar-icons/react-native'

function Controls() {
    const { color, setColor, size, setSize, secondaryColor, setSecondaryColor } = useSolar()

    return (
        <View>
            <TouchableOpacity onPress={() => setColor('#ef4444')}>
                <Text>Red theme</Text>
            </TouchableOpacity>
            <TouchableOpacity onPress={() => setSecondaryColor('#f59e0b')}>
                <Text>Amber duotone accent</Text>
            </TouchableOpacity>
        </View>
    )
}
```

### Duotone icons

Duotone icons (BoldDuotone, LineDuotone) use `secondaryColor` for the accent layer. Set it per icon or via `<SolarProvider>`:

```tsx
import { HomeBoldDuotoneIcon } from '@solar-icons/react-native/bold-duotone'

;<HomeBoldDuotoneIcon size={48} color="#3b82f6" secondaryColor="#f59e0b" secondaryOpacity={0.4} />
```

## Props

| Prop               | Type               | Default               | Description                                             |
| ------------------ | ------------------ | --------------------- | ------------------------------------------------------- |
| `size`             | `number`           | `24`                  | Icon width and height in pixels                         |
| `color`            | `string`           | `'currentColor'`      | Icon primary color                                      |
| `strokeWidth`      | `number \| string` | `1.5`                 | Stroke width (Linear, Broken, LineDuotone, Bold styles) |
| `secondaryColor`   | `string`           | falls back to `color` | Duotone accent layer color                              |
| `secondaryOpacity` | `number`           | `0.5`                 | Duotone accent layer opacity                            |

All icons also accept any prop from `react-native-svg`'s `SvgProps` (except `width` and `height`, which are derived from `size`).

## SolarProvider props

| Prop               | Type        | Default | Description                         |
| ------------------ | ----------- | ------- | ----------------------------------- |
| `color`            | `string`    | —       | Default primary color for all icons |
| `size`             | `number`    | —       | Default size for all icons          |
| `strokeWidth`      | `number`    | —       | Default stroke width                |
| `secondaryColor`   | `string`    | —       | Default duotone accent color        |
| `secondaryOpacity` | `number`    | —       | Default duotone accent opacity      |
| `children`         | `ReactNode` | —       | Wrapped content                     |

## TypeScript

```tsx
import type { IconProps, Icon, IconStyle } from '@solar-icons/react-native'
import { HomeIcon } from '@solar-icons/react-native/bold'

// IconStyle enum
IconStyle.BOLD // 'Bold'
IconStyle.BOLD_DUOTONE // 'BoldDuotone'
IconStyle.BROKEN // 'Broken'
IconStyle.LINE_DUOTONE // 'LineDuotone'
IconStyle.LINEAR // 'Linear'
IconStyle.OUTLINE // 'Outline'
```

## Requirements

- React Native >= 0.72.0
- React >= 16.8
- `react-native-svg` >= 13.0.0

## License

MIT © [Saoudi Hakim](https://hakimsaoudi.dev)

## Related Packages

- [@solar-icons/react](https://www.npmjs.com/package/@solar-icons/react) — React (web), CSS-vars + provider
- [@solar-icons/vue](https://www.npmjs.com/package/@solar-icons/vue) — Vue 3
- [@solar-icons/nuxt](https://www.npmjs.com/package/@solar-icons/nuxt) — Nuxt module
- [@solar-icons/svelte](https://www.npmjs.com/package/@solar-icons/svelte) — Svelte 5
- [@solar-icons/solid](https://www.npmjs.com/package/@solar-icons/solid) — SolidJS
- [@solar-icons/angular](https://www.npmjs.com/package/@solar-icons/angular) — Angular 17+
