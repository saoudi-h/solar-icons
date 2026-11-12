# AGENT: packages/solid/src/lib

Scope: Hand-written SolidJS primitives (`IconBase.tsx`, `SolarProvider.tsx`).

- **`IconBase.tsx`:** Emits `solar` + `solar-{kebabName}` (dynamic) or `solar-{kebabName}-{styleKebab}` (static via `parser-hook.ts`). Uses `??` CSS var fallbacks (no defaults on `size`/`color`/`strokeWidth`; no `mergeProps`), `secondaryColor`/`secondaryOpacity` duotone props, `aria-hidden="true"` unless `alt`/`aria-label`/`title` is set, and spreads user `style` after CSS vars. `--solar-icon-size` must include units (e.g. `24px`), never bare numbers.
- **`SolarProvider.tsx`:** Wraps children in a `<div>` with CSS custom properties, providing a `setProperty()` ref via `createContext`/`useContext` (no icon re-renders). `useSolar()` exposes `setColor`, `setSize`, `setStrokeWidth`, `setDuotoneColor`, `setDuotoneOpacity`.
- **Prop→signal sync:** `createSignal(props.color)` captures only the initial value. Sync props to signals with `createEffect(() => setColorSignal(() => props.color))` (and the other 4 props); the setter wrapper `() => props.x` avoids function-updater ambiguity and lets parent prop changes override internal `useSolar()` updates.
- **V2 state:** `mirrored` is removed (use CSS `transform: scaleX(-1)`). `SolarState` uses `secondaryColor`/`secondaryOpacity`. `Accessor<T>` values are functions (`solar.color()`).
