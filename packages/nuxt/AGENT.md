---
name: "@solar-icons/nuxt"
type: "package"
status: "active"
---
# AGENT CONTEXT: packages/nuxt

## 🧠 Role

`@solar-icons/nuxt@1.2.1`. Nuxt 3/4 module that wires `@solar-icons/vue` into a Nuxt app: auto-imports, module options, runtime config. Built on `@nuxt/kit` and `@nuxt/module-builder`.

## ⚙️ Conventions

- Standard Nuxt module shape: `src/module.ts` is the entrypoint; `src/runtime/` holds auto-imported utilities and components.
- Build = `nuxt-module-build prepare && nuxt-module-build build && pnpm copy:licenses`.
- Dev workflow uses a local `playground/` Nuxt app: `pnpm dev:prepare` (build the module in stub mode + run `nuxi prepare`) then `nuxi dev playground`.
- Test = `vitest run` (module-level); `test:types` runs `vue-tsc` against both the module and the playground.
- **Has its own release script** (`pnpm release`) using `changelogen`, separate from the root repo's changesets flow.

## 📁 Key Directories

| Path | Description |
|---|---|
| `src/module.ts` | Module entrypoint. |
| `src/runtime/` | Auto-imported utilities and components. |
| `playground/` | Dev Nuxt app that consumes the module locally. Not in the published tarball. |

## 🏗 Stack

- `@nuxt/kit` 4.x, `@nuxt/schema` 4.x.
- `@nuxt/module-builder` 1.x.
- `vue-tsc` 3.x for typecheck.
- `changelogen` for this package's release notes (root repo uses changesets).

## ⚠️ Known Constraints

- **Depends on `@solar-icons/vue` (`workspace:*`).** Breaking changes to `@solar-icons/vue` propagate here.
- **`@nuxt/kit` and `@solar-icons/vue` are `dependencies`, not `peerDependencies`.** This is unusual for a Nuxt module.
- **`pnpm dev:prepare` must run before `nuxi dev playground`** — the module needs to be built in stub mode for Nuxt's auto-import scanner.
- **Nuxt 4 schema is in use** (`@nuxt/kit` 4, `@nuxt/schema` 4). Supports Nuxt 3.12+ via compatibility modes; the dev playground targets Nuxt 4.
