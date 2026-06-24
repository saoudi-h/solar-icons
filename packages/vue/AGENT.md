---
name: '@solar-icons/vue'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/vue

## 🧠 Role

`@solar-icons/vue@3.0.0`. Vue 3 distribution of Solar Icons — **classic mode** (unit-per-style). One component per icon, statically importable. Includes `<SolarProvider>` (CSS custom properties on wrapper div), `useSolar()` composable, and CSS classes (`solar`/`solar-{kebab}`).

## ⚙️ Conventions

- Vue 3.5+ (peer ≥ 3.0). Composition API.
- Build = `pnpm generate:assets && pnpm tsdown -l error && pnpm copy:licenses`.
- `scripts/generate-assets.ts` reads SVGs from `core/svgs/` and emits `.ts` files with `h()` calls.
- Generated components wrap `IconBase.vue` via `h(IconBase, { ...props, iconName }, { default: () => [...] })`.

## 🔧 CSS vars + classes + provider (V3-23)

- **`lib/IconBase.vue`**: CSS classes `solar` + `solar-{iconName}`, CSS vars via `??` pattern, `secondaryColor`/`secondaryOpacity` props, `aria-hidden="true"` by default, user `style` merged via `v-bind="$attrs"`.
- **`lib/SolarProvider.vue`**: Wrapper `<div>` with CSS custom properties on `:style`. Uses `provide(SOLAR_CONTEXT_KEY, solarRef)`. `solarRef` exposes `setProperty()` for DOM mutation.
- **`lib/useSolar.ts`**: Composable using `inject(SOLAR_CONTEXT_KEY)`. Returns `setColor`, `setSize`, `setStrokeWidth`, `setDuotoneColor`, `setDuotoneOpacity`.
- **`lib/context-key.ts`**: Shared `SOLAR_CONTEXT_KEY = Symbol('solar')` used by both SolarProvider and useSolar (cannot export from `<script setup>`).
- **`parser-hook.ts`**: Generates `h(IconBase, { ...attrs, ...props, iconName }, { default: () => [...h() calls...] })`.

## 📁 Key Directories

| Path                         | Description                                                                         |
| ---------------------------- | ----------------------------------------------------------------------------------- |
| `scripts/generate-assets.ts` | Reads from `core/svgs/`, produces functional components.                            |
| `src/lib/`                   | Hand-written helpers: IconBase.vue, SolarProvider.vue, useSolar.ts, context-key.ts. |
| `src/icons/`                 | Generated unit-per-style icon components.                                           |
| `dist/`                      | Build output.                                                                       |

## 🏗 Stack

- Vue 3.5, `unplugin-vue` for SFC handling, `tsdown` for bundling.
- Vitest + `@vue/test-utils` + `jsdom` for tests.
- `vue-tsc` for typecheck.

## ⚠️ Known Constraints

- **`@solar-icons/nuxt` depends on this package** (`workspace:*`).
- **`IconBase.vue` cannot be imported directly by users** — icons are generated as `.ts` files that wrap it via `h()`.
- **`SOLAR_CONTEXT_KEY` is in a separate `.ts` file** because `<script setup>` cannot contain ES module exports.
- **`tsdown` regression (DEBUG-01/02/03)**: same `exports: { bin: { ... } }` idiom as `@autonomos/cli` if a `bin` is ever added.

## V3 Propagation (2026-06-24)

- Directory structure is now flat (no categories). All icon components live directly under `src/icons/<style>/`.
- `displayName` removed from generated components.
- `mirrored` prop removed from `IconProps`.
- Dynamic exports added: `src/icons/dynamic/` with 1246 per-icon files and `DynamicIcon` component.
- `duotoneColor`/`duotoneOpacity` renamed to `secondaryColor`/`secondaryOpacity` in SolarProvider and useSolar.
