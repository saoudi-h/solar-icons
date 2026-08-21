# @solar-icons/nuxt

Nuxt module for Solar Icons. This package provides 7,608 SVG icons across 6 styles (Bold, Broken, Linear, Outline, Bold Duotone, Line Duotone), optimized for Nuxt applications.

## Features

- **7,608 SVGs:** 1,268 unique icons in 6 styles. Designed by 480 Design.
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

The module auto-imports icon components with a `Solar` prefix. `SolarHomeIcon` and `SolarHomeBoldIcon` come from the main barrel; `SolarHomeIcon` from `@solar-icons/vue/dynamic` is the runtime-switchable variant.

```vue
<template>
  <div>
    <SolarHomeBoldIcon />
    <SolarLoginLinearIcon color="#3b82f6" :size="32" :strokeWidth="2" />
  </div>
</template>
```

### Module Options

Configure in your `nuxt.config.ts`:

```ts
// nuxt.config.ts
export default defineNuxtConfig({
  modules: ['@solar-icons/nuxt'],
  solarIcons: {
    namePrefix: 'Solar',
    autoImport: true,
    provider: true,
    color: 'currentColor',
    size: 24,
    strokeWidth: 1.5,
    secondaryColor: 'currentColor',
    secondaryOpacity: 0.5,
  }
})
```

- `namePrefix`: prefix for auto-imported icon components (default `Solar`).
- `autoImport`: register icon components and `SolarProvider`/`useSolar` as auto-imports (default `true`).
- `provider`: inject a global provider (default `true`). When enabled, the module provides a global `SolarState`, writes the styling defaults as `--solar-*` CSS variables on `document.body` (client side), and `useSolar()` works in any component.
- `color`, `size`, `strokeWidth`, `secondaryColor`, `secondaryOpacity`: global icon defaults, applied when `provider: true` (only the options you set override the defaults above).

When `provider: false`, the styling options are ignored. Wrap `app.vue` in `<SolarProvider>` yourself, or call `createSolarIcons` from a Nuxt plugin.

## Documentation

For installation guides, API reference, and a searchable icon catalog, visit the [Nuxt Documentation](https://solar-icons.vercel.app/docs/v2/packages/nuxt).

## License

MIT License. Icons by 480 Design (CC BY 4.0).
