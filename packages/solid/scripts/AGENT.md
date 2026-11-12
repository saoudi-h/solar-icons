# AGENT: packages/solid/scripts

Scope: SolidJS icon codegen (`generate-assets.ts`, `parser-hook.ts`).

- **Nested-`<svg>` workaround:** Solid's JSX compiler wraps any single SVG-element child in `template('<svg>...</svg>', false, true, false)`, which produces invalid nested `<svg>` inside `IconBase`. Generated components pass the body via `iconBody={\`...\`}`string prop (mounted with`<g innerHTML={iconBody} />`). Do not revert to JSX children without verifying no `template()`import appears in`dist/icons/_/_.mjs`.
- **Duotone format:** `parser-hook.ts` MUST call `applyDuotoneStyle(icon.duotoneAccentInner, 'html')` — never `'jsx'`. Because `iconBody` is mounted via `innerHTML`, JSX `{{ }}` syntax is invalid CSS and gets ignored.
- **Shared helpers:** Import `parseSvgs`, `forEachIcon*`, `WEIGHTS`, `WEIGHT_MAP`, and types from `@solar-icons/core` (no local `utils.ts`).
