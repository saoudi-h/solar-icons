---
name: "@solar-icons/react-perf"
type: "package"
status: "active"
---
# AGENT CONTEXT: packages/react-perf

## 🧠 Role

`@solar-icons/react-perf@2.1.1`. Ships **unit-per-style** React components: one component per icon, statically importable, no runtime style switching, no Provider. Bundle-size-conscious alternative to `@solar-icons/react`.

The version major is intentionally higher than `@solar-icons/react` (1.1.1).

## ⚙️ Conventions

- React 19 (peer ≥ 16.8). Plain function components, no `forwardRef`.
- Build = `pnpm generate:assets && pnpm copy:licenses && tsdown -l error && pnpm build:types`.
- `scripts/generate-assets.ts` produces a flat `dist/icons/style/<name>.mjs` tree — one ESM file per icon per style.
- `scripts/utils.ts` re-implements `readSvgsFromDisk`, `toPascalCase`, `verifyIcons`, the `WEIGHTS` array, and path constants.

## 🏗 Stack

- React 19, `tsdown` 0.22 for the ESM bundle.
- `tsc --build` for types.
- Vitest 4 when tests are added.

## ⚠️ Known Constraints

- **Output is `dist/icons/style/<name>.mjs`** — the cleanest output in the monorepo and the reference shape for what a unit-per-style package looks like.
- **Vite is not used in this package** — `tsdown` is the only bundler.
- **`tsdown` regression (DEBUG-01/02/03 in worklogs)**: this package has no `bin` today, so it is not affected, but the same `exports: { bin: { ... } }` idiom applies if a bin is ever added.
