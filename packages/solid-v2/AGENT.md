---
name: '@solar-icons/solid-v2'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/solid-v2

## 🧠 Role

`@solar-icons/solid-v2`: Solar Icons for Solid 2 (prerelease), a deliberate duplicate of `packages/solid`. It must never depend on `@solar-icons/solid`, and neither package should be refactored into a shared layer. The `v2` is the Solid major, not the Solar Icons major (both packages stay on Solar Icons major 2).

## ⚠️ Known Constraints

- **Private until the first release is decided:** `changeset publish` publishes any non-private package whose version is not on npm, and a changeset on a prerelease base (`2.0.0-experimental.0`) computes stable `2.0.0`. Do not set `private: false` without a chosen versioning and dist-tag strategy.
- **Condition order mirrors Solid:** `solid`, `worker`, `browser`, `deno`, `node`, default. Without `browser`, Node + jsdom loads the SSR build next to the DOM runtime and renders nothing, silently. Only `IconBase` and `SolarProvider` are built per target (DOM, SSR, JSX source) through `#internal/*` imports.
- **Entries are explicit:** every icon module plus `lib/dynamic-icon` is a `tsdown` entry. Deprecated alias modules are re-export-only and are otherwise dropped, and `dynamic-icon` loses its `DynamicIcon` declaration.
- **Tests:** `tests/package/` needs a fresh `build`; `consumer.test.ts` packs the tarball and uses it from an empty project. A passing `tsc` or `src/` test is not proof for `dist/`.
- **Solid 2 API:** state updates batch until `flush()`; use `omit`/`merge`, `dynamicComponent`, context as provider, and `JSX` from `@solidjs/web`.
- **Upstream RC gaps:** `@solidjs/web` rc.22 types import `csstype` (undeclared) and `heldRead` (not declared by `solid-js`). The repo maps `csstype` in `tsconfig.json`; filter the `heldRead` error in `tsc` checks with `skipLibCheck: false`.
