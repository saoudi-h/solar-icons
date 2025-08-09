# @solar-icons/vue

The `@solar-icons/vue` package provides a robust, flexible, and easy-to-use library of Vue components for the Solar icon set. This package enables developers to seamlessly integrate Solar's multi-style icons into Vue applications, with special optimizations for Nuxt applications including auto-import capabilities.

## Installation

Install the package using npm, pnpm or yarn for Vue applications:

```bash
npm install @solar-icons/vue
```

For Nuxt applications:

```bash
nuxi add @solar-icons/vue
```

## Usage

### Basic Vue Usage

To use an icon in your Vue application, simply import it from the package:

```vue
<template>

    <div>
        <ArrowUp :size="24" weight="Outline" :mirrored="true" /> 
         
        <solar.Arrows.ArrowDown
            :size="32"
            weight="BoldDuotone" 
        />
        
        <Arrows.AltArrowLeft
            color="#fff"
            class="bg-black"
            weight="Bold" 
        />
    </div>

</template>

<script setup>
import { ArrowUp } from '@solar-icons/vue'
import solar from '@solar-icons/vue/category'
import { Arrows } from '@solar-icons/vue/category'
</script>
```

### Nuxt Usage

For Nuxt applications, the package provides a module with auto-import capabilities:

1. First, add the module to your Nuxt configuration:

```js
// nuxt.config.js
export default {
    modules: ['@solar-icons/vue/nuxt'],
    // Optional configuration
    solarIcons: {
        namePrefix: 'Solar', // Default prefix for auto-imported components
        autoImport: true, // Auto-import all icons as components
        provider: true, // Inject global provider automatically
        // Default icon props
        color: 'currentColor',
        size: '24',
        weight: 'Linear',
        mirrored: false,
    },
}
```

2. Then use icons directly in your templates without importing:

```vue
<template>

    <div>
         <SolarArrowUp :size="24" weight="Outline" :mirrored="true" /> <SolarArrowsArrowDown
            :size="32"
            weight="BoldDuotone" /> <SolarArrowsAltArrowLeft
            color="#fff"
            class="bg-black"
            weight="Bold" />
    </div>

</template>
```

## Properties

Each icon component supports the following properties:

- **`size`**: Defines the size of the icon (e.g., `24`, `"1.5em"`).
- **`color`**: Sets the color of the icon (e.g., `"#000"`, `"currentColor"`).
- **`weight`**: Specifies the icon style. Options include `"Bold"`, `"Linear"`, `"Outline"`, `"BoldDuotone"`, `"LineDuotone"`, and `"Broken"`.
- **`mirrored`**: Flips the icon horizontally when set to `true`.
- **`alt`**: Provides alternative text for accessibility.

## Advanced Usage

### Global Icon Configuration

To apply consistent styles across multiple icons, use the `SolarProvider` component to wrap your application:

```vue
<template>
     <SolarProvider :size="32" color="purple" weight="Linear"> <YourComponents /> </SolarProvider>
</template>

<script setup>
import { SolarProvider } from '@solar-icons/vue'
</script>
```

### Using the Vue Plugin

Alternatively, you can install the package as a Vue plugin:

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

### Using Composition API

You can also access and modify the icon configuration using the Composition API:

```vue
<template>

    <div>
         <ArrowUp :size="iconSize" weight="Outline" /> <button @click="increaseSize">
             Increase Size</button
        >
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

## Nuxt Module Configuration

The Nuxt module offers several configuration options:

```js
// nuxt.config.js
export default {
    modules: ['@solar-icons/vue/nuxt'],
    solarIcons: {
        // Prefix for auto-imported components (default: 'Solar')
        namePrefix: 'Icon',

        // Auto-import all icons as components (default: true)
        autoImport: true,

        // Inject global provider automatically (default: true)
        provider: true,

        // Default icon properties
        color: 'currentColor',
        size: '1.5em',
        weight: 'Bold',
        mirrored: false,
    },
}
```

## Contributing

As an open-source project, contributions are welcome. However, please note that while the Solar project is maintained by a single developer, we encourage anyone interested to contribute through pull requests and issues.

## License

This library is licensed under the [MIT License](./LICENSE), making it free for both personal and commercial use. However, the Solar icon pack is licensed under **CC BY 4.0** by **480 Design**, which allows commercial use with attribution. Please visit [480 Design's Figma page](https://www.figma.com/community/file/1166831539721848736) to explore the original icon set or see the [LICENSE-THIRD-PARTY](./LICENSE-THIRD-PARTY) file.

## Acknowledgements

Special thanks to **480 Design** for creating the original Solar icon pack. Additional appreciation goes to **Phosphor Icons** and **Lucide Icons** for their inspiration in shaping the structure and approach of the `@solar-icons` packages.

---

For detailed documentation and examples, refer to the [project's main documentation](https://solar-icons.vercel.app/docs/packages/vue).
