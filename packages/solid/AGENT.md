---
name: '@solar-icons/solid'
type: 'package'
status: 'active'
---

# AGENT CONTEXT: packages/solid

## 🧠 Role

`@solar-icons/solid@1.0.1`. SolidJS distribution of Solar Icons. Ships unit-per-style components: one `.tsx` file per icon per style, statically importable.

## ⚙️ Conventions

- SolidJS ≥ 1.6 (peer).
- Build = `pnpm generate:assets && pnpm copy:licenses && tsdown -l error`. Pure ESM, no CJS.
- `scripts/generate-assets.ts` reads SVGs from `core/svgs/` and emits `.tsx` files.
- `scripts/utils.ts` is the local helper module.

## 📁 Key Directories

| Path                         | Description                                                |
| ---------------------------- | ---------------------------------------------------------- |
| `scripts/generate-assets.ts` | Reads from `core/svgs/`, produces TSX.                     |
| `scripts/utils.ts`           | Local helpers.                                             |
| `src/icons/style/`           | Generated: one folder per style, one `.tsx` file per icon. |
| `src/lib/`                   | Hand-written helpers.                                      |
| `src/index.ts`               | Barrel re-export.                                          |

## 🏗 Stack

- `solid-js` ≥ 1.6 (peer).
- `tsdown` for the ESM bundle.
- `unplugin-solid` for the SolidJS JSX transform.
- Vitest for tests.
- `tsgo --noEmit` for typecheck.

## 🔧 V3-16b: CSS vars + classes + provider

- **`src/lib/IconBase.tsx`**: CSS classes `solar` + `solar-{kebabName}`, CSS vars via `??` pattern (color, size, strokeWidth), `secondaryColor`/`secondaryOpacity` duotone props, `aria-hidden="true"` by default unless `alt`/`aria-label`/`title` set. User `class` merged with solar classes, user `style` spread AFTER CSS vars.
- **`src/lib/SolarProvider.tsx`**: Wrapper `<div>` with CSS custom properties on `style`. SolidJS `createContext`/`useContext` provides a ref with `setProperty()` — no re-render of icons. `useSolar()` hook returns `setColor`, `setSize`, `setStrokeWidth`, `setDuotoneColor`, `setDuotoneOpacity`.
- **`scripts/parser-hook.ts`**: Passes `iconName="${icon.kebabName}"` and `iconBody={\`...\`}`to generated components. The body is passed as a **string prop** (not as JSX children) to bypass the Solid template compiler's`<svg>` namespace wrapping. See "Solid nested-`<svg>` workaround" below.

## ⚠️ Solid nested-`<svg>` workaround (CLEAN-09, 2026-06-25)

The Solid compiler wraps any single SVG-element child in an `<svg>...</svg>` template to set the namespace. When a generated icon component renders `<IconBase><path d="..." /></IconBase>`, the compiler emits `template('<svg><path .../></svg>', false, true, false)`. Since `IconBase` itself renders an `<svg>`, the runtime produces nested `<svg>` elements — invalid HTML/SVG.

**The fix**: introduced `iconBody?: string` on `IconBaseProps`. IconBase mounts the body via `<g innerHTML={iconBody} />`. The generated component now passes the body as a string prop, which the Solid compiler does not wrap.

**Do not** change generated icons back to JSX children without first testing that the new template approach is used. The pattern is verified by inspecting the dist: no `template()` import in `dist/icons/*/*.mjs`, the body is a string prop.

- **Pitfall**: No default on `size`/`color`/`strokeWidth` in `IconBase` — the `??` operator must fall through to CSS var. `--solar-icon-size` must be in pixels (`24px`), bare numbers won't work with `var()` in CSS.

## ⚠️ Known Constraints

- **No Vite config, no CJS output** — all bundling goes through `tsdown`.
- **JSX namespace must be `solid-js`** in the generated files; the `Component<Props>` shape (not React's `FC`).
- **No `forwardRef`** — Solid components are plain functions.
- **`mergeProps` no longer used for defaults** — `IconBase.tsx` uses `??` with CSS var fallbacks instead of `mergeProps({ size: '1em', color: 'currentColor' })`.
- **`tsdown` regression (DEBUG-01/02/03)**: same caveat as other packages if a `bin` is ever added.

## V3 Propagation (2026-06-24)

- Directory structure is now flat (no categories). All icon files live directly under `src/icons/<style>/`.
- Dynamic exports added: `src/icons/dynamic/` with 1246 per-icon files and `DynamicIcon` component.
