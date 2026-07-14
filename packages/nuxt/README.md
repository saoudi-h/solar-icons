# @solar-icons/nuxt

Nuxt module for Solar Icons. This package provides 7,476 SVG icons across 6 styles (Bold, Broken, Linear, Outline, Bold Duotone, Line Duotone), optimized for Nuxt applications.

## Features

- **7,476 SVGs:** 1,246 unique icons in 6 styles. Designed by 480 Design.
- **Tree-shakeable:** Import only the icons you use.
- **Auto-injected configuration:** The module injects CSS variables globally for consistent sizing and coloring.
- **Customizable:** Override size, color, and stroke width per icon.
- **Duotone support:** Secondary color controls for `bold-duotone` and `line-duotone` styles.
- **TypeScript:** Typed components and props.

## Install

```sh
npm install @solar-icons/nuxt
```

## Usage

```ts
// nuxt.config.ts
export default defineNuxtConfig({
  modules: ['@solar-icons/nuxt']
})
```

```vue
<template>
  <div>
    <SolarHomeIcon />
    <SolarLoginIcon color="#3b82f6" :size="32" :strokeWidth="2" />
  </div>
</template>
```

### Global Configuration (Module Options)

Configure global defaults in your `nuxt.config.ts`:

```ts
// nuxt.config.ts
export default defineNuxtConfig({
  modules: ['@solar-icons/nuxt'],
  solarIcons: {
    size: 24,
    color: 'currentColor',
    strokeWidth: 1.5,
  }
})
```

## Documentation

For installation guides, API reference, and a searchable icon catalog, visit the [Nuxt Documentation](https://solar-icons.vercel.app/docs/v2/frameworks/nuxt).

## License

MIT License. Icons by 480 Design (CC BY 4.0).
