# AGENT: patches

Dependency patches applied through `patchedDependencies` in `pnpm-workspace.yaml`.

- **`rolldown-plugin-dts` is patched** (`patches/rolldown-plugin-dts@0.29.0.patch`, `patchedDependencies` in `pnpm-workspace.yaml`). Upstream recomputes the whole re-export graph once per output chunk, which is quadratic with `unbundle: true` (about 10.7k modules per framework package): the `@solar-icons/react` build went from 179 s to 16 s with the memoized version and a byte-identical output. When tsdown or the plugin is upgraded, check whether upstream fixed it (`resolveAllModuleExports` called once per build) and drop the patch; otherwise re-create it with `pnpm patch` for the new version. Measurements: `.autonomos/worklogs/2026-11-11-CI-BUILD-PERF.md`.
- **`publint` is patched too** (`patches/publint@0.3.25.patch`): its tarball file system and export glob scan searched the whole file list for every entry, quadratic on packages with about 10k generated modules (`check:exports` 91 s -> 6 s locally, 309 s -> expected seconds in CI, same findings). Same upgrade rule as above: drop or re-create the patch when publint is upgraded and upstream has fixed it.
