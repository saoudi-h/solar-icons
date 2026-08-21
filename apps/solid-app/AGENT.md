# AGENT: apps/solid-app

- Vite-based SolidJS demo for `@solar-icons/solid`.
- Ignored from changesets. Its catalog and generated Solid source are prepared from
  `packages/core/svgs` by `dev` and `build`; Vite aliases the demo directly to that source so a
  full `tsdown` package bundle is not required for local iteration.
