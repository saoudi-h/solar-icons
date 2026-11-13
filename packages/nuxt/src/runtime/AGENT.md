# AGENT: packages/nuxt/src/runtime

Scope: Nuxt runtime plugin (`plugin.ts`) and `SolarProviderWrapper.vue`.

- **`provider: true` (default):** `plugin.ts` creates Solar state from `runtimeConfig.public.solarIcons`, `provide`s it on the Nuxt app (SSR-safe global context), and watches state refs to write `--solar-*` CSS variables on `document.body` client-side (`useSolar()` works anywhere). `SolarProviderWrapper.vue` re-renders the Vue provider with runtime defaults.
- **`provider: false`:** Registers plain `SolarProvider` from `@solar-icons/vue/lib` (scoped `provide`/`inject`, no global context); styling module options warn and are ignored. Consumers must wrap `app.vue` or call `createSolarIcons` in a Nuxt plugin.
- **Default merge:** `plugin.ts` and `SolarProviderWrapper.vue` spread runtime config over module defaults (`currentColor` / `24` / `1.5` / `currentColor` / `0.5`) rather than `||`, matching `applySolarCssVariables` in `packages/vue/src/lib/useSolar.ts`.
