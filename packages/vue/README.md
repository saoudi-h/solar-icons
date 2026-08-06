# @solar-icons/vue

Vue components for Solar Icons. This package provides 7,476 SVG icons across 6 styles (Bold, Broken, Linear, Outline, Bold Duotone, Line Duotone), optimized for Vue applications.

## Features

- **7,476 SVGs:** 1,246 unique icons in 6 styles. Designed by 480 Design.
- **Tree-shakeable:** Import only the icons you use.
- **Global configuration:** Set defaults for size, color, and stroke width using `<SolarProvider>`.
- **Customizable:** Override size, color, and stroke width per icon via props or CSS variables.
- **Duotone support:** Secondary color controls for `bold-duotone` and `line-duotone` styles.
- **TypeScript:** Typed components and props.

## Install

```sh
npm install @solar-icons/vue
```

## Usage

```vue
<script setup>
import { HomeIcon, LoginIcon } from '@solar-icons/vue/linear'
</script>

<template>
    <div>
        <HomeIcon />
        <LoginIcon color="#3b82f6" :size="32" :strokeWidth="2" />
    </div>
</template>
```

### Global Configuration (Provider)

Wrap your application root in `<SolarProvider>` to set default properties:

```vue
<script setup>
import { SolarProvider } from '@solar-icons/vue'
import { HomeIcon } from '@solar-icons/vue/linear'
</script>

<template>
    <SolarProvider :size="24" color="currentColor" :strokeWidth="1.5">
        <HomeIcon />
    </SolarProvider>
</template>
```

### Global Configuration (Plugin)

The plugin sets the same defaults app-wide without a provider wrapper. It writes the five CSS variables on `document.body` and makes `useSolar()` available in every component. The variables are applied client-side.

```ts
import { createApp } from 'vue'
import { SolarIconsPlugin } from '@solar-icons/vue/lib'

const app = createApp(App)
app.use(SolarIconsPlugin, {
    color: '#ef4444',
    size: 24,
    strokeWidth: 1.5,
    secondaryColor: '#f59e0b',
    secondaryOpacity: 0.5,
})
app.mount('#app')
```

For server-rendered apps, prefer `<SolarProvider>` for an exact first paint.

## Documentation

For installation guides, API reference, and a searchable icon catalog, visit the [Vue Documentation](https://solar-icons.vercel.app/docs/v2/packages/vue).

## License

MIT License. Icons by 480 Design (CC BY 4.0).
