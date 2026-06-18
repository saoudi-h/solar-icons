---
name: "@solar-icons/svelte"
type: "package"
status: "active"
---
# AGENT CONTEXT: packages/svelte

## 🧠 Role

`@solar-icons/svelte@1.1.1`. Svelte 5 distribution of Solar Icons. Ships unit-per-style components: one `.svelte` file per icon per style, statically importable, no runtime style switching.

## ⚙️ Conventions

- Svelte 5 with runes (`$props`, `$state`, `$derived`).
- Build = `pnpm generate:assets && pnpm copy:licenses && pnpm build:package` where `build:package` is `svelte-package --input ./src`.
- `scripts/generate-assets.ts` reads SVGs from `core/svgs/` and emits `.svelte` files.
- `scripts/compile-svelte.mjs` and `scripts/copy-svelte.mjs` are pre-`@sveltejs/package` shims.
- `scripts/utils.ts` is the local helper module.
- `prettier-plugin-svelte` is a dev dep; the shared `@tala-tools/prettier` does not include Svelte formatting.

## 📁 Key Directories

| Path | Description |
|---|---|
| `scripts/generate-assets.ts` | Reads from `core/svgs/`, produces SFCs. |
| `scripts/compile-svelte.mjs`, `scripts/copy-svelte.mjs` | Pre-svelte-package shims. |
| `scripts/utils.ts` | Local helpers. |
| `src/icons/style/` | Generated: one folder per style, one file per icon. |
| `src/lib/` | Hand-written helpers. |
| `src/index.ts` | Barrel re-export. |

## 🏗 Stack

- Svelte ≥ 4 (peer); the source targets Svelte 5 runes.
- `@sveltejs/package` for the package build, `@sveltejs/vite-plugin-svelte` for dev.
- `svelte2tsx` + `svelte-check` for typecheck.
- `tsdown` available as a devDep (currently unused at build time).
- `prettier-plugin-svelte` for formatting.

## ⚠️ Known Constraints

- **`peerDependencies.svelte: ">= 4.0.0"`** — the source uses Svelte 5 runes, so Svelte 4 users may see compatibility issues.
- **Svelte 5 runes are required in the generated code** (`$props()` destructuring, not legacy `export let`).
- **`scripts/compile-svelte.mjs` and `scripts/copy-svelte.mjs`** are holdovers; verify by running `pnpm build` with them disabled before deletion.
