---
name: '@solar-icons/nuxt'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/nuxt

## 🧠 Role

`@solar-icons/nuxt` (v2 stable). Nuxt 3/4 module wiring `@solar-icons/vue` auto-imports (9,102 main + 1,517 dynamic = ~10,619 components with `Solar` prefix), `SolarProvider`, and `useSolar` via `@nuxt/kit` and `@nuxt/module-builder`. See [src/runtime/AGENT.md](src/runtime/AGENT.md) for runtime plugin/provider behavior.

## ⚙️ Conventions & Stack

- Entrypoint: `src/module.ts` (`@nuxt/kit` 4.x, `@nuxt/schema` 4.x, `@nuxt/module-builder` 1.x; supports Nuxt 3.12+ via compat; `playground/` targets Nuxt 4 + Tailwind v4, excluded from tarball).
- Build = `nuxt-module-build prepare && nuxt-module-build build && pnpm copy:licenses`.
- Dev = `pnpm dev:prepare` (stub build + `nuxi prepare`, mandatory before `nuxi dev playground`).
- Test = `vitest run`; `test:types` runs `vue-tsc` on module + playground.
- Publishes via root Changesets (`release.yml`); legacy `changelogen` `pnpm release` script is unused.

## ⚠️ Known Constraints

- **Explicit `NuxtModule` annotation required** on `src/module.ts` default export (`const module: NuxtModule<SolarNuxtModuleOptions> = defineNuxtModule<...>(...)` importing `type { NuxtModule } from '@nuxt/schema'`). Without it, `nuxt-module-build build` fails with TS2883 because `@nuxt/kit` does not re-export `NuxtModule`.
- **`@nuxt/kit` and `@solar-icons/vue` are `dependencies`**, not `peerDependencies` (unusual for a Nuxt module; keep intentional).
- **Module options (`SolarNuxtModuleOptions`):** `namePrefix`, `autoImport` (`true`), `provider` (`true` boolean, not string), `color` (`'currentColor'`), `size` (`24`), `strokeWidth` (`1.5`), `secondaryColor`, `secondaryOpacity`. `weight` is a per-icon prop, not a module option.
- **Two auto-import barrels:** Main barrel (`@solar-icons/vue`, e.g. `SolarArrowUpBoldIcon`) and dynamic barrel (`@solar-icons/vue/dynamic`, e.g. `SolarArrowUpIcon`) have no collisions after the 5 v2 renames (`bone-broken→bone-fracture`, `heart-broken→heart-crack`, `link-broken→unlink`, `link-broken-minimalistic→unlink-minimalistic`, `text→text-format`). Tree-shaking bundles only used icons.
