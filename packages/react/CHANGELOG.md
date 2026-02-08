# @solar-icons/react

## 1.1.0-beta.2

### Patch Changes

- fix: implement dynamic alias generation for compound names (e.g. MinimalisticMagnifer) and remove generated files from git tracking

## 1.1.0-beta.1

### Patch Changes

- Fix: properly generate @deprecated JSDoc for aliased icons.

## 1.1.0-beta.0

### Minor Changes

- Fix spelling errors and rename icons across the monorepo. This includes correcting typos like Magnifer -> Magnifier and providing deprecated aliases for backwards compatibility.

## 1.0.3

### Patch Changes

- [#373](https://github.com/saoudi-h/solar-icons/pull/373) [`8d14035`](https://github.com/saoudi-h/solar-icons/commit/8d14035a28ab8ea97dae6778cbe8774bbbeeed16) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix(react): switch to automatic JSX runtime for React 17+ compatibility

    This fixes a critical issue introduced in v1.0.2 where the build output used `React.createElement` without properly importing React, causing "React is not defined" errors in Next.js and other modern React frameworks.

    **Root cause:** The update of build dependencies (`@vitejs/plugin-react` 4→5, `vite` 5→7) changed how the classic JSX runtime handled imports, resulting in broken builds.

    **Changes:**
    - Switch `jsxRuntime` from `'classic'` to `'automatic'` in Vite config
    - Add `react/jsx-runtime` and `react/jsx-dev-runtime` to Rollup externals

    The automatic JSX runtime (React 17+) generates `jsx()` calls instead of `React.createElement()`, eliminating the need for explicit React imports.

## 1.0.2

### Patch Changes

- [#371](https://github.com/saoudi-h/solar-icons/pull/371) [`7b2bb42`](https://github.com/saoudi-h/solar-icons/commit/7b2bb4202c6843b59d0a9f9aeb7a3afc6b611bc1) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Add Next.js App Router support with "use client" directive for client components

## 1.0.1

### Patch Changes

- [#2](https://github.com/saoudi-h/solar-icons/pull/2) [`f3d074e`](https://github.com/saoudi-h/solar-icons/commit/f3d074ea1042f1f83167a3e93653c6619b9b715b) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Initial major release: Optimized React package for Solar Icons, supporting flexible imports and improved performance.

## 1.0.0

### Major Changes

- [`6cbfb3f`](https://github.com/saoudi-h/solar-icons/commit/6cbfb3ffc2d773414f0fbde6f2518138c643d4df) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Initial release of the Solar icon library and supporting packages. This version marks the first major release for all packages.
