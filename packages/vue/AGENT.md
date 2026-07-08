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

## Dynamic icon generator (VUE-DYNAMIC-BROKEN, 2026-07-01)

- `lib/dynamic-icon.vue` requires a `styles: StyleComponents` prop (the map of `bold` / `bold-duotone` / `broken` / `linear` / `line-duotone` / `outline` → component). It picks the right one at runtime via `WEIGHT_MAP[weight]`.
- `scripts/generate-assets.ts:generateDynamicFile` emits `h(DynamicIcon, { ...attrs, ...props, styles: { bold: Bold, 'bold-duotone': BoldDuotone, ... } })` so the 6 style components are actually fed to `DynamicIcon`. Earlier (pre-`f9204fbc5` follow-up, fixed 2026-07-01) the generator built the 6 style imports but did not pass them as `styles`, so the dynamic icon rendered nothing.
- Canonical reference: React's `generateDynamicFile` in `packages/react/scripts/generate-assets.ts:115-167`.

## Icon export shape (VUE-NAMED-EXPORTS, 2026-07-01)

- All per-style and dynamic files use **named exports** (`export const XxxIcon = ...`), not default. Matches React/Solid/Svelte. Public API stays the same: barrel re-exports still expose `XxxIcon` as a named export.
- Per-style generator (`scripts/parser-hook.ts:vueComponentFile`) emits `export const ${icon.pascalName}Icon = ...` (and `import IconBase from '../../lib/IconBase.vue'` stays default — Vue SFC convention).
- Dynamic generator (`scripts/generate-assets.ts:generateDynamicFile`) emits `import { ${pascalName}Icon as ${w} } from '../${kebab}/${icon.name}'` for each of the 6 styles, then `export const ${pascalName}Icon = ...` at the bottom.
- Barrel re-exports in `style/*.ts`, `styled.ts`, and `dynamic/index.ts` use `export { ${name}Icon } from ...` (no `default as` indirection). Cleaner and more tree-shake-friendly.
- Breaking change for users who used the per-file default import (`import HomeBold from '@solar-icons/vue/bold/home-bold'`). The new pattern is `import { HomeBoldIcon } from '@solar-icons/vue/bold/home-bold'`. The V3 docs already document the named pattern.
