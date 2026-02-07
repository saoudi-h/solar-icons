---
"@solar-icons/react": patch
---

fix(react): switch to automatic JSX runtime for React 17+ compatibility

This fixes a critical issue introduced in v1.0.2 where the build output used `React.createElement` without properly importing React, causing "React is not defined" errors in Next.js and other modern React frameworks.

**Root cause:** The update of build dependencies (`@vitejs/plugin-react` 4→5, `vite` 5→7) changed how the classic JSX runtime handled imports, resulting in broken builds.

**Changes:**
- Switch `jsxRuntime` from `'classic'` to `'automatic'` in Vite config
- Add `react/jsx-runtime` and `react/jsx-dev-runtime` to Rollup externals

The automatic JSX runtime (React 17+) generates `jsx()` calls instead of `React.createElement()`, eliminating the need for explicit React imports.
