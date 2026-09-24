# @solar-icons/react-native

## 2.3.2

### Patch Changes

- [#562](https://github.com/saoudi-h/solar-icons/pull/562) [`d08cab3`](https://github.com/saoudi-h/solar-icons/commit/d08cab3c2d29aa81e0dfc4cb00fc11a7f5c6db34) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Apply the latest Figma corrections to the generated Solar Icons SVG catalogue.

## 2.3.1

### Patch Changes

- [#560](https://github.com/saoudi-h/solar-icons/pull/560) [`95f0b7c`](https://github.com/saoudi-h/solar-icons/commit/95f0b7c94840e77e3e3a431d9f02f3f5ed007a08) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Refresh the generated packages with the latest icon catalogue, enriched metadata, and corrected public inventory counts.

## 2.3.0

### Minor Changes

- [#555](https://github.com/saoudi-h/solar-icons/pull/555) [`747b9af`](https://github.com/saoudi-h/solar-icons/commit/747b9af569f499ad330e7679b179318da4ec61b1) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Refresh the icon catalogue and generated framework packages with the latest SVG quality corrections. Add the canonical `chart-square-2` name while preserving `chat-square-2` as a deprecated compatibility alias, and keep the codemod and package metadata aligned with the updated catalogue.

## 2.2.0

### Minor Changes

- [#551](https://github.com/saoudi-h/solar-icons/pull/551) [`343029a`](https://github.com/saoudi-h/solar-icons/commit/343029ab152b6853e4f3bf538260d61662a3e9ee) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Expand the catalogue from 1,268 to 1,379 icons across all six styles, including the shadcn/ui coverage extensions and family variants. Preserve non-breaking file and chat naming changes through deprecated aliases, normalize those aliases during codemod migrations, and expose the updated catalogue across the CLI, MCP, static, and framework packages.

## 2.1.0

### Minor Changes

- [#535](https://github.com/saoudi-h/solar-icons/pull/535) [`b5ab9d2`](https://github.com/saoudi-h/solar-icons/commit/b5ab9d2f72b93af91086711e7e073e63781a1785) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Add the next curated Solar extension batch: barcode, barcode-scan, binoculars, bot, brain,
  paint-brush, toolbox, videocamera-off, webcam, webcam-off, and the Wi-Fi status variants. All
  extensions include the six canonical styles and auditable metadata.

### Patch Changes

- [#535](https://github.com/saoudi-h/solar-icons/pull/535) [`b5ab9d2`](https://github.com/saoudi-h/solar-icons/commit/b5ab9d2f72b93af91086711e7e073e63781a1785) Thanks [@saoudi-h](https://github.com/saoudi-h)! - add the extended `add`, `minus`, `close`, `exclamation-mark`, and
  `question-mark` icons, correct the `file-smile` name, preserve the
  metadata/deprecation validation model across generated packages, and expose
  auditable extension priorities for future icon additions.

## 2.0.2

### Patch Changes

- [#531](https://github.com/saoudi-h/solar-icons/pull/531) [`171c9bf`](https://github.com/saoudi-h/solar-icons/commit/171c9bf09ea9c86887260db9ba23479cc7b1f5e2) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: correct the ticket-star icon name, preserve ticker-star compatibility exports, and refresh logout Bold SVG

## 2.0.1

### Patch Changes

- [#531](https://github.com/saoudi-h/solar-icons/pull/531) [`29bfda4`](https://github.com/saoudi-h/solar-icons/commit/29bfda4ced2e0db927c10fb87b8484c9400d8ed4) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: correct the ticket-star icon name, preserve ticker-star compatibility exports, and refresh logout Bold SVG

## 2.0.0

### Breaking Changes

- **No CSS variables.** Theming goes through `<SolarProvider>` (React context) and props: `prop → provider → default`.
- **`size` is a number only** (pixels).
- **`alt` maps to `accessible` + `accessibilityLabel`** on the SVG.
- **`Icon` suffix on every component name.** `Home` is now `HomeIcon`.
- **Per-style import paths.** Category imports are gone. Import per style (`@solar-icons/react-native/bold`) or per icon (`@solar-icons/react-native/bold/home`).
- **`mirrored` prop removed.**
- **Duotone props renamed.** `duotoneColor`/`duotoneOpacity` → `secondaryColor`/`secondaryOpacity`.
- **Icon renames.** Some icon names changed (`weigher` → `scale`, ...). See the [migration guide](https://solar-icons.vercel.app/docs/v2/migration-to-v2/icon-renames).
- **ESM-only.** `require()` no longer works.

### What's New

- **`<SolarProvider>` + `useSolar()`** (React context) for global defaults.
- **Dynamic icons** (`@solar-icons/react-native/dynamic`) with runtime `weight` switching.
- **Migration codemod**: `npx @solar-icons/codemod` migrates v1 projects automatically.

### Patch Changes

- [#523](https://github.com/saoudi-h/solar-icons/pull/523) [`9fa6eeb`](https://github.com/saoudi-h/solar-icons/commit/9fa6eeb4e6bada001510bc7804756f401f99379f) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Fix the public export maps so every documented entry point resolves to a real published file:

  - `@solar-icons/svelte`: single-icon and dynamic subpaths now map the default and `svelte` conditions to `.svelte` source and type targets to `.svelte.d.ts`, instead of nonexistent `.js`/`.d.ts` files.
  - `@solar-icons/react-native`: added the six per-style wildcard subpaths (`@solar-icons/react-native/bold/heart`, etc.) which previously fell through to `ERR_MODULE_NOT_FOUND`.
  - `@solar-icons/js`: removed phantom `./sprite`, `./icons.json`, `./metadata.json`, and `./metadata-descriptions.json` exports that pointed to files the package does not build.

- [#523](https://github.com/saoudi-h/solar-icons/pull/523) [`ecec198`](https://github.com/saoudi-h/solar-icons/commit/ecec19849ac677bf1039559afc5c2d8546697c0d) Thanks [@saoudi-h](https://github.com/saoudi-h)! - The documented `alt` prop now maps to `accessible` and `accessibilityLabel` on the SVG element, giving the icon an accessible name on iOS and Android.

- [`afce9f9`](https://github.com/saoudi-h/solar-icons/commit/afce9f92c6fb3b0e90caf14a62e27e508f9a3820) Thanks [@saoudi-h](https://github.com/saoudi-h)! - update readme files

## 2.0.0-beta.2

### Patch Changes

- [`afce9f9`](https://github.com/saoudi-h/solar-icons/commit/afce9f92c6fb3b0e90caf14a62e27e508f9a3820) Thanks [@saoudi-h](https://github.com/saoudi-h)! - update readme files

## 2.0.0-beta.1

### Patch Changes

- [#504](https://github.com/saoudi-h/solar-icons/pull/504) [`3723c12`](https://github.com/saoudi-h/solar-icons/commit/3723c12f5e096ff2670067a0d3df9960990c31dc) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: update airbuds and radial-blur icons (fix stroke width and styles)

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

- [`74ed188`](https://github.com/saoudi-h/solar-icons/commit/74ed188ec98e1e42813a8645c2c2df7cd6fed4df) Thanks [@saoudi-h](https://github.com/saoudi-h)! - update README
