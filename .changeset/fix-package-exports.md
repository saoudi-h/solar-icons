---
'@solar-icons/svelte': patch
'@solar-icons/react-native': patch
'@solar-icons/js': patch
---

Fix the public export maps so every documented entry point resolves to a real published file:

- `@solar-icons/svelte`: single-icon and dynamic subpaths now map the default and `svelte` conditions to `.svelte` source and type targets to `.svelte.d.ts`, instead of nonexistent `.js`/`.d.ts` files.
- `@solar-icons/react-native`: added the six per-style wildcard subpaths (`@solar-icons/react-native/bold/heart`, etc.) which previously fell through to `ERR_MODULE_NOT_FOUND`.
- `@solar-icons/js`: removed phantom `./sprite`, `./icons.json`, `./metadata.json`, and `./metadata-descriptions.json` exports that pointed to files the package does not build.
