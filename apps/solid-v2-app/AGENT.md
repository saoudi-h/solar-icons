# AGENT: apps/solid-v2-app

- Vite-based Solid 2 demo for `@solar-icons/solid-v2`.
- Ignored from changesets. Unlike `apps/solid-app`, it has no Vite or TypeScript source aliases and consumes the built `@solar-icons/solid-v2` package directly through its `exports`.
- `dev` and `build` run `prepare:catalog`, which regenerates test app icon lists and builds `@solar-icons/solid-v2` before Vite starts.
