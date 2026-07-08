---
name: "@solar-icons/nuxt"
type: "package"
status: "active"
---
# AGENT CONTEXT: packages/nuxt

## 🧠 Role

`@solar-icons/nuxt@3.0.0`. Nuxt 3/4 module that wires `@solar-icons/vue` into a Nuxt app: auto-imports icon components (main barrel + dynamic barrel), `SolarProvider`, and `useSolar`. Built on `@nuxt/kit` and `@nuxt/module-builder`.

## ⚙️ Conventions

- Standard Nuxt module shape: `src/module.ts` is the entrypoint. No `src/runtime/` directory — the module registers components and composables from `@solar-icons/vue` directly via `@nuxt/kit`'s `addComponent` and `addImports`.
- Build = `nuxt-module-build prepare && nuxt-module-build build && pnpm copy:licenses`.
- Dev workflow uses a local `playground/` Nuxt app: `pnpm dev:prepare` (build the module in stub mode + run `nuxi prepare`) then `nuxi dev playground`.
- Test = `vitest run` (module-level); `test:types` runs `vue-tsc` against both the module and the playground.
- **Has its own release script** (`pnpm release`) using `changelogen`, separate from the root repo's changesets flow.

## 📁 Key Directories

| Path | Description |
|---|---|
| `src/module.ts` | Module entrypoint. Registers icons (main + dynamic barrels), SolarProvider, and useSolar via @nuxt/kit. |
| `playground/` | Dev Nuxt app that consumes the module locally. Uses Tailwind v4 for styling. Not in the published tarball. |

## 🏗 Stack

- `@nuxt/kit` 4.x, `@nuxt/schema` 4.x.
- `@nuxt/module-builder` 1.x.
- `vue-tsc` 3.x for typecheck.
- `changelogen` for this package's release notes (root repo uses changesets).

## ⚠️ Known Constraints

- **Two barrels registered for auto-import:** Main barrel (`@solar-icons/vue`) provides disambiguated names (`SolarArrowUpBoldIcon`, `SolarArrowUpLinearIcon`, …). Dynamic barrel (`@solar-icons/vue/dynamic`) provides runtime-switchable icons (`SolarArrowUpIcon`, `SolarHomeIcon`, …). No collisions after the V3 icon renames (bone-broken→bone-fracture, heart-broken→heart-crack, link-broken→unlink, link-broken-minimalistic→unlink-minimalistic, text→text-format).
- **`SolarNuxtModuleOptions` only has `namePrefix` and `autoImport`.** The `color`, `size`, `strokeWidth`, `weight` options were removed — the provider CSS handles these via `<SolarProvider>` props in the app, not via module config.
- **No runtime plugin needed.** `SolarProvider` uses Vue's `provide`/`inject` scoped to the component tree. No global app-level context required.
- **`@nuxt/kit` and `@solar-icons/vue` are `dependencies`, not `peerDependencies`.** This is unusual for a Nuxt module.
- **`pnpm dev:prepare` must run before `nuxi dev playground`** — the module needs to be built in stub mode for Nuxt's auto-import scanner.
- **Nuxt 4 schema is in use** (`@nuxt/kit` 4, `@nuxt/schema` 4). Supports Nuxt 3.12+ via compatibility modes; the dev playground targets Nuxt 4.
- **~8,700 auto-imports registered** (7,476 main + 1,246 dynamic). Tree-shaking ensures only used icons are bundled.

## V3 Propagation (2026-06-24)

- `mirrored` option removed from `SolarNuxtModuleOptions` (propagated from Vue's removed `mirrored` prop).
- Stale `#solar-icons/category` alias removed from `types/aliases.d.ts` (flat structure — no categories).

## V3 Module Restructure (2026-07-02)

- `weight`, `color`, `size`, `strokeWidth` removed from `SolarNuxtModuleOptions` and defaults.
- `getAllIconNames()` split into `getMainBarrelIconNames()` (main barrel) and `getDynamicBarrelIconNames()` (dynamic barrel).
- Both barrels registered via `addComponent` with the `Solar` prefix.
- 5 icon renames to resolve naming collisions between barrels.
