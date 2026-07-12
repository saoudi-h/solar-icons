# @solar-icons/svelte

## 2.0.0-beta.0

### Major Changes

- [#497](https://github.com/saoudi-h/solar-icons/pull/497) [`ce17fd4`](https://github.com/saoudi-h/solar-icons/commit/ce17fd452be3b89bc63f2dd4c93c537984addd70) Thanks [@saoudi-h](https://github.com/saoudi-h)! - ## 2.0.0

    Unify `@solar-icons/react` and `@solar-icons/react-perf` into a single package
    (`react-perf` is discontinued). Add per-style import paths, a dynamic icon
    component, the `Icon` suffix on every component, `SolarProvider` + `useSolar`,
    duotone `secondaryColor`/`secondaryOpacity`, and `strokeWidth` across all
    frameworks. Switch to a CSS-variable cascade and kebab-case import paths.

## 1.1.1

### Patch Changes

- [#461](https://github.com/saoudi-h/solar-icons/pull/461) [`da571b7`](https://github.com/saoudi-h/solar-icons/commit/da571b744d1253dbf0e37d81f161a8645c6ae4b9) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: logout Bold icon

## 1.1.0

### Minor Changes

- [#379](https://github.com/saoudi-h/solar-icons/pull/379) [`9c9977c`](https://github.com/saoudi-h/solar-icons/commit/9c9977cd9011a51aa76d7bd2bce44962cf128702) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Fix spelling errors and rename icons across the monorepo. This includes correcting typos like Magnifer -> Magnifier and providing deprecated aliases for backwards compatibility.

### Patch Changes

- [#379](https://github.com/saoudi-h/solar-icons/pull/379) [`9c9977c`](https://github.com/saoudi-h/solar-icons/commit/9c9977cd9011a51aa76d7bd2bce44962cf128702) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Fix: properly generate deprecated aliases as separate files to ensure they are exported correctly.

- chore: graduation from beta to stable release

## 1.1.0-beta.2

### Patch Changes

- fix: implement dynamic alias generation for compound names (e.g. MinimalisticMagnifer) and remove generated files from git tracking

## 1.1.0-beta.1

### Patch Changes

- Fix: properly generate deprecated aliases as separate files to ensure they are exported correctly.

## 1.1.0-beta.0

### Minor Changes

- Fix spelling errors and rename icons across the monorepo. This includes correcting typos like Magnifer -> Magnifier and providing deprecated aliases for backwards compatibility.

## 1.0.1

### Patch Changes

- [#349](https://github.com/saoudi-h/solar-icons/pull/349) [`c3b3918`](https://github.com/saoudi-h/solar-icons/commit/c3b3918aec536453e2a222f8d4143002829a4a8f) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Fix package publication issues
    - Add README.md for npm and GitHub
    - Fix build script to generate icons before packaging
    - Remove src folder from published package (only dist is needed)
