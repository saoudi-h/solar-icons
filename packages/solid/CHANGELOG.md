# @solar-icons/solid

## 2.0.2

### Patch Changes

- [#531](https://github.com/saoudi-h/solar-icons/pull/531) [`171c9bf`](https://github.com/saoudi-h/solar-icons/commit/171c9bf09ea9c86887260db9ba23479cc7b1f5e2) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: correct the ticket-star icon name, preserve ticker-star compatibility exports, and refresh logout Bold SVG

## 2.0.1

### Patch Changes

- [#531](https://github.com/saoudi-h/solar-icons/pull/531) [`29bfda4`](https://github.com/saoudi-h/solar-icons/commit/29bfda4ced2e0db927c10fb87b8484c9400d8ed4) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: correct the ticket-star icon name, preserve ticker-star compatibility exports, and refresh logout Bold SVG

## 2.0.0

### Breaking Changes

- **`Icon` suffix on every component name.** `Home` is now `HomeIcon`.
- **Per-style import paths.** Category imports are gone. Import per style (`@solar-icons/solid/bold`) or per icon (`@solar-icons/solid/bold/home`).
- **`mirrored` prop removed.**
- **Duotone props renamed.** `duotoneColor`/`duotoneOpacity` → `secondaryColor`/`secondaryOpacity`.
- **Icon renames.** Some icon names changed (`weigher` → `scale`, ...). See the [migration guide](https://solar-icons.vercel.app/docs/v2/migration-to-v2/icon-renames).
- **ESM-only.** `require()` no longer works.

### What's New

- **`<SolarProvider>` + `useSolar()`** with CSS-variable theming (`--solar-color`, `--solar-size`, `--solar-stroke-width`, `--solar-secondary-color`, `--solar-secondary-opacity`).
- **Dynamic icons** (`@solar-icons/solid/dynamic`) with runtime `weight` switching.
- **Migration codemod**: `npx @solar-icons/codemod` migrates v1 projects automatically.

### Patch Changes

- [#513](https://github.com/saoudi-h/solar-icons/pull/513) [`b766d76`](https://github.com/saoudi-h/solar-icons/commit/b766d7630624520b819a05a1a3837c4d5f66d4e7) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: resolve inline style specificity preventing utility classes from overriding icon size

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

## 1.0.1

### Patch Changes

- [#461](https://github.com/saoudi-h/solar-icons/pull/461) [`da571b7`](https://github.com/saoudi-h/solar-icons/commit/da571b744d1253dbf0e37d81f161a8645c6ae4b9) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: logout Bold icon
