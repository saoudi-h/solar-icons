# @solar-icons/svelte

## 1.1.0-beta.2

### Patch Changes

- fix: implement dynamic alias generation for compound names (e.g. MinimalisticMagnifer) and remove generated files from git tracking

## 1.1.0-beta.1

### Patch Changes

- Fix: properly generate deprecated aliases as separate files to ensure they are exported correctly.

## 1.1.0-beta.0

### Minor Changes

- Fix spelling errors and rename icons across the monorepo. This includes correcting typos like Magnifer -> Magnifier and providing deprecated aliases for backwards compatibility.

## 1.0.1

### Patch Changes

- [#349](https://github.com/saoudi-h/solar-icons/pull/349) [`c3b3918`](https://github.com/saoudi-h/solar-icons/commit/c3b3918aec536453e2a222f8d4143002829a4a8f) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Fix package publication issues
    - Add README.md for npm and GitHub
    - Fix build script to generate icons before packaging
    - Remove src folder from published package (only dist is needed)
