---
'@solar-icons/solid': patch
---

fix(solid): fix SSR exports, dynamic-icon bundling, and Solid 1 packaging

- Ship conditional `dom`, `ssr`, and `solid` JSX runtime variants for `IconBase` and `SolarProvider` via `#lib/*` imports and subpath exports matching `solid-js` condition resolution (`solid`, `worker`, `browser`, `deno`, `node`, `default`), fixing `Client-only API called on the server side` errors when consuming the built package on the server.
- Bundle `@solar-icons/core` dependencies directly into `dist/lib/dynamic-icon.mjs` and emit `DynamicIcon` exports in `dist/lib/dynamic-icon.d.mts`, eliminating leaked `dist/core/` files and metadata side effects.
- Fix `DynamicIcon` reactivity on `weight` changes and prevent `weight`/`styles` attributes from leaking onto `<svg>` elements.
- Tighten `peerDependencies["solid-js"]` to `^1.6.0` for Solid 1 compatibility.
