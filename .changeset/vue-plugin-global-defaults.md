---
'@solar-icons/vue': patch
---

SolarIconsPlugin now applies the configured defaults as `--solar-*` CSS variables on `document.body` (client side), so icons pick up the plugin config without a `<SolarProvider>`. `useSolar()` works in any component after installing the plugin, and calling `setColor`/`setSize` updates every icon.
