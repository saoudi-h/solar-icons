# @solar-icons/nuxt

The `@solar-icons/nuxt` package provides a seamless Nuxt module for integrating Solar icons into your Nuxt 3+ applications. This module acts as a specialized wrapper around `@solar-icons/vue`, offering auto-import capabilities, global configuration, and optimized performance specifically designed for the Nuxt ecosystem.

## Installation

Install the package using npm, pnpm or yarn:

```bash
nuxi module add @solar-icons/nuxt
```

> **Note:** The `nuxi module add` command automatically registers the module in your `nuxt.config.ts`. However, if you're using npm, yarn, or pnpm directly, you'll need to manually include `@solar-icons/nuxt` in your Nuxt configuration file.

## Configuration

```js
// nuxt.config.ts
export default defineNuxtConfig({
  modules: ['@solar-icons/nuxt'],
  solarIcons: {
    // Prefix for auto-imported components (default: 'Solar')
    namePrefix: 'Solar',
    // Auto-import all icons as components (default: true)
    autoImport: true,
    // Inject global provider automatically (default: true)
    provider: true,
    // Default icon properties
    color: 'currentColor',
    size: 24,
    weight: 'Linear',
    mirrored: false,
  },
})
```

## Usage

### Auto-imported Icons

With auto-import enabled (default), you can use any Solar icon directly in your templates without manual imports:

```vue
<template>
  <div>
    <SolarArrowUp :size="24" weight="Outline" :mirrored="true" />
    <SolarArrowsArrowDown :size="32" weight="BoldDuotone" />
    <SolarArrowsAltArrowLeft color="#fff" class="bg-black" weight="Bold" />
  </div>
</template>
```

### Manual Import via Aliases

For more control, you can manually import icons using the provided aliases:

```vue
<template>
  <div>
    <ArrowUp :size="24" weight="Outline" />
    <solar.Arrows.ArrowDown :size="32" weight="BoldDuotone" />
    <Arrows.AltArrowLeft color="#fff" weight="Bold" />
  </div>
</template>

<script setup>
import { ArrowUp } from '#solar-icons'
import * as solar from '#solar-icons/category'
import { Arrows } from '#solar-icons/category'
import { SolarProvider } from '#solar-icons/lib'
</script>
```

### Global Configuration with SolarProvider

The module automatically provides a global configuration context. You can override these defaults using the `SolarProvider` component:

```vue
<template>
  <SolarProvider :size="32" color="purple" weight="Linear">
    <YourComponents />
  </SolarProvider>
</template>

<script setup>
import { SolarProvider } from '#solar-icons/lib'
</script>
```

### Using Composition API

Access and modify icon configurations using the Composition API:

```vue
<template>
  <div>
    <ArrowUp :size="iconSize" weight="Outline" />
    <button @click="increaseSize">Increase Size</button>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import { ArrowUp, useSolar } from '#solar-icons/lib'

const { config, setSize } = useSolar()
const iconSize = ref(24)

const increaseSize = () => {
  const newSize = parseInt(iconSize.value) + 4
  iconSize.value = newSize
  setSize(newSize)
}
</script>
```

## Configuration Options

The module offers the following configuration options in your `nuxt.config.ts`:

| Option | Type | Default | Description |
|--------|------|---------|-------------|
| `namePrefix` | string | `'Solar'` | Prefix for auto-imported components |
| `autoImport` | boolean | `true` | Auto-import all icons as components |
| `provider` | boolean | `true` | Inject global provider automatically |
| `color` | string | `'currentColor'` | Default icon color |
| `size` | number \| string | `24` | Default icon size |
| `weight` | string | `'Linear'` | Default icon style |
| `mirrored` | boolean | `false` | Default horizontal flip state |

## Available Aliases

The module provides these import aliases for convenience:
- `#solar-icons` - Exports all icons and components from `@solar-icons/vue`
- `#solar-icons/lib` - Exports library utilities like `SolarProvider`, `useSolar`
- `#solar-icons/category` - Exports categorized icon collections

## Compatibility

This module is compatible with:
- Nuxt 3.0.0 and higher
- Node.js 18.0.0 and higher

## License

This library is licensed under the [MIT License](./LICENSE), making it free for both personal and commercial use. However, the Solar icon pack is licensed under **CC BY 4.0** by **480 Design**, which allows commercial use with attribution. Please visit [480 Design's Figma page](https://www.figma.com/community/file/1166831539721848736) to explore the original icon set or see the [LICENSE-THIRD-PARTY](./LICENSE-THIRD-PARTY) file.

## Acknowledgements

Special thanks to **480 Design** for creating the original Solar icon pack. Additional appreciation goes to **Phosphor Icons** and **Lucide Icons** for their inspiration in shaping the structure and approach of the `@solar-icons` packages.

---
For detailed documentation and examples, refer to the [project's main documentation](https://solar-icons.vercel.app/docs/packages/nuxt).