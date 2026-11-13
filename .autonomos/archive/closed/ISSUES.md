# Closed issues

> Append-only history moved out of `.autonomos/ISSUES.md`. Not startup context; search by ID.

## From ISSUES.md (moved 2026-11-12)

## [ISSUE-ICON-DETAIL-TABS-OVERFLOW] Make every icon-detail tab reachable at constrained widths

- Type: problem
- Status: resolved
- Evidence: The `/icons` detail panel exposes 11 tabs for variants, tags, and framework snippets. In the local preview, the panel's tab list is about 508px wide while its content is about 838px wide. Its computed horizontal overflow is `visible`, so the tabs after the visible range are clipped rather than scrollable. The `MotionTabs` class combines `overflow-auto` with `md:overflow-visible`, which removes the scroll container at the breakpoint used by the constrained layout. The maintainer reproduced the same behavior on production, so the issue predates the current homepage button pass. The root `ReactLenis` configuration already sets `allowNestedScroll: true`, but that does not confirm whether Lenis is handling or interfering with horizontal tab input.
- Impact: Users on tablet-sized or otherwise constrained layouts cannot reach all framework tabs, including Svelte, Solid, Angular, Static, and JS. They cannot inspect or copy the corresponding snippets even though those options remain present in the page markup.
- Desired outcome: Every icon-detail tab remains reachable with pointer, touch, and keyboard input at supported widths. The active-tab indicator and content animation remain coherent, and the fix does not introduce page-level scrolling or regress the icon grid, category navigation, detail panel, or Lenis behavior. Validation must cover wide, intermediate, and narrow layouts in light and dark themes, including the real horizontal interaction path.
- Resolution: The tab strip now keeps native horizontal overflow at every breakpoint and each tab preserves its intrinsic width. The rendered intermediate-width panel exposes a scrollable strip, and off-screen Svelte and JS tabs were selected successfully without adding a global or local Lenis override. Mobile viewport and direct touch validation remain manual follow-ups because the integrated browser cannot emulate that viewport.
- Tasks: DOCS-ICON-DETAIL-TABS-OVERFLOW

## [ISSUE-DOCS-COMPAT-LAYER] Replace the Next compatibility layer of the docs-start app

- Type: problem
- Status: resolved
- Evidence: `apps/docs-start/src/compat` re-implements `next/link`, `next/image`, `next/navigation` and `nuqs` so that the components shared from `apps/docs` (reached through the `@/*` alias) run unchanged under TanStack Start. About 17 shared files depend on it, through aliases in `tsconfig.json` and `vite.config.ts`.
- Impact: The layer was a shortcut to migrate quickly. It hides which API each component really uses, keeps the app coupled to the Next app, and blocks removing `apps/docs`.
- Desired outcome: The shared components live in `apps/docs-start` and use the TanStack Router and Start APIs directly. The aliases and the `compat` folder are gone, with unchanged behavior and URLs.
- Tasks: DOCS-START-REMOVE-COMPAT
