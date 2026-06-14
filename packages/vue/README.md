# @solar-icons/vue

Solar Icons for Vue 3. Supports dynamic styles and global configuration.

## Installation

```bash
npm install @solar-icons/vue
```

## Usage

Import and render components:

```vue
<template>
    <div>
        <ArrowUp :size="24" weight="Outline" :mirrored="true" />
        <Arrows.AltArrowLeft color="#fff" class="bg-black" weight="Bold" />
    </div>
</template>

<script setup>
import { ArrowUp } from '@solar-icons/vue'
import { Arrows } from '@solar-icons/vue/category'
</script>
```

### Props

Icon components accept standard HTML SVG attributes alongside these props:

- **`size`**: Width and height (e.g., `24`, `"1.5em"`, default: `24`).
- **`color`**: Icon color (e.g., `"#000"`, `"currentColor"`, default: `"currentColor"`).
- **`weight`**: Icon style variant (`"Bold"`, `"Linear"`, `"Outline"`, `"BoldDuotone"`, `"LineDuotone"`, or `"Broken"`, default: `"Linear"`).
- **`mirrored`**: Flips the icon horizontally when `true` (default: `false`).
- **`alt`**: Accessibility title.

## Advanced Usage

### Global Configuration

Set default styles globally using `SolarProvider`:

```vue
<template>
    <SolarProvider :size="32" color="purple" weight="Linear">
        <YourComponents />
    </SolarProvider>
</template>

<script setup>
import { SolarProvider } from '@solar-icons/vue'
</script>
```

### Vue Plugin

Alternatively, configure defaults globally via the Vue plugin:

```js
import { createApp } from 'vue'
import { SolarIconsPlugin } from '@solar-icons/vue'

const app = createApp(App)
app.use(SolarIconsPlugin, {
    color: 'currentColor',
    size: '24',
    weight: 'Linear',
    mirrored: false,
})
app.mount('#app')
```

### Composition API

Access and modify settings dynamically using `useSolar`:

```vue
<template>
    <div>
        <ArrowUp :size="iconSize" weight="Outline" />
        <button @click="increaseSize">Resize</button>
    </div>
</template>

<script setup>
import { ref } from 'vue'
import { ArrowUp, useSolar } from '@solar-icons/vue'

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
