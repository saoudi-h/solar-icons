---
name: '@solar-icons/angular'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/angular

## 🧠 Role

`@solar-icons/angular@1.0.1`. Angular 17+ distribution of Solar Icons. Ships standalone, Signals-based unit-per-style components: one folder per icon, one `index.ts` per icon re-exporting the standalone component, statically importable.

## ⚙️ Conventions

- Angular 17–22 (peer; see Constraints).
- Standalone components (no NgModules). `input()` signals for props, `computed()` for derived state.
- Build = `pnpm generate:assets && pnpm copy:licenses && rimraf dist out-tsc && npx ngc -p tsconfig.lib.json && npx ngc -p tsconfig.js.json`. Two `ngc` passes: `.lib.json` for types, `.js.json` for JS emit.
- `scripts/generate-assets.ts` reads SVGs from `core/svgs/` and emits the per-icon folder tree.
- `scripts/utils.ts` is the local helper module.

## 📁 Output Shape

```
src/
  public-api.ts              # package entrypoint
  lib/                       # hand-written helpers
  icons/
    <style>/
      <kebab-name>/
        index.ts             # re-exports the component
        <kebab-name>.component.ts
```

The folder-per-icon shape is required by Angular's compiler and module resolution. It is the only package in the monorepo with this output shape.

## 🏗 Stack

- Angular 17–22 (peer: `@angular/common`, `@angular/core`).
- `@angular-devkit/build-angular` 22, `@angular/cli` 22, `@angular/compiler-cli` 22.
- `@analogjs/vite-plugin-angular` 2.x for Vite-based dev.
- `tslib` for `__decorate` helpers.
- Vitest + `jsdom` + `@vitest/coverage-v8` for tests.
- `tsc --noEmit -p tsconfig.lib.json` for typecheck (not `tsgo`).

## 🔧 V3-16b: CSS vars + classes + provider

- **`src/lib/icon-base.ts`**: CSS vars via `computed()` signals and `??` pattern. Host bindings use `[style.width]`, `[style.height]`, `[style.color]` (not `[attr.*]`) so `var()` CSS function works. `secondaryColor`/`secondaryOpacity` inputs set `[style.--solar-duotone-*]` host bindings. `aria-hidden` computed from `alt`, `ariaLabel`, `titleAttr` inputs. `class: 'solar-icon'` REMOVED from IconBase host — each generated component sets its own `class: 'solar-icon solar-{kebab}'` via `host:` in `@Component` metadata.
- **`src/lib/solar-provider.ts`**: `SolarProviderComponent` (selector `solar-provider`) wraps content in `<div>` with CSS custom properties. `SolarService` (`@Injectable()`) scoped to the component-level provider, exposes `setColor`, `setSize`, `setStrokeWidth`, `setDuotoneColor`, `setDuotoneOpacity`. `useSolar()` function calls `inject(SolarService)` — must be called in injection context (constructor/property initializer).
- **`scripts/parser-hook.ts`**: Generated `@Component` decorators include `host: { 'class': 'solar-icon solar-{icon.kebabName}' }`.
- **Pitfall**: `input()` signals must NOT have defaults — `undefined` falls through to CSS var. `[style.width]` (not `[attr.width]`) because `var()` only works in CSS properties.

## ⚠️ Known Constraints

- **ngc rootDir error (pre-existing, V3-16b)**: `ngc -p tsconfig.lib.json` fails with `TS6059` because `parser-hook.ts` imports from `../../core/src/parser.ts` which is outside `rootDir: "src"`. The `generate:assets` step (tsx) works fine; only the `ngc` pass fails. This was pre-existing before V3-16b.
- **Peer-dep range mismatch**: `peerDependencies` declares `@angular/common` and `@angular/core` as `"17.x - 21.x"`, but the dev deps pin to 22.x.
- **Two `ngc` passes** required because type emit and JS emit need different `tsconfig` settings.
- **`@xmldom/xmldom` is a devDep** — used by tests to parse generated SVGs without a real DOM.
- **Standalone components only.** No NgModule wrappers.
- **Signals-based inputs** (`input()`), not `@Input()` decorators, in the generated code.

## V3 Propagation (2026-06-24)

- Directory structure is now flat (no categories). Icon component files live directly under `src/icons/<style>/<kebab-name>-<style>.ts`.
- `mirrored` prop removed from `SolarDynamicIcon`.
- Dynamic per-icon components added: `src/icons/dynamic/<name>-dynamic.ts` with `weight` input.
