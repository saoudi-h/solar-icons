# @solar-icons/react-perf

## 2.0.0-beta.0

### Major Changes

- [#497](https://github.com/saoudi-h/solar-icons/pull/497) [`ce17fd4`](https://github.com/saoudi-h/solar-icons/commit/ce17fd452be3b89bc63f2dd4c93c537984addd70) Thanks [@saoudi-h](https://github.com/saoudi-h)! - ## 2.0.0

    Unify `@solar-icons/react` and `@solar-icons/react-perf` into a single package
    (`react-perf` is discontinued). Add per-style import paths, a dynamic icon
    component, the `Icon` suffix on every component, `SolarProvider` + `useSolar`,
    duotone `secondaryColor`/`secondaryOpacity`, and `strokeWidth` across all
    frameworks. Switch to a CSS-variable cascade and kebab-case import paths.

## 2.1.1

### Patch Changes

- [#461](https://github.com/saoudi-h/solar-icons/pull/461) [`da571b7`](https://github.com/saoudi-h/solar-icons/commit/da571b744d1253dbf0e37d81f161a8645c6ae4b9) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: logout Bold icon

## 2.1.0

### Minor Changes

- [#379](https://github.com/saoudi-h/solar-icons/pull/379) [`9c9977c`](https://github.com/saoudi-h/solar-icons/commit/9c9977cd9011a51aa76d7bd2bce44962cf128702) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Fix spelling errors and rename icons across the monorepo. This includes correcting typos like Magnifer -> Magnifier and providing deprecated aliases for backwards compatibility.

### Patch Changes

- [#379](https://github.com/saoudi-h/solar-icons/pull/379) [`9c9977c`](https://github.com/saoudi-h/solar-icons/commit/9c9977cd9011a51aa76d7bd2bce44962cf128702) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Fix: properly generate deprecated aliases for JSDoc (force release).

- [#379](https://github.com/saoudi-h/solar-icons/pull/379) [`9c9977c`](https://github.com/saoudi-h/solar-icons/commit/9c9977cd9011a51aa76d7bd2bce44962cf128702) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Fix: properly generate @deprecated JSDoc for aliased icons and ensure they are exported.

- chore: graduation from beta to stable release

## 2.1.0-beta.3

### Patch Changes

- fix: implement dynamic alias generation for compound names (e.g. MinimalisticMagnifer) and remove generated files from git tracking

## 2.1.0-beta.2

### Patch Changes

- Fix: properly generate deprecated aliases for JSDoc (force release).

## 2.1.0-beta.1

### Patch Changes

- Fix: properly generate @deprecated JSDoc for aliased icons and ensure they are exported.

## 2.1.0-beta.0

### Minor Changes

- Fix spelling errors and rename icons across the monorepo. This includes correcting typos like Magnifer -> Magnifier and providing deprecated aliases for backwards compatibility.

## 2.0.3

### Patch Changes

- [`5087588`](https://github.com/saoudi-h/solar-icons/commit/5087588f42724808f4b8914ae02806c9bcb601fc) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Update tsdown config to generate proper lib/\* exports structure

## 2.0.2

### Patch Changes

- [`7b2cd99`](https://github.com/saoudi-h/solar-icons/commit/7b2cd9972cd11433dfe3b6aae84ae12ae8bd21c1) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Refactor icon generation system with improved file structure and naming

## 2.0.1

### Patch Changes

- [`a443619`](https://github.com/saoudi-h/solar-icons/commit/a443619233cdc6c0118529e49229a9846331917c) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Optimize tree-shaking with explicit exports and unbundle build.

## 2.0.0

### Major Changes

- [`8d4109c`](https://github.com/saoudi-h/solar-icons/commit/8d4109cf13ef3f371a302016ec4f1fb34aaf4fcb) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Migrate to ESM-only, remove CJS support

## 1.0.0

### Major Changes

- [#2](https://github.com/saoudi-h/solar-icons/pull/2) [`f3d074e`](https://github.com/saoudi-h/solar-icons/commit/f3d074ea1042f1f83167a3e93653c6619b9b715b) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Initial major release: Optimized React package for Solar Icons, supporting flexible imports and improved performance.
