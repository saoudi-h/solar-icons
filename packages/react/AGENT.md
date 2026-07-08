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

- **`lib/IconBase.tsx`**: Classes `solar` + `solar-{kebab}`, `aria-hidden="true"` by default, `secondaryColor`/`secondaryOpacity` props, user `className` merged (our computed className comes AFTER `{...restProps}` so the `solar` prefix is never dropped), user `style` merged.
    - **Color/size**: set as **SVG presentation attributes** with `var()` fallback (e.g. `width="var(--solar-size, 24px)"`, `color="var(--solar-color, currentColor)"`). SVG attrs have CSS specificity 0, so Tailwind/className overrides (`text-blue-500`, `w-8`) **work freely** without conflict.
    - **Explicit props** (`color`, `size`, `strokeWidth`): converted to inline `style` (highest specificity) when directly provided — the escape hatch.
    - **Duotone**: `--solar-secondary-color`/`--solar-secondary-opacity` remain as inline style (they target specific SVG child paths, not the root).
    - **`isolated` prop** (`IconBaseProps`, defaults to `false`): when `true`, the icon ignores all Provider CSS custom properties. SVG attrs use hardcoded defaults (`width="24px"`, `color="currentColor"`, `strokeWidth="1.5"`) instead of `var()`. Duotone vars are set to `initial` on the `<svg>` style to block inheritance from the Provider; explicit `secondaryColor`/`secondaryOpacity` props still work because they override `initial`.
- **`lib/SolarProvider.tsx`**: Wrapper `<div>` sets CSS custom properties via `style` attribute (computed from React state, no `useRef`/`useEffect`/`style.setProperty()`). The Provider re-renders the wrapper `<div>` on state change; icons are unaffected (they only read CSS vars from the cascade).
    - CSS vars on wrapper: `--solar-color`, `--solar-size`, `--solar-stroke-width`, `--solar-secondary-color`, `--solar-secondary-opacity`.
- **`parser-hook.ts`**: Passes `iconName="${icon.kebabName}"` to generated components.
- **Key insight**: SVG presentation attributes accept `var()`, have specificity 0, and lose to any CSS class — no CSS file or layer-trick needed.
- **Pitfall**: `{...restProps}` must be spread **before** our explicit props (`className`, `style`, `width`, `height`, `color`, `strokeWidth`). Otherwise the user's raw `className`/`style` from restProps overrides our merged versions and the `solar` class is dropped.

## ⚠️ Known Constraints

- **Output is `dist/icons/style/<name>.mjs`** — the cleanest output in the monorepo and the reference shape for what a unit-per-style package looks like.
- **Vite is not used in this package** — `tsdown` is the only bundler.
- **`tsdown` regression (DEBUG-01/02/03 in worklogs)**: this package has no `bin` today, so it is not affected, but the same `exports: { bin: { ... } }` idiom applies if a bin is ever added.
