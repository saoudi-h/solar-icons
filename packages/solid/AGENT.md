---
name: '@solar-icons/solid'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/solid

## 🧠 Role

`@solar-icons/solid` (v2 stable). SolidJS distribution shipping unit-per-style `.tsx` components (`src/icons/<style>/`) and runtime-switchable dynamic components (`src/icons/dynamic/`). See [scripts/AGENT.md](scripts/AGENT.md) for codegen/nested-`<svg>` details and [src/lib/AGENT.md](src/lib/AGENT.md) for runtime primitives.

## ⚙️ Conventions & Stack

- SolidJS ≥ 1.6 (peer), pure ESM (no CJS, no Vite config). Build = `pnpm generate:assets && pnpm copy:licenses && tsdown -l error`.
- Stack: `tsdown`, `unplugin-solid`, Vitest, `tsgo --noEmit` for typecheck.
- `scripts/generate-assets.ts` reads `core/svgs/` and emits `.tsx` files; `src/lib/` holds hand-written helpers; `src/index.ts` re-exports barrels.

## ⚠️ Known Constraints

- **`unplugin-solid` stays on `^2`:** Version 3 compiles to Solid 2 (`@solidjs/web`), which Solid 1 peers lack. Renovate blocks `>=3` until Solid 2 stabilizes, and `pnpm check:dist-imports` catches undeclared runtime imports.
- **Solid component shape:** Use `solid-js` JSX namespace and `Component<Props>` (never `React.FC` or `forwardRef`).
- **`tsdown` `exports: true` rewrites `bin`:** Declare any future `bin` via `exports: { bin: { ... } }`.
- **Demo sync:** `apps/solid-app`'s `icon-list.ts` must stay synced via `pnpm generate:icons` when core SVGs change.
