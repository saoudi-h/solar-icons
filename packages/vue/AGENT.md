---
name: '@solar-icons/vue'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/vue

## 🧠 Role

`@solar-icons/vue` (v2 stable). Vue 3 distribution shipping unit-per-style components (`src/icons/<style>/`), dynamic icons (`src/icons/dynamic/`, 1,517 files + `DynamicIcon`), `<SolarProvider>`, `useSolar()`, and CSS classes (`solar` / `solar-{kebab}`). See [scripts/AGENT.md](scripts/AGENT.md) for codegen/export shape and [src/lib/AGENT.md](src/lib/AGENT.md) for runtime/plugin behavior.

## ⚙️ Conventions & Stack

- Vue 3.5+ (peer `>= 3.0`), Composition API, `unplugin-vue`, `tsdown`, Vitest + `@vue/test-utils` + `jsdom`, `vue-tsc` for typecheck.
- Build = `pnpm generate:assets && pnpm tsdown -l error && pnpm copy:licenses`.
- `scripts/generate-assets.ts` reads `core/svgs/` and emits `.ts` files wrapping `IconBase.vue` with `h()`.

## ⚠️ Known Constraints

- **`@solar-icons/nuxt` depends on this package** (`workspace:*`).
- **Generated icon functions declare `: VNode` explicitly.** Without it TypeScript infers the return type from `h()` for each of the ~10k icons while emitting declarations, which doubles the build (about 52 s against 28 s); the published signatures are unchanged.
- **Named exports required:** Per-style and dynamic files export `export const XxxIcon = ...` (no default exports). Breaking v2 change from default per-file imports.
- **`tsdown` `exports: true` rewrites `bin`:** Declare any future `bin` via `exports: { bin: { ... } }`.
- **V2 removals/renames:** `displayName` and `mirrored` removed; `secondaryColor`/`secondaryOpacity` replace `duotoneColor`/`duotoneOpacity`.
