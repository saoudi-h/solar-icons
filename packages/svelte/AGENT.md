---
name: '@solar-icons/svelte'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/svelte

## 🧠 Role

`@solar-icons/svelte@1.1.1`. Svelte 5 distribution of Solar Icons. Ships unit-per-style components: one `.svelte` file per icon per style, statically importable, no runtime style switching.

## ⚙️ Conventions

- Svelte 5 with runes (`$props`, `$state`, `$derived`).
- Build = `pnpm generate:assets && pnpm copy:licenses && pnpm build:package` where `build:package` is `svelte-package --input ./src`.
- `scripts/generate-assets.ts` reads SVGs from `core/svgs/` and emits `.svelte` files.
- `scripts/compile-svelte.mjs` and `scripts/copy-svelte.mjs` are pre-`@sveltejs/package` shims.
- `scripts/utils.ts` is the local helper module.
- `prettier-plugin-svelte` is a dev dep; the shared `@tala-tools/prettier` does not include Svelte formatting.

## 📁 Key Directories

| Path                                                    | Description                                         |
| ------------------------------------------------------- | --------------------------------------------------- |
| `scripts/generate-assets.ts`                            | Reads from `core/svgs/`, produces SFCs.             |
| `scripts/compile-svelte.mjs`, `scripts/copy-svelte.mjs` | Pre-svelte-package shims.                           |
| `scripts/utils.ts`                                      | Local helpers.                                      |
| `src/icons/style/`                                      | Generated: one folder per style, one file per icon. |
| `src/lib/`                                              | Hand-written helpers.                               |
| `src/index.ts`                                          | Barrel re-export.                                   |

## 🏗 Stack

- Svelte ≥ 4 (peer); the source targets Svelte 5 runes.
- `@sveltejs/package` for the package build, `@sveltejs/vite-plugin-svelte` for dev.
- `svelte2tsx` + `svelte-check` for typecheck.
- `tsdown` available as a devDep (currently unused at build time).
- `prettier-plugin-svelte` for formatting.

## 🔧 V3-16b: CSS vars + classes + provider

- **`src/lib/IconBase.svelte`**: CSS classes `solar` + `solar-{iconName}`, CSS vars via `??` pattern (color, size, strokeWidth), `secondaryColor`/`secondaryOpacity` duotone props, `aria-hidden="true"` by default unless `alt`/`aria-label`/`title` set. User `class` and `style` merged after CSS vars (user can override).
- **`src/lib/SolarProvider.svelte`**: Wrapper `<div>` with CSS custom properties via `solar.css`. Svelte 5 `setContext` provides a ref with `setProperty()`. Renders children via `{@render children()}`.
- **`src/lib/useSolar.ts`**: Standalone module using `getContext(SOLAR_CONTEXT_KEY)`. Returns `setColor`, `setSize`, `setStrokeWidth`, `setDuotoneColor`, `setDuotoneOpacity`. Shared context key with `SolarProvider.svelte`.
- **`src/parser-hook.ts`**: Passes `iconName="${icon.kebabName}"` to generated Svelte components.
- **Pitfall**: `$props()` destructuring must NOT use defaults for `color`, `size`, `strokeWidth` — the `??` in `$derived` must fall through to CSS var.

## ⚠️ Known Constraints

- **`peerDependencies.svelte: ">= 4.0.0"`** — the source uses Svelte 5 runes, so Svelte 4 users may see compatibility issues.
- **Svelte 5 runes are required in the generated code** (`$props()` destructuring, not legacy `export let`).
- **`scripts/compile-svelte.mjs` and `scripts/copy-svelte.mjs`** are holdovers; verify by running `pnpm build` with them disabled before deletion.
