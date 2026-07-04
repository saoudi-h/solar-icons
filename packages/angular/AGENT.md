---
name: '@solar-icons/angular'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/angular

## 🧠 Role

`@solar-icons/angular@3.0.0`. Angular 17+ distribution of Solar Icons. Ships standalone, Signals-based unit-per-style components. See [Design rationale](#-design-rationale--why-attribute-selector-on-svg) below for why the Angular API is structurally different from the other packages.

## ⚙️ Conventions

- Angular 17–22 (peer: `@angular/common`, `@angular/core` at `"17.x - 22.x"`).
- Standalone components (no NgModules). `input()` signals for props, `computed()` for derived state.
- Build = `pnpm generate:assets && pnpm copy:licenses && rimraf dist out-tsc && npx ngc -p tsconfig.lib.json && npx ngc -p tsconfig.js.json`. Two `ngc` passes: `.lib.json` for types, `.js.json` for JS emit.
- `scripts/generate-assets.ts` reads SVGs from `core/svgs/` (path passed explicitly as `svgsDir` option) and emits the per-icon folder tree. `scripts/parser-hook.ts` is the codegen template.
- All shared codegen helpers (`applyDuotoneStyle`, `WEIGHT_MAP`, `Weight`, `StyleKey`, `StyleComponentsMap`, `toPascalCase`, `IconWeight`, `ParsedIcon`, `IconContext`) come from `@solar-icons/core` (Path A, 2026-06-25). No local re-declarations.

## 📁 Output Shape (V3, post-V3-13 kebab-case rename)

```
src/
  public-api.ts              # package entrypoint (generated)
  lib/                       # hand-written helpers (icon-base, solar-provider, icon-registry, dynamic-icon.component, ...)
  icons/
    <style>/
      <name>-<style>.ts     # one component per icon per style
    dynamic/
      <name>-dynamic.ts     # one component per logical icon (weight input)
    styled.ts                # global barrel
  lib/all-icons.types.ts     # generated SolarIconName string union
```

The output shape is required by Angular's compiler. Note: the `<name>-<style>.ts` filename pattern (e.g. `home-bold.ts`) is unique to Angular — the other packages use `<name>.ts` inside `<style>/` directories. This avoids a folder-per-icon and lets Angular's component metadata reference a single file.

## 🏗 Stack

- Angular 17–22 (peer: `@angular/common`, `@angular/core`).
- `@angular-devkit/build-angular` 22, `@angular/cli` 22, `@angular/compiler-cli` 22.
- `@analogjs/vite-plugin-angular` 2.x for Vite-based dev.
- `tslib` for `__decorate` helpers.
- Vitest + `jsdom` + `@vitest/coverage-v8` for tests.
- `tsc --noEmit -p tsconfig.lib.json` for typecheck (not `tsgo`).

## 🔧 V3-16b: CSS vars + classes + provider

- **`src/lib/icon-base.ts`**: CSS vars via `computed()` signals and `??` pattern. Host bindings use `[style.width]`, `[style.height]`, `[style.color]` (not `[attr.*]`) so `var()` CSS function works. `secondaryColor`/`secondaryOpacity` inputs set `[style.--solar-duotone-*]` host bindings. `aria-hidden` computed from `alt`, `ariaLabel`, `titleAttr` inputs. `class: 'solar'` is NOT in IconBase host — each generated component sets its own `class: 'solar solar-{kebabName}-{styleKebab}'` (e.g. `solar solar-heart-bold`) via `host:` in `@Component` metadata.
- **`src/lib/solar-provider.ts`**: `SolarProviderComponent` (selector `solar-provider` — see ANG-FIX-4 in TASKS.md for a rename candidate) wraps content in `<div>` with CSS custom properties. `SolarService` (`@Injectable()`) scoped to the component-level provider, exposes `setColor`, `setSize`, `setStrokeWidth`, `setDuotoneColor`, `setDuotoneOpacity`. `useSolar()` function calls `inject(SolarService)` — must be called in injection context (constructor/property initializer).
- **`scripts/parser-hook.ts`**: Generated `@Component` decorators include `host: { 'class': 'solar solar-{icon.kebabName}-{styleKebab}' }`.
- **Pitfall**: `input()` signals must NOT have defaults — `undefined` falls through to CSS var. `[style.width]` (not `[attr.width]`) because `var()` only works in CSS properties.

## ⚠️ Known Constraints

- **Two `ngc` passes** required because type emit and JS emit need different `tsconfig` settings.
- **`@xmldom/xmldom` is a devDep** — used by `scripts/parser-hook.ts` to re-parse generated SVG bodies into h() trees.
- **Standalone components only.** No NgModule wrappers.
- **Signals-based inputs** (`input()`), not `@Input()` decorators, in the generated code.
- **`SolarDynamicIcon` directive** (selector `[solarIcon]`) is implemented and exported. The `solarIcon` input accepts a `SolarIconName` string (from `all-icons.types.ts`) or a component class. Components are looked up in the `SOLAR_ICON_REGISTRY` token; if not registered, a `console.warn` fires.
- **ngc rootDir no longer conflicts** with `@solar-icons/core` (Path A, 2026-06-25). The import resolves to `node_modules/@solar-icons/core/dist/...`, which is outside the package source tree — no TS6059.

## V3 Propagation (2026-06-24)

- Directory structure is now flat (no categories). Icon component files live directly under `src/icons/<style>/<name>-<style>.ts`.
- `mirrored` prop removed (was pre-V3, never worked as a CSS var, removed in `d348aad6`).
- Dynamic per-icon components added: `src/icons/dynamic/<name>-dynamic.ts` with `weight` input.
- All V3 features implemented: `strokeWidth`, `secondaryColor`/`secondaryOpacity`, `ariaLabel`, `titleAttr`, CSS vars (`--solar-icon-color`, `--solar-icon-size`, `--solar-stroke-width`, `--solar-duotone-color`, `--solar-duotone-opacity`), CSS classes (`solar-icon solar-{kebab}`).

## 🧠 Design rationale — why attribute selector on `<svg>`

Angular is the only package in this monorepo that does NOT render its own `<svg>` element. Every generated icon component is a `@Component` whose selector is `svg[solarName]` (e.g. `svg[solarHomeBold]`) — the user writes `<svg solarHomeBold [size]="24"></svg>` and the component injects the SVG paths as children. The DOM contains a native `<svg>` element, not a custom wrapper tag.

### Why this design, not the others (Component-renders-svg like React/Vue/Solid/Svelte)

This is **deliberate and predates V3** (the pattern was stabilized in `0549a41c`, May 2026, when the pre-V3 Component+hostDirectives+icon-template architecture was simplified to the current Directive+Component pattern). Two reasons:

1. **DOM cleanliness**. The rendered tree is a real `<svg>`, not `<solar-icon><svg>...</svg></solar-icon>`. This is the same choice Lucide made (`<svg lucideFileText />` — see [lucide.dev](https://lucide.dev)). Direct CSS targeting, accessibility tree, browser devtools, and screen readers see one element, not two. `<svg>` is the canonical HTML element for an icon.

2. **SVG namespace safety**. Angular's template compiler is opinionated about SVG. Some pre-V3 attempts to put `<svg>` inside a Component template produced nested-svg or missing-namespace bugs. Using an attribute selector on a user-authored `<svg>` avoids the entire class of problems.

### Trade-offs accepted

- The selector pattern is not as discoverable as `<HomeBoldIcon />` (which is what 6 other packages do). A user coming from React/Vue may write `<HomeBoldIcon></HomeBoldIcon>` and be confused. **This is an intentional cross-package divergence** — Lucide-style native DOM is preferred over consistency.
- Each generated component is heavier in bytes (selector string in metadata) than a tag-name selector would be. Negligible.
- The selector is the PascalCase icon name with the `solar` prefix: `solarHomeBold` for the static `HomeBold` class, `solarHomeDynamic` for the dynamic `HomeDynamic` class. The `Icon` suffix was dropped in V3 (2026-06-25) because the `solar` prefix already namespaces and Angular's tooling does not surface selector collisions the way bundlers for the other packages do. The dynamic component uses the `Dynamic` suffix instead of `Icon` to differentiate from the static style components. Importing the component class is the only way to discover the selector name; the JSDoc on each generated component shows the correct selector.

### Public V3 features in the `IconBase` inputs

- `alt` — sets `<title>` and `aria-label` for screen readers.
- `color` — CSS color (defaults to `currentColor` via `--solar-icon-color` CSS var).
- `size` — width/height in CSS units (defaults to `24px` via `--solar-icon-size`).
- `strokeWidth` — line width, only meaningful for `Linear`, `Broken`, `LineDuotone` styles.
- `secondaryColor` / `secondaryOpacity` — duotone accent customization (CSS vars `--solar-duotone-color`, `--solar-duotone-opacity`).
- `isolated` — when `true`, bypasses all `SolarProvider` CSS vars; SVG attrs use hardcoded defaults (`24px`, `currentColor`, `1.5`), and duotone vars are set to `initial`.
- `ariaLabel`, `titleAttr` — explicit a11y overrides; `aria-hidden` is auto-set to `"true"` if none of these are provided.

The CSS class `solar-icon solar-{kebabName}` is set per-component (in the generated `@Component.host`), not in `IconBase` — so each icon gets its specific kebab class for fine-grained CSS targeting.
