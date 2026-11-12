---
name: '@solar-icons/svelte'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/svelte

## 🧠 Role

`@solar-icons/svelte` (v2 stable). Svelte 5 distribution shipping unit-per-style `.svelte` components (`src/icons/<style>/`) and dynamic icons (`src/icons/dynamic/`).

## ⚙️ Conventions & Stack

- Svelte 5+ (`>= 5.0.0` peer) with runes (`$props`, `$state`, `$derived`, `$effect`, `{@render}`) in both source and generated code — never legacy `export let` or `$$restProps`.
- Build = `pnpm generate:assets && pnpm copy:licenses && pnpm build:package` (`svelte-package --input ./src`).
- Typecheck = `svelte2tsx` + `svelte-check`. Format uses `prettier-plugin-svelte` (shared `@tala-tools/oxfmt` does not format `.svelte`). `tsdown` devDep is currently unused at build time.
- `scripts/generate-assets.ts` reads `core/svgs/`; `scripts/parser-hook.ts` is the codegen template.

## 🔧 CSS vars, provider, and API

- **`src/lib/IconBase.svelte`:** Emits `solar` + `solar-{iconName}` (static icons include style suffix via `parser-hook.ts`: `solar-{kebabName}-{styleKebab}`). Uses `??` CSS var fallbacks — `$props()` destructuring MUST NOT set defaults for `color`, `size`, `strokeWidth`. Sets `aria-hidden="true"` unless `alt`/`aria-label`/`title` is provided; merges user `class`/`style` after CSS vars.
- **`src/lib/SolarProvider.svelte` & `src/lib/useSolar.ts`:** `SolarProvider` wraps children (`{@render children()}`) in a `<div>` with CSS vars via `solar.css` and `setContext(SOLAR_CONTEXT_KEY, ...)`. `useSolar()` uses `getContext` and returns `setColor`, `setSize`, `setStrokeWidth`, `setDuotoneColor`, `setDuotoneOpacity`.
- **V2 API:** Components use the `Icon` suffix (`HomeIcon`; no `Bold.Home` namespaces); `secondaryColor`/`secondaryOpacity` replace `duotone*`; `mirrored` is removed.

## ⚠️ Known Constraints

- **Published subpath targets must preserve `.svelte` extensions:** generated files are `.svelte` + `.svelte.d.ts`; `exports` conditions must not point to nonexistent `.js`/`.d.ts` files.
