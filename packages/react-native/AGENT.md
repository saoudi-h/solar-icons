---
name: '@solar-icons/react-native'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/react-native

## 🧠 Role

`@solar-icons/react-native` (v2 stable). React Native distribution of Solar Icons, built on `react-native-svg`. Ships unit-per-style components: one `.tsx` file per icon per style, statically importable. Dynamic icons (runtime-switchable) live under `src/icons/dynamic/`.

## ⚙️ Conventions

- React Native ≥ 0.72 + `react-native-svg` ≥ 13 (peer).
- React 19 (peer).
- Build = `pnpm generate:assets && pnpm copy:licenses && tsdown -l error`. Pure ESM, no CJS.
- `scripts/generate-assets.ts` reads SVGs from `core/svgs/` and emits `.tsx` files using `react-native-svg` primitives (`<Svg>`, `<Path>`, `<G>`).
- Duotone icons read `secondaryColor`/`secondaryOpacity` from both props and `SolarContext` (no CSS vars in RN).
- `IconBase` reads `color`, `size`, `strokeWidth` defaults from `SolarContext` (React Context).
- Props use `secondaryColor`/`secondaryOpacity` consistently everywhere (SolarProvider context, IconProps, generated code).
- `mirrored` prop is removed (v2).

## 📁 Key Directories

| Path                         | Description                                                |
| ---------------------------- | ---------------------------------------------------------- |
| `scripts/generate-assets.ts` | Reads from `core/svgs/`, produces TSX.                     |
| `scripts/parser-hook.ts`     | SVG → React Native JSX transform + codegen templates.      |
| `src/icons/style/`           | Generated: one folder per style, one `.tsx` file per icon. |
| `src/lib/`                   | IconBase, SolarProvider, useSolar, types.                  |
| `src/index.ts`               | Barrel re-export.                                          |

## 🏗 Stack

- `react` ≥ 16.8, `react-native` ≥ 0.72, `react-native-svg` ≥ 13 (all peer).
- `tsdown` for the ESM bundle.
- `tsgo --noEmit` for typecheck.

## ⚠️ Known Constraints

- **Vitest runs via `npx vitest run` from the package root** (no `test` npm script; `tests/*.test.tsx` — exports map guards + rendering checks). Rendering assertions use `react-dom/server` `renderToStaticMarkup` with the `__mocks__/react-native-svg.tsx` mock; `react-test-renderer` is unusable under Vitest here (renderer never commits). Visual confidence comes from `apps/test-react-native-icons`.
- **No CSS vars in RN** — duotone customization uses React Context + JSX expressions instead of `var(--solar-*)`.
- **`alt` maps to `accessible` + `accessibilityLabel`** on the `<Svg>` (after `{...restProps}` so `alt` wins over a user-provided `accessibilityLabel`). `alt` lives on both `IconBaseProps` and `IconProps`.
- **Published single-icon subpaths must mirror the generated style directories:** use `./bold/*`, `./bold-duotone/*`, `./broken/*`, `./linear/*`, `./line-duotone/*`, and `./outline/*` export patterns; a generic wildcard must not map to a nonexistent `dist/icons/style` directory.
- **Source SVG `<g>` grouping matters for duotone**: paths tagged as the duotone accent layer must be groupable in Figma so the generator can target them.
- **`tsdown` `exports: true` rewrites the `bin` field on every build**: if a `bin` is ever added, declare it via `exports: { bin: { ... } }`.

## v2 API shape

- Flat `src/icons/<style>/` tree (no category dirs).
- `forwardRef` removed — components use the `ref` prop directly (React 19 pattern).
- `displayName` removed from generated components.
- `Icon` type simplified (no `ForwardRefExoticComponent`).
