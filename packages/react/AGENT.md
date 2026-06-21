---
name: '@solar-icons/react'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/react (formerly react-perf)

## 🧠 Role

`@solar-icons/react@3.0.0`. The **recommended** React package. Ships unit-per-style components with CSS custom properties, CSS classes (`solar`/`solar-{kebab}`), `<SolarProvider>`, and `useSolar()` hook. One component per icon, statically importable.

## ⚙️ Conventions

- React 19 (peer ≥ 16.8). Plain function components, no `forwardRef`.
- Build = `pnpm generate:assets && pnpm copy:licenses && tsdown -l error && pnpm build:types`.
- `scripts/generate-assets.ts` produces a flat `dist/icons/style/<name>.mjs` tree — one ESM file per icon per style.
- `scripts/utils.ts` re-implements `readSvgsFromDisk`, `toPascalCase`, `verifyIcons`, the `WEIGHTS` array, and path constants.

## 🏗 Stack

- React 19, `tsdown` 0.22 for the ESM bundle.
- `tsc --build` for types.
- Vitest 4 when tests are added.

## 🔧 CSS vars + classes + provider (V3-16a)

- **`lib/IconBase.tsx`**: Classes `solar` + `solar-{kebab}`, CSS vars `??` pattern (color, size, strokeWidth), `strokeWidth` as SVG attribute, `aria-hidden="true"` by default, `secondaryColor`/`secondaryOpacity` props, user `className` merged, user `style` overrides CSS vars.
- **`lib/SolarProvider.tsx`**: Wrapper `<div>` with CSS custom properties on `style`. No React context for values — CSS cascade does the work. `useSolar()` hook mutates DOM via `style.setProperty()` (no re-render of icons).
- **`parser-hook.ts`**: Passes `iconName="${icon.kebabName}"` to generated components.
- **Pitfall**: No default on `size`/`color` — `??` must fall through to CSS var. `--solar-icon-size` must be in px.

## ⚠️ Known Constraints

- **Output is `dist/icons/style/<name>.mjs`** — the cleanest output in the monorepo and the reference shape for what a unit-per-style package looks like.
- **Vite is not used in this package** — `tsdown` is the only bundler.
- **`tsdown` regression (DEBUG-01/02/03 in worklogs)**: this package has no `bin` today, so it is not affected, but the same `exports: { bin: { ... } }` idiom applies if a bin is ever added.
