---
'@solar-icons/svelte': patch
---

Add explicit `.js` / `/index.js` extensions to relative imports and exports so types resolve under `moduleResolution: "node16"` and `"nodenext"`, annotate static icon `$props()` with `IconProps`, and remove the unbundled `@solar-icons/core/runtime` dependency from published `lib` files.
