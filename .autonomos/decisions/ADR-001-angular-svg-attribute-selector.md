# ADR-001 — Angular attribute selector on `<svg>`

- Status: accepted
- Scope: `packages/angular` component selector and host-class architecture
- Provenance: `packages/angular/AGENT.md` (pre-v2 stabilization, D-NORM-1, D-NORM-ANG-1)

## Context

Every other framework package (`react`, `vue`, `solid`, `svelte`, `react-native`) renders a component that owns its `<svg>` element (e.g. `<HomeBoldIcon />`). In Angular, putting `<svg>` inside a Component template caused nested-SVG or missing-namespace issues with Angular's template compiler and added a wrapper host element around `<svg>`.

## Decision

Every generated Angular icon component is a `@Component` with an attribute selector on a user-authored `<svg>` element: `svg[solarName]` (e.g. `<svg solarHomeBold [size]="24"></svg>`).

- Static style components use `solar{PascalName}{Style}` (dropping the `Icon` suffix) and bind `host: { class: 'solar solar-{kebabName}-{styleKebab}' }`.
- Dynamic components use `solar{PascalName}Dynamic` (differentiating from static components) and omit their own `host.class` (D-NORM-ANG-1) so the child static icon owns the CSS class without duplicate classes on nested elements.
- `IconBase` exposes `alt`, `color`, `size`, `strokeWidth`, `secondaryColor`, `secondaryOpacity`, `isolated`, `ariaLabel`, and `titleAttr`.

## Alternatives considered

Wrapper component rendering an inner `<svg>` (like React/Vue/Solid/Svelte). Rejected due to Angular SVG namespace quirks and extra DOM wrapper elements.

## Consequences

- Clean single `<svg>` DOM element matching Lucide's Angular convention (`<svg lucideFileText />`), with direct CSS targeting and clean accessibility tree.
- Intentionally diverges from the `<HomeBoldIcon />` pattern used by the other packages; do not treat this as a parity bug.
- Selector discovery relies on importing the component class and reading its JSDoc.
