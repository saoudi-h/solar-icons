# AGENT: packages/vue/scripts

Scope: Vue icon codegen (`generate-assets.ts`, `parser-hook.ts`).

- **Named exports:** `parser-hook.ts:vueComponentFile` emits `export const ${icon.pascalName}Icon = ...` (keeping default `import IconBase from '../../lib/IconBase.vue'`). `generateDynamicFile` uses named imports `import { ${pascalName}Icon as ${w} } from '../${kebab}/${icon.name}'` and `export const ${pascalName}Icon = ...`. Barrel re-exports use `export { ${name}Icon } from ...` (no `default as` indirection).
- **Dynamic icon `styles` prop:** `lib/dynamic-icon.vue` requires `styles: StyleComponents` (mapping `bold` / `bold-duotone` / `broken` / `linear` / `line-duotone` / `outline` → component) and selects via `WEIGHT_MAP[weight]`. `generateDynamicFile` must pass `styles: { bold: Bold, ... }` in `h(DynamicIcon, ...)` (see canonical reference in `packages/react/scripts/generate-assets.ts:115-167`).
- **Flat output:** `src/icons/<style>/` and `src/icons/dynamic/` have no category directories.
