# @solar-icons/vue

## 2.0.2

### Patch Changes

- [#531](https://github.com/saoudi-h/solar-icons/pull/531) [`171c9bf`](https://github.com/saoudi-h/solar-icons/commit/171c9bf09ea9c86887260db9ba23479cc7b1f5e2) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: correct the ticket-star icon name, preserve ticker-star compatibility exports, and refresh logout Bold SVG

## 2.0.1

### Patch Changes

- [`db82d4a`](https://github.com/saoudi-h/solar-icons/commit/db82d4ae32ffa2df1caf037dfa744037f08ebbff) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Publish the stable release as 2.0.1: the `2.0.0` version string cannot be republished because an unpublished 2025 build left a permanent tombstone on the npm registry (E400 "Cannot publish over previously published version").

## 2.0.0

### Breaking Changes

- **Named exports everywhere.** Per-file default imports (`import HomeBold from ...`) are replaced by named exports (`import { HomeBoldIcon } from ...`).
- **Per-style import paths.** Category imports are gone. Import per style (`@solar-icons/vue/bold`) or per icon (`@solar-icons/vue/bold/home`).
- **`Icon` suffix on every component name.** `Home` is now `HomeIcon`.
- **`mirrored` prop removed.**
- **Duotone props renamed.** `duotoneColor`/`duotoneOpacity` → `secondaryColor`/`secondaryOpacity`.
- **Icon renames.** Some icon names changed (`weigher` → `scale`, ...). See the [migration guide](https://solar-icons.vercel.app/docs/v2/migration-to-v2/icon-renames).
- **ESM-only.** `require()` no longer works.

### What's New

- **`<SolarProvider>` + `useSolar()`** with CSS-variable theming (`--solar-color`, `--solar-size`, `--solar-stroke-width`, `--solar-secondary-color`, `--solar-secondary-opacity`).
- **Dynamic icons** (`@solar-icons/vue/dynamic`) with runtime `weight` switching.
- **Migration codemod**: `npx @solar-icons/codemod` migrates v1 projects automatically.

### Patch Changes

- [#513](https://github.com/saoudi-h/solar-icons/pull/513) [`b766d76`](https://github.com/saoudi-h/solar-icons/commit/b766d7630624520b819a05a1a3837c4d5f66d4e7) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: resolve inline style specificity preventing utility classes from overriding icon size

- [#523](https://github.com/saoudi-h/solar-icons/pull/523) [`ecec198`](https://github.com/saoudi-h/solar-icons/commit/ecec19849ac677bf1039559afc5c2d8546697c0d) Thanks [@saoudi-h](https://github.com/saoudi-h)! - SolarIconsPlugin now applies the configured defaults as `--solar-*` CSS variables on `document.body` (client side), so icons pick up the plugin config without a `<SolarProvider>`. `useSolar()` works in any component after installing the plugin, and calling `setColor`/`setSize` updates every icon.

- [`afce9f9`](https://github.com/saoudi-h/solar-icons/commit/afce9f92c6fb3b0e90caf14a62e27e508f9a3820) Thanks [@saoudi-h](https://github.com/saoudi-h)! - update readme files

## 2.0.0-beta.3

### Patch Changes

- [#513](https://github.com/saoudi-h/solar-icons/pull/513) [`b766d76`](https://github.com/saoudi-h/solar-icons/commit/b766d7630624520b819a05a1a3837c4d5f66d4e7) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: resolve inline style specificity preventing utility classes from overriding icon size

## 2.0.0-beta.2

### Patch Changes

- [`afce9f9`](https://github.com/saoudi-h/solar-icons/commit/afce9f92c6fb3b0e90caf14a62e27e508f9a3820) Thanks [@saoudi-h](https://github.com/saoudi-h)! - update readme files

## 2.0.0-beta.1

### Patch Changes

- [#504](https://github.com/saoudi-h/solar-icons/pull/504) [`3723c12`](https://github.com/saoudi-h/solar-icons/commit/3723c12f5e096ff2670067a0d3df9960990c31dc) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: update airbuds and radial-blur icons (fix stroke width and styles)

## 1.2.1

### Patch Changes

- [#461](https://github.com/saoudi-h/solar-icons/pull/461) [`da571b7`](https://github.com/saoudi-h/solar-icons/commit/da571b744d1253dbf0e37d81f161a8645c6ae4b9) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: logout Bold icon

## 1.2.0

### Minor Changes

- [#379](https://github.com/saoudi-h/solar-icons/pull/379) [`9c9977c`](https://github.com/saoudi-h/solar-icons/commit/9c9977cd9011a51aa76d7bd2bce44962cf128702) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Fix spelling errors and rename icons across the monorepo. This includes correcting typos like Magnifer -> Magnifier and providing deprecated aliases for backwards compatibility.

### Patch Changes

- [#379](https://github.com/saoudi-h/solar-icons/pull/379) [`9c9977c`](https://github.com/saoudi-h/solar-icons/commit/9c9977cd9011a51aa76d7bd2bce44962cf128702) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Fix: properly generate deprecated aliases as separate files to ensure they are exported correctly.

- chore: graduation from beta to stable release

## 1.2.0-beta.2

### Patch Changes

- fix: implement dynamic alias generation for compound names (e.g. MinimalisticMagnifer) and remove generated files from git tracking

## 1.2.0-beta.1

### Patch Changes

- Fix: properly generate deprecated aliases as separate files to ensure they are exported correctly.

## 1.2.0-beta.0

### Minor Changes

- Fix spelling errors and rename icons across the monorepo. This includes correcting typos like Magnifer -> Magnifier and providing deprecated aliases for backwards compatibility.

## 1.1.0

### Minor Changes

- [`b213337`](https://github.com/saoudi-h/solar-icons/commit/b2133371937f5000436eddeb64839ee01335656d) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Removed unused Nuxt-specific code (simplifies package)

## 1.0.0

### Major Changes

- [`6e53b56`](https://github.com/saoudi-h/solar-icons/commit/6e53b568e86a1131bb876f7eb4650bf0cce8005d) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Initial release of @solar-icons/vue package
