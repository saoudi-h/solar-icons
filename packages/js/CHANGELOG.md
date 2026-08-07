# @solar-icons/js

## 2.0.0

### Patch Changes

- [#523](https://github.com/saoudi-h/solar-icons/pull/523) [`9fa6eeb`](https://github.com/saoudi-h/solar-icons/commit/9fa6eeb4e6bada001510bc7804756f401f99379f) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Fix the public export maps so every documented entry point resolves to a real published file:

    - `@solar-icons/svelte`: single-icon and dynamic subpaths now map the default and `svelte` conditions to `.svelte` source and type targets to `.svelte.d.ts`, instead of nonexistent `.js`/`.d.ts` files.
    - `@solar-icons/react-native`: added the six per-style wildcard subpaths (`@solar-icons/react-native/bold/heart`, etc.) which previously fell through to `ERR_MODULE_NOT_FOUND`.
    - `@solar-icons/js`: removed phantom `./sprite`, `./icons.json`, `./metadata.json`, and `./metadata-descriptions.json` exports that pointed to files the package does not build.

- [`afce9f9`](https://github.com/saoudi-h/solar-icons/commit/afce9f92c6fb3b0e90caf14a62e27e508f9a3820) Thanks [@saoudi-h](https://github.com/saoudi-h)! - update readme files

## 2.0.0-beta.2

### Patch Changes

- [`afce9f9`](https://github.com/saoudi-h/solar-icons/commit/afce9f92c6fb3b0e90caf14a62e27e508f9a3820) Thanks [@saoudi-h](https://github.com/saoudi-h)! - update readme files

## 2.0.0-beta.1

### Patch Changes

- [#504](https://github.com/saoudi-h/solar-icons/pull/504) [`3723c12`](https://github.com/saoudi-h/solar-icons/commit/3723c12f5e096ff2670067a0d3df9960990c31dc) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: update airbuds and radial-blur icons (fix stroke width and styles)

## 2.0.0-beta.0

### Major Changes

- [#501](https://github.com/saoudi-h/solar-icons/pull/501) [`763a66a`](https://github.com/saoudi-h/solar-icons/commit/763a66a29d1f8a1e56d5e998cbac027062962b36) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Add `@solar-icons/js`: Vanilla JavaScript DOM injection library for Solar Icons. Features lightweight ASTs, tree-shakable ESM exports, and custom inline styling mapping for properties like size, color, and duotone properties.
