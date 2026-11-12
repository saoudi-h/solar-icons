# AGENT: packages/vue/src/lib

Scope: Vue runtime primitives (`IconBase.vue`, `SolarProvider.vue`, `useSolar.ts`, `context-key.ts`, `SolarIconsPlugin`, `dynamic-icon.vue`).

- **`IconBase.vue`:** Cannot be imported directly by users (generated `.ts` files wrap it with `h()`). Emits `solar` + `solar-{iconName}`, CSS vars via `??`, `secondaryColor`/`secondaryOpacity` props, `aria-hidden="true"` by default, merges user `style` via `v-bind="$attrs"`.
- **`SolarProvider.vue` & `useSolar.ts`:** Share `SOLAR_CONTEXT_KEY = Symbol('solar')` from `context-key.ts` (`<script setup>` cannot export ES bindings). `useSolar()` throws outside `<SolarProvider>` or without `SolarIconsPlugin`. `mirrored` is removed; `secondaryColor`/`secondaryOpacity` replace `duotone*`.
- **`SolarIconsPlugin`:** Calls `createSolarIcons(options)` + `app.provide(SOLAR_CONTEXT_KEY, state)` (SSR-safe) and `applySolarCssVariables(state)`, watching refs to write `--solar-*` on `document.body` client-side (`typeof document === 'undefined'` guard). Icons never read context directly (`IconBase.vue` uses props or CSS vars). Body vars are client-only (SSR falls back to defaults until hydration); `<SolarProvider>` inline `:style` is SSR-exact and overrides body vars within its subtree.
- **Nuxt alignment:** `createSolarIcons` and `provideSolarIconsContextInApp` are pure; `@solar-icons/nuxt` calls them and inlines the same var-watch logic (`packages/nuxt/src/runtime/plugin.ts:19-53` is canonical).
