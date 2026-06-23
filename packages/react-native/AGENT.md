---
name: '@solar-icons/react-native'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/react-native

## 🧠 Role

`@solar-icons/react-native@1.1.1`. React Native distribution of Solar Icons, built on `react-native-svg`. Ships unit-per-style components: one `.tsx` file per icon per style, statically importable.

## ⚙️ Conventions

- React Native ≥ 0.72 + `react-native-svg` ≥ 13 (peer).
- React 19 (peer).
- Build = `pnpm generate:assets && pnpm copy:licenses && tsdown -l error`. Pure ESM, no CJS.
- `scripts/generate-assets.ts` reads SVGs from `core/svgs/` and emits `.tsx` files using `react-native-svg` primitives (`<Svg>`, `<Path>`, `<G>`).
- Duotone icons read `secondaryColor`/`secondaryOpacity` from both props and `SolarContext` (no CSS vars in RN).
- `IconBase` reads `color`, `size`, `strokeWidth` defaults from `SolarContext` (React Context).
- Props use `secondaryColor`/`secondaryOpacity` consistently everywhere (SolarProvider context, IconProps, generated code).
- `mirrored` prop is removed (V3 decision).

## 📁 Key Directories

| Path                         | Description                                                |
| ---------------------------- | ---------------------------------------------------------- |
| `scripts/generate-assets.ts` | Reads from `core/svgs/`, produces TSX.                     |
| `src/parser-hook.ts`         | SVG → React Native JSX transform + codegen templates.      |
| `src/icons/style/`           | Generated: one folder per style, one `.tsx` file per icon. |
| `src/lib/`                   | IconBase, SolarProvider, useSolar, types.                  |
| `src/index.ts`               | Barrel re-export.                                          |

## 🏗 Stack

- `react` ≥ 16.8, `react-native` ≥ 0.72, `react-native-svg` ≥ 13 (all peer).
- `tsdown` for the ESM bundle.
- `tsgo --noEmit` for typecheck.

## ⚠️ Known Constraints

- **No Vitest in this package.** RN output is validated manually via the test app `apps/test-react-native-icons`.
- **No CSS vars in RN** — duotone customization uses React Context + JSX expressions instead of `var(--solar-*)`.
- **Source SVG `<g>` grouping matters for duotone**: paths tagged as the duotone accent layer must be groupable in Figma so the generator can target them.
- **`tsdown` regression (DEBUG-01/02/03)**: same caveat as other packages if a `bin` is ever added.
