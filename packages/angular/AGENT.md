---
name: '@solar-icons/angular'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/angular

## 🧠 Role

`@solar-icons/angular` (v2 stable). Angular 17+ distribution shipping standalone, Signals-based unit-per-style components using attribute selectors (`svg[solarName]`). See [ADR-001](../../.autonomos/decisions/ADR-001-angular-svg-attribute-selector.md) for why Angular intentionally diverges from the component-renders-`<svg>` pattern, and [src/lib/AGENT.md](src/lib/AGENT.md) for runtime primitives and test details.

## ⚙️ Conventions

- Angular 17–22 (peer: `@angular/common`, `@angular/core` at `"17.x - 22.x"`). Standalone components only (no NgModules); `input()` and `computed()` signals.
- Build = `pnpm generate:assets && pnpm copy:licenses && rimraf dist out-tsc && npx ngc -p tsconfig.lib.json && node scripts/strip-js-comments.mjs`. One `ngc` pass emits `.js` and `.d.ts` with comments (the `.d.ts` keep the icon documentation); the script then removes the comments from the `.js` only, with TypeScript's printer (same bytes as a `removeComments` compile, without a second ~30 s pass).
- `scripts/generate-assets.ts` reads SVGs from `core/svgs/` (`svgsDir` option) and emits flat files under `src/icons/`. `scripts/parser-hook.ts` is the codegen template (`@xmldom/xmldom` devDep re-parses SVG bodies into `h()` trees).
- All shared codegen helpers (`applyDuotoneStyle`, `WEIGHT_MAP`, `Weight`, `StyleKey`, `StyleComponentsMap`, `toPascalCase`, `IconWeight`, `ParsedIcon`, `IconContext`) come from `@solar-icons/core` (Path A). No local re-declarations.

## 📁 Output Shape

- `src/public-api.ts` — generated package entrypoint.
- `src/lib/` — hand-written helpers (`icon-base`, `solar-provider`, `icon-registry`, `dynamic-icon.component`) and generated `all-icons.types.ts` (`SolarIconName` union).
- `src/icons/<style>/<name>-<style>.ts` — one component per icon per style (unique to Angular; avoids folder-per-icon).
- `src/icons/dynamic/<name>-dynamic.ts` — multi-style component switching via `weight` input.
- `src/icons/styled.ts` — global barrel.

## 🏗 Stack

- Angular 17–22, `@angular-devkit/build-angular` 22, `@angular/cli` 22, `@angular/compiler-cli` 22, `@analogjs/vite-plugin-angular` 2.x, `tslib`.
- Vitest + `jsdom` + `@vitest/coverage-v8`; `tsc --noEmit -p tsconfig.lib.json` for typecheck (not `tsgo`).

## ⚠️ Known Constraints

- **Static vs dynamic selectors:** Static `@Component` decorators bind `host: { class: 'solar solar-{kebabName}-{styleKebab}' }` (`solarHomeBold`). Dynamic components (`solarHomeDynamic`) omit `host.class` so nested elements don't duplicate classes (D-NORM-ANG-1). `[solarIcon]` directive renders icons at runtime from a class or registered string name (`provideSolarIcons`).
- **Dynamic default weight must be `Linear`** (D-ANGULAR-DEFAULT-WEIGHT): `generate-assets.ts` reorders `@if/@else if` so `Linear` precedes `Bold` (`WEIGHTS` starts with `Bold`).
- **`ngc` `rootDir` resolved via Path A:** Imports come from `node_modules/@solar-icons/core/dist/...`, so TS6059 does not occur.
- **`mirrored` removed in v2:** Use CSS `transform: scaleX(-1)`.
