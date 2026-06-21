---
name: '@solar-icons/react-reactive'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/react-reactive (formerly react)

## 🧠 Role

`@solar-icons/react-reactive@3.0.0`. Niche React package for dynamic style switching. Ships unit-per-style components. Kept for existing V2 users migrating to V3. Deprecated in V4.

## ⚙️ Conventions

- React 19 (peer ≥ 16.8). `forwardRef` on the multi-style component.
- `sideEffects: false` for tree-shaking.
- Build = `pnpm generate:assets && pnpm copy:licenses && vite build && tsc --build tsconfig.build.json`.
- `scripts/generate-assets.ts` reads SVGs from `core/svgs/`, normalizes JSX attribute names to camelCase, and emits a `csr/` tree, a `ssr/` tree, a `defs/` tree, and a top-level `index.ts`. All four outputs are gitignored.
- Dual ESM + CJS via Vite `rollupOptions.output[]`.

## 📁 Key Directories

| Path                                | Description                                                                       |
| ----------------------------------- | --------------------------------------------------------------------------------- |
| `scripts/generate-assets.ts`        | Reads from `core/svgs/`, produces per-style React components.                     |
| `scripts/utils.ts`                  | Local helpers: `readSvgsFromDisk`, `toPascalCase`, `verifyIcons`, path constants. |
| `src/csr/`, `src/ssr/`, `src/defs/` | Generated, gitignored.                                                            |
| `src/category.ts`, `src/index.ts`   | Generated, gitignored.                                                            |
| `src/lib/`                          | Hand-written helpers.                                                             |

## 🏗 Stack

- React 19, Vite 8, `@vitejs/plugin-react` 6.
- TypeScript 6, `tsc` for typecheck (not `tsgo`).
- Vitest 4 when tests are added.
- React Compiler-compatible (the docs app enables `reactCompiler: true`).

## ⚠️ Known Constraints

- **Two parallel trees** (`csr/` and `ssr/`) are emitted. The `./category` export is exposed in both.
- **Exports subpaths:** `./csr/*`, `./ssr/*`, `./ssr`, `./lib/*`, `./category`, `./icons/*`. They reflect the V2 dual-tree design.
- **`scripts/generate-assets.ts` re-implements logic that is also in `core/src/utils.ts`** (kebab-case → PascalCase, alias mapping). The two are not deduplicated.
