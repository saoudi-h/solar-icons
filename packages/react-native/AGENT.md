---
name: "@solar-icons/react-native"
type: "package"
status: "active"
---
# AGENT CONTEXT: packages/react-native

## 🧠 Role

`@solar-icons/react-native@1.1.1`. React Native distribution of Solar Icons, built on `react-native-svg`. Ships unit-per-style components: one `.tsx` file per icon per style, statically importable.

## ⚙️ Conventions

- React Native ≥ 0.72 + `react-native-svg` ≥ 13 (peer).
- React 19 (peer).
- Build = `pnpm generate:assets && pnpm copy:licenses && tsdown -l error`. Pure ESM, no CJS.
- `scripts/generate-assets.ts` reads SVGs from `core/svgs/` and emits `.tsx` files using `react-native-svg` primitives (`<Svg>`, `<Path>`, `<G>`).
- `scripts/utils.ts` is the local helper module.

## 📁 Key Directories

| Path | Description |
|---|---|
| `scripts/generate-assets.ts` | Reads from `core/svgs/`, produces TSX. |
| `scripts/utils.ts` | Local helpers. |
| `src/icons/style/` | Generated: one folder per style, one `.tsx` file per icon. |
| `src/lib/` | Hand-written helpers. |
| `src/index.ts` | Barrel re-export. |

## 🏗 Stack

- `react` ≥ 16.8, `react-native` ≥ 0.72, `react-native-svg` ≥ 13 (all peer).
- `tsdown` for the ESM bundle.
- `tsgo --noEmit` for typecheck.

## ⚠️ Known Constraints

- **No Vitest in this package.** RN output is validated manually via the test app `apps/test-react-native-icons`.
- **The V2 component uses a single-color model** (no duotone customization).
- **Source SVG `<g>` grouping matters for duotone**: paths tagged as the duotone accent layer must be groupable in Figma so the generator can target them.
- **`tsdown` regression (DEBUG-01/02/03)**: same caveat as other packages if a `bin` is ever added.
