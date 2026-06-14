# @solar-icons/nuxt

Nuxt 3+ module for Solar Icons. Supports auto-import and global configuration.

## Installation

```bash
nuxi module add @solar-icons/nuxt
```

## Configuration

Configure options in `nuxt.config.ts`:

```js
// nuxt.config.ts
export default defineNuxtConfig({
    modules: ['@solar-icons/nuxt'],
    solarIcons: {
        namePrefix: 'Solar',  // Prefix for auto-imported components (default: 'Solar')
        autoImport: true,     // Auto-import all icons (default: true)
        provider: true,       // Inject global provider context (default: true)
        color: 'currentColor',
        size: 24,
        weight: 'Linear',
        mirrored: false,
    },
})
```

## Usage

### Auto-imported Components

With auto-import enabled, render icons directly using their prefixed names (default: `Solar` + Category + IconName):

```vue
<template>
    <div>
        <SolarArrowUp :size="24" weight="Outline" :mirrored="true" />
        <SolarArrowsArrowDown :size="32" weight="BoldDuotone" />
        <SolarArrowsAltArrowLeft color="#fff" class="bg-black" weight="Bold" />
    </div>
</template>
```

### Manual Imports

You can also import manually using path aliases:

```vue
<template>
    <div>
        <ArrowUp :size="24" weight="Outline" />
        <solar.Arrows.ArrowDown :size="32" weight="BoldDuotone" />
    </div>
</template>

<script setup>
import { ArrowUp } from '#solar-icons'
import * as solar from '#solar-icons/category'
</script>
```

Available aliases:
- `#solar-icons` - Exports Vue components.
- `#solar-icons/lib` - Exports utilities (e.g., `SolarProvider`, `useSolar`).
- `#solar-icons/category` - Exports categorized icon sets.

### Composition API

Access and modify settings dynamically:

```vue
<template>
    <div>
        <ArrowUp :size="iconSize" weight="Outline" />
        <button @click="increaseSize">Resize</button>
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

## License

- **Code**: MIT
- **Icons**: CC BY 4.0 by [480 Design](https://www.figma.com/community/file/1166831539721848736) (requires attribution)

---

For detailed documentation, visit [solar-icons.vercel.app](https://solar-icons.vercel.app).

