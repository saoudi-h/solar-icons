# @solar-icons/nuxt

## 2.3.1

### Patch Changes

- [#560](https://github.com/saoudi-h/solar-icons/pull/560) [`95f0b7c`](https://github.com/saoudi-h/solar-icons/commit/95f0b7c94840e77e3e3a431d9f02f3f5ed007a08) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Refresh the generated packages with the latest icon catalogue, enriched metadata, and corrected public inventory counts.

- Updated dependencies [[`95f0b7c`](https://github.com/saoudi-h/solar-icons/commit/95f0b7c94840e77e3e3a431d9f02f3f5ed007a08)]:
  - @solar-icons/vue@2.3.1

## 2.3.0

### Minor Changes

- [#555](https://github.com/saoudi-h/solar-icons/pull/555) [`747b9af`](https://github.com/saoudi-h/solar-icons/commit/747b9af569f499ad330e7679b179318da4ec61b1) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Refresh the icon catalogue and generated framework packages with the latest SVG quality corrections. Add the canonical `chart-square-2` name while preserving `chat-square-2` as a deprecated compatibility alias, and keep the codemod and package metadata aligned with the updated catalogue.

### Patch Changes

- Updated dependencies [[`747b9af`](https://github.com/saoudi-h/solar-icons/commit/747b9af569f499ad330e7679b179318da4ec61b1)]:
  - @solar-icons/vue@2.3.0

## 2.2.0

### Minor Changes

- [#551](https://github.com/saoudi-h/solar-icons/pull/551) [`343029a`](https://github.com/saoudi-h/solar-icons/commit/343029ab152b6853e4f3bf538260d61662a3e9ee) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Expand the catalogue from 1,268 to 1,379 icons across all six styles, including the shadcn/ui coverage extensions and family variants. Preserve non-breaking file and chat naming changes through deprecated aliases, normalize those aliases during codemod migrations, and expose the updated catalogue across the CLI, MCP, static, and framework packages.

### Patch Changes

- Updated dependencies [[`343029a`](https://github.com/saoudi-h/solar-icons/commit/343029ab152b6853e4f3bf538260d61662a3e9ee)]:
  - @solar-icons/vue@2.2.0

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
- Updated dependencies [[`b5ab9d2`](https://github.com/saoudi-h/solar-icons/commit/b5ab9d2f72b93af91086711e7e073e63781a1785), [`b5ab9d2`](https://github.com/saoudi-h/solar-icons/commit/b5ab9d2f72b93af91086711e7e073e63781a1785)]:
  - @solar-icons/vue@2.1.0

## 2.0.3

### Patch Changes

- [#531](https://github.com/saoudi-h/solar-icons/pull/531) [`171c9bf`](https://github.com/saoudi-h/solar-icons/commit/171c9bf09ea9c86887260db9ba23479cc7b1f5e2) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: correct the ticket-star icon name, preserve ticker-star compatibility exports, and refresh logout Bold SVG

- Updated dependencies [[`171c9bf`](https://github.com/saoudi-h/solar-icons/commit/171c9bf09ea9c86887260db9ba23479cc7b1f5e2)]:
  - @solar-icons/vue@2.0.3

## 2.0.2

### Patch Changes

- [#531](https://github.com/saoudi-h/solar-icons/pull/531) [`29bfda4`](https://github.com/saoudi-h/solar-icons/commit/29bfda4ced2e0db927c10fb87b8484c9400d8ed4) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: correct the ticket-star icon name, preserve ticker-star compatibility exports, and refresh logout Bold SVG

- Updated dependencies [[`29bfda4`](https://github.com/saoudi-h/solar-icons/commit/29bfda4ced2e0db927c10fb87b8484c9400d8ed4)]:
  - @solar-icons/vue@2.0.2

## 2.0.1

### Patch Changes

- [`db82d4a`](https://github.com/saoudi-h/solar-icons/commit/db82d4ae32ffa2df1caf037dfa744037f08ebbff) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Republish as 2.0.1 so the pinned `@solar-icons/vue` dependency resolves: the published 2.0.0 pinned `@solar-icons/vue` at the exact (unavailable) `2.0.0` version.

- Updated dependencies [[`db82d4a`](https://github.com/saoudi-h/solar-icons/commit/db82d4ae32ffa2df1caf037dfa744037f08ebbff)]:
  - @solar-icons/vue@2.0.1

## 2.0.0

### Breaking Changes

- **Module options reworked.** `color`, `size`, `strokeWidth`, `weight` were removed from `SolarNuxtModuleOptions` in early v2 betas; the final API is `namePrefix`, `autoImport`, `provider` (default `true`), and the styling options `color`, `size`, `strokeWidth`, `secondaryColor`, `secondaryOpacity` (applied when `provider: true`).
- **Auto-imported names changed.** `{prefix}{IconName}{Style}Icon` for the main barrel, `{prefix}{IconName}Icon` for dynamic icons.
- **`mirrored` option removed.**

### What's New

- **Global provider mode** (`provider: true`): the module provides a global `SolarState` and writes `--solar-*` variables on `document.body` (client side). `useSolar()` works anywhere.
- **Dynamic icons** auto-imported with runtime `weight` switching.
- **`#solar-icons` aliases** for explicit imports with full TypeScript support.

### Patch Changes

- [#523](https://github.com/saoudi-h/solar-icons/pull/523) [`ecec198`](https://github.com/saoudi-h/solar-icons/commit/ecec19849ac677bf1039559afc5c2d8546697c0d) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Keep the module defaults (color `currentColor`, size 24, stroke width 1.5, secondary color `currentColor`, secondary opacity 0.5) when only some styling options are set on `solarIcons`, instead of dropping the unset ones. The module now also warns when styling options are ignored because `provider: false` is set.

- [`afce9f9`](https://github.com/saoudi-h/solar-icons/commit/afce9f92c6fb3b0e90caf14a62e27e508f9a3820) Thanks [@saoudi-h](https://github.com/saoudi-h)! - update readme files

- Updated dependencies [[`b766d76`](https://github.com/saoudi-h/solar-icons/commit/b766d7630624520b819a05a1a3837c4d5f66d4e7), [`ecec198`](https://github.com/saoudi-h/solar-icons/commit/ecec19849ac677bf1039559afc5c2d8546697c0d), [`afce9f9`](https://github.com/saoudi-h/solar-icons/commit/afce9f92c6fb3b0e90caf14a62e27e508f9a3820)]:
  - @solar-icons/vue@2.0.0

## 2.0.0-beta.3

### Patch Changes

- Updated dependencies [[`b766d76`](https://github.com/saoudi-h/solar-icons/commit/b766d7630624520b819a05a1a3837c4d5f66d4e7)]:
  - @solar-icons/vue@2.0.0-beta.3

## 2.0.0-beta.2

### Patch Changes

- [`afce9f9`](https://github.com/saoudi-h/solar-icons/commit/afce9f92c6fb3b0e90caf14a62e27e508f9a3820) Thanks [@saoudi-h](https://github.com/saoudi-h)! - update readme files

- Updated dependencies [[`afce9f9`](https://github.com/saoudi-h/solar-icons/commit/afce9f92c6fb3b0e90caf14a62e27e508f9a3820)]:
  - @solar-icons/vue@2.0.0-beta.2

## 2.0.0-beta.1

### Patch Changes

- [#504](https://github.com/saoudi-h/solar-icons/pull/504) [`3723c12`](https://github.com/saoudi-h/solar-icons/commit/3723c12f5e096ff2670067a0d3df9960990c31dc) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: update airbuds and radial-blur icons (fix stroke width and styles)

- Updated dependencies [[`3723c12`](https://github.com/saoudi-h/solar-icons/commit/3723c12f5e096ff2670067a0d3df9960990c31dc)]:
  - @solar-icons/vue@2.0.0-beta.1

## 1.2.1

### Patch Changes

- [#461](https://github.com/saoudi-h/solar-icons/pull/461) [`da571b7`](https://github.com/saoudi-h/solar-icons/commit/da571b744d1253dbf0e37d81f161a8645c6ae4b9) Thanks [@saoudi-h](https://github.com/saoudi-h)! - fix: logout Bold icon

- Updated dependencies [[`da571b7`](https://github.com/saoudi-h/solar-icons/commit/da571b744d1253dbf0e37d81f161a8645c6ae4b9)]:
  - @solar-icons/vue@1.2.1

## 1.2.0

### Minor Changes

- [#379](https://github.com/saoudi-h/solar-icons/pull/379) [`9c9977c`](https://github.com/saoudi-h/solar-icons/commit/9c9977cd9011a51aa76d7bd2bce44962cf128702) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Fix spelling errors and rename icons across the monorepo. This includes correcting typos like Magnifer -> Magnifier and providing deprecated aliases for backwards compatibility.

### Patch Changes

- chore: graduation from beta to stable release

- Updated dependencies [[`9c9977c`](https://github.com/saoudi-h/solar-icons/commit/9c9977cd9011a51aa76d7bd2bce44962cf128702), [`9c9977c`](https://github.com/saoudi-h/solar-icons/commit/9c9977cd9011a51aa76d7bd2bce44962cf128702)]:
  - @solar-icons/vue@1.2.0

## 1.2.0-beta.2

### Patch Changes

- Updated dependencies []:
  - @solar-icons/vue@1.2.0-beta.2

## 1.2.0-beta.1

### Patch Changes

- Updated dependencies []:
  - @solar-icons/vue@1.2.0-beta.1

## 1.2.0-beta.0

### Minor Changes

- Fix spelling errors and rename icons across the monorepo. This includes correcting typos like Magnifer -> Magnifier and providing deprecated aliases for backwards compatibility.

### Patch Changes

- Updated dependencies []:
  - @solar-icons/vue@1.2.0-beta.0

## 1.1.3

### Patch Changes

- [`892835b`](https://github.com/saoudi-h/solar-icons/commit/892835b8a63f1db5a3f74037a79b79a6b1a410e3) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Moving @solar-icons/vue from peerDependency to direct dependency simplifies installation to a single package and ensures version compatibility, following Nuxt module best practices.

## 1.1.2

### Patch Changes

- [`146ca7e`](https://github.com/saoudi-h/solar-icons/commit/146ca7e7e7de34d4d56a75b24bc0fb4a86ec6a2d) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Fix runtime plugin reference after TS to JS build conversion

## 1.1.1

### Patch Changes

- [`ce3045e`](https://github.com/saoudi-h/solar-icons/commit/ce3045ed198e9d958e6e3b4f9f98838be6d86a88) Thanks [@saoudi-h](https://github.com/saoudi-h)! - The --stub flag was causing build issues in the prepack script. This patch removes it to ensure proper package building during prepack phase.

## 1.1.0

### Minor Changes

- [`24e2273`](https://github.com/saoudi-h/solar-icons/commit/24e22739500ec66179f14499c3e39f58cd411df7) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Critical dependency bug fix

## 1.0.0

### Patch Changes

- Updated dependencies [[`b213337`](https://github.com/saoudi-h/solar-icons/commit/b2133371937f5000436eddeb64839ee01335656d)]:
  - @solar-icons/vue@1.1.0
