---
name: "@solar-icons/vue"
type: "package"
status: "active"
---
# AGENT CONTEXT: packages/vue

## 🧠 Role

`@solar-icons/vue@1.2.1`. Vue 3 distribution of Solar Icons. Ships a reactive multi-style component (single `<SolarIcon name="..." />`, dynamic style switching via Vue reactivity), analogous to the V2 `@solar-icons/react` model.

## ⚙️ Conventions

- Vue 3.5+ (peer ≥ 3.0). Composition API. SFC templates (not JSX).
- Build = `pnpm generate:assets && pnpm tsdown -l error && pnpm copy:licenses`. Dual ESM + CJS.
- `scripts/generate-assets.ts` reads SVGs from `core/svgs/` and emits SFC files.
- `scripts/utils.ts` is the local helper module.
- `lint` allows up to 10 warnings (`--max-warnings 10`); the other public packages use 0.

## 📁 Key Directories

| Path | Description |
|---|---|
| `scripts/generate-assets.ts` | Reads from `core/svgs/`, produces SFCs. |
| `scripts/utils.ts` | Local helpers. |
| `src/` | Hand-written code. |
| `dist/` | Build output. |

## 🏗 Stack

- Vue 3.5, `unplugin-vue` for SFC handling, `tsdown` for bundling.
- Vitest + `@vue/test-utils` + `jsdom` for tests.
- `vue-tsc` for typecheck.

## ⚠️ Known Constraints

- **`@solar-icons/nuxt` depends on this package** (`workspace:*`).
- **The V2 component uses a single-color model** (no duotone customization).
- **`tsdown` regression (DEBUG-01/02/03)**: same `exports: { bin: { ... } }` idiom as `@autonomos/cli` if a `bin` is ever added.
