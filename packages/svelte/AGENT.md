---
name: '@solar-icons/svelte'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/svelte

## 🧠 Role

`@solar-icons/svelte` (v2 stable). Svelte 5 distribution of Solar Icons. Ships unit-per-style components: one `.svelte` file per icon per style, statically importable, no runtime style switching. Dynamic icons (runtime-switchable) live under `src/icons/dynamic/`.

## ⚙️ Conventions

- Svelte 5 with runes (`$props`, `$state`, `$derived`).
- Build = `pnpm generate:assets && pnpm copy:licenses && pnpm build:package` where `build:package` is `svelte-package --input ./src`.
- `scripts/generate-assets.ts` reads SVGs from `core/svgs/` and emits `.svelte` files.
- `scripts/parser-hook.ts` is the build-time codegen template imported by `generate-assets.ts`.
- `prettier-plugin-svelte` is a dev dep; the shared `@tala-tools/prettier` does not include Svelte formatting.

## 📁 Key Directories

| Path                         | Description                                         |
| ---------------------------- | --------------------------------------------------- |
| `scripts/generate-assets.ts` | Reads from `core/svgs/`, produces SFCs.             |
| `scripts/parser-hook.ts`     | Build-time codegen template.                        |
| `src/icons/style/`           | Generated: one folder per style, one file per icon. |
| `src/lib/`                   | Hand-written helpers.                               |
| `src/index.ts`               | Barrel re-export.                                   |

## 🏗 Stack

- Svelte 5+ required (peer). The source and generated code use Svelte 5 runes (`$props`, `$derived`, `$effect`, `{@render}`).
- `@sveltejs/package` for the package build, `@sveltejs/vite-plugin-svelte` for dev.
- `svelte2tsx` + `svelte-check` for typecheck.
- `tsdown` available as a devDep (currently unused at build time).
- `prettier-plugin-svelte` for formatting.

## 🔧 CSS vars + classes + provider

- **`src/lib/IconBase.svelte`**: CSS classes `solar` + `solar-{iconName}`, CSS vars via `??` pattern (color, size, strokeWidth), `secondaryColor`/`secondaryOpacity` duotone props, `aria-hidden="true"` by default unless `alt`/`aria-label`/`title` set. User `class` and `style` merged after CSS vars (user can override).
- **`src/lib/SolarProvider.svelte`**: Wrapper `<div>` with CSS custom properties via `solar.css`. Svelte 5 `setContext` provides a ref with `setProperty()`. Renders children via `{@render children()}`.
- **`src/lib/useSolar.ts`**: Standalone module using `getContext(SOLAR_CONTEXT_KEY)`. Returns `setColor`, `setSize`, `setStrokeWidth`, `setDuotoneColor`, `setDuotoneOpacity`. Shared context key with `SolarProvider.svelte`.
- **`scripts/parser-hook.ts`**: Passes `iconName="${icon.kebabName}"` to generated Svelte components.
- **Pitfall**: `$props()` destructuring must NOT use defaults for `color`, `size`, `strokeWidth` — the `??` in `$derived` must fall through to CSS var.

## API notes

- Barrel files export components with the `Icon` suffix (`HomeIcon`); consumers must not use `Bold.Home`-style namespace access or old names without the suffix.
- `SolarState`/provider interface uses `secondaryColor`/`secondaryOpacity` (not `duotoneColor`/`duotoneOpacity`).
- Dynamic icons use `$props()` runes in the generated code (`let { ...restProps }: DynamicIconProps = $props()`), never legacy `$$restProps` (Svelte 4).
- The `Icon` suffix, `useSolar`, dynamic imports, `mirrored` removal, and the CSS var cascade are documented in the v2 docs.

## ⚠️ Known Constraints

- **Svelte 5 runes are mandatory** in both source and generated code (`$props()` destructuring, not legacy `export let`). Consumers must be on Svelte ≥ 5.0.0; the peer dependency is `">= 5.0.0"` (the code was never Svelte 4 compatible).
- **Published subpath targets must preserve Svelte source extensions:** generated output is `.svelte` plus `.svelte.d.ts`; `exports` conditions must not point the default or type targets at nonexistent `.js`/`.d.ts` files.
