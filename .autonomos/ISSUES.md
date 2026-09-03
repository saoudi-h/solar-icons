# Open Issues & Proposals

## [ISSUE-UI-FOUNDATION-REFRESH] Bring the UI foundation up to date without losing project customizations

- Type: problem
- Status: accepted
- Evidence: The docs site adopted shadcn/ui conventions and Fumadocs primitives at an earlier point in their evolution. The project now has newer upstream primitives, including ButtonGroup in shadcn/ui and Base UI support in Fumadocs, while several local components and wrappers have been modified for Solar Icons. The current ownership boundaries and migration risks are not documented.
- Impact: Stale or inconsistently chosen primitives can limit future UI quality and make later changes unpredictable. An indiscriminate refresh could also regress behavior, accessibility, theming, responsive behavior, or project-specific fixes.
- Desired outcome: Establish a current, documented UI foundation with explicit boundaries between site-owned shadcn/ui components and Fumadocs-owned surfaces. Audit component provenance and local overrides before changing them, evaluate the relevant upstream APIs, preserve intentional behavior, and verify accessibility, theme, and responsive contracts component by component. The staged Fumadocs Base UI direction is accepted for the first task; later site-owned component migrations still require component-level review.
- Tasks: DOCS-FUMADOCS-BASE-UI, DOCS-SHADCN-BUTTON-REFRESH, DOCS-SHADCN-BUTTON-GROUP, DOCS-SHADCN-POPOVER-CONTRACT, DOCS-SHADCN-TOOLTIP-CONTRACT, DOCS-SHADCN-INPUT-CONTRACT, DOCS-SHADCN-CARD-CONTRACT, DOCS-SHADCN-BADGE-CONTRACT, DOCS-SHADCN-COMMAND-CONTRACT, DOCS-SHADCN-REMAINING-CONTRACTS

## [ISSUE-BUTTON-HIERARCHY] Establish a clear semantic hierarchy for buttons and CTAs

- Type: problem
- Status: open
- Evidence: The homepage currently presents filled and outline CTAs that both use the primary color family. The visual treatment distinguishes surface style more than semantic role, and the project does not have a clearly documented set of button roles for primary, secondary, supporting, or state-specific actions.
- Impact: Visitors may not know which action deserves priority, and future pages have no reliable semantic system to communicate action hierarchy. Adding more buttons ad hoc would increase inconsistency across the site.
- Desired outcome: Define and consistently apply a semantic button hierarchy that makes the intended primary action clear, gives secondary actions an appropriate level of emphasis, remains legible in light and dark themes, and provides accessible hover, focus, pressed, disabled, and loading states without breaking existing consumers.
- Tasks: DOCS-BUTTON-HIERARCHY

## [ISSUE-ICON-DETAIL-TABS-OVERFLOW] Make every icon-detail tab reachable at constrained widths

- Type: problem
- Status: open
- Evidence: The `/icons` detail panel exposes 11 tabs for variants, tags, and framework snippets. In the local preview, the panel's tab list is about 508px wide while its content is about 838px wide. Its computed horizontal overflow is `visible`, so the tabs after the visible range are clipped rather than scrollable. The `MotionTabs` class combines `overflow-auto` with `md:overflow-visible`, which removes the scroll container at the breakpoint used by the constrained layout. The maintainer reproduced the same behavior on production, so the issue predates the current homepage button pass. The root `ReactLenis` configuration already sets `allowNestedScroll: true`, but that does not confirm whether Lenis is handling or interfering with horizontal tab input.
- Impact: Users on tablet-sized or otherwise constrained layouts cannot reach all framework tabs, including Svelte, Solid, Angular, Static, and JS. They cannot inspect or copy the corresponding snippets even though those options remain present in the page markup.
- Desired outcome: Every icon-detail tab remains reachable with pointer, touch, and keyboard input at supported widths. The active-tab indicator and content animation remain coherent, and the fix does not introduce page-level scrolling or regress the icon grid, category navigation, detail panel, or Lenis behavior. Validation must cover wide, intermediate, and narrow layouts in light and dark themes, including the real horizontal interaction path.
- Tasks: none

## [ISSUE-HOMEPAGE-INFORMATION-ARCHITECTURE] Give the homepage one coherent product narrative

- Type: problem
- Status: open
- Evidence: The homepage has accumulated sections and claims over time. Many additions make sense in isolation, but their global order, relative priority, and relationship to one another are no longer obvious. Information can repeat or compete instead of moving a visitor through a deliberate understanding of the product.
- Impact: The page risks feeling crowded, improvised, or generic even when its individual sections are useful. Important differentiators can be buried, and new capabilities such as the CLI, MCP server, and skills can add more surface area without improving comprehension.
- Desired outcome: Establish a coherent homepage information architecture with a defined visitor journey, explicit content priorities, deduplicated claims, and clear roles for discovery, integration, workflow, and trust. The result should preserve useful information while making omissions, repetition, and low-priority content visible before any visual redesign is attempted.
- Tasks: none

## [ISSUE-HERO-V2-PRESENTATION] Make the hero demonstrate the V2 icon system

- Type: problem
- Status: open
- Evidence: The current rotating hero changes categories and styles, but its visual demonstration does not clearly expose the V2 capabilities that distinguish the system, especially two-color duotone rendering and different stroke widths for linear styles. The hero also feels dependent on a familiar landing-page template, with the rotating wheel carrying most of its distinctive character.
- Impact: The most visible product moment under-communicates the work invested in V2. Visitors can miss the breadth and controllability of the icon system, while the hero spends space on motion without establishing a strong, ownable Solar Icons impression.
- Desired outcome: Make the hero's motion and icon presentation explain the V2 system at a glance, including meaningful visual differences between styles, duotone colors, and stroke weights. The composition should feel intentional and specific to Solar Icons, preserve immediate access to the primary actions, remain performant, and respect reduced-motion preferences.
- Tasks: none

## [ISSUE-HERO-HEIGHT-ANALYTICS] Resolve the hero height trade-off between first-viewport composition and analytics

- Type: problem
- Status: open
- Evidence: The hero currently derives its height from the viewport after the fixed header so that the header and hero fit together on one screen. The maintainer observes that Umami heatmaps do not represent clicks reliably in sections whose height is dynamic and not bounded. Removing that behavior would change how much of the following section appears at different screen heights, creating a real composition trade-off rather than a mechanical CSS fix.
- Impact: The current geometry weakens click analysis of the page, while an unexamined replacement could produce inconsistent first impressions, clipped content, or a different perceived hierarchy across devices and monitor heights.
- Desired outcome: Define a deliberate responsive height contract for the hero that gives Umami meaningful page geometry, keeps the primary content and actions reachable, and produces an intentional first viewport across representative screen sizes. The accepted approach must be validated against both analytics behavior and visual composition instead of optimizing one in isolation.
- Tasks: none

## [ISSUE-SITE-COMMUNICATION-TONE] Define a consistent, credible voice for the site

- Type: problem
- Status: open
- Evidence: Homepage titles and descriptions were added incrementally and now mix product marketing, implementation detail, and feature announcement language. The maintainer considers the documentation tone mostly appropriate, but the homepage and broader site lack an explicit editorial direction that rules out exaggerated marketing, unnecessary technicality, and formulaic AI-generated phrasing.
- Impact: Inconsistent wording weakens the product narrative and can make a design-focused icon project sound less credible or less human. Copy changes made without a shared voice will continue to create local improvements that do not add up globally.
- Desired outcome: Establish a concise editorial voice and content rules for the homepage, with an optional site-wide extension where appropriate. Copy should be specific, human, proportionate to the product's claims, and understandable to both design-oriented and technical visitors, while the existing documentation voice remains intact unless evidence calls for a change.
- Tasks: none

## [ISSUE-HOME-NAV-IDENTITY] Give non-documentation pages a site-owned header direction

- Type: problem
- Status: open
- Evidence: Non-documentation pages currently inherit the Fumadocs header. That is acceptable as a documentation convention, but the same pattern is shared by many Fumadocs sites and does not express the Solar Icons visual direction on the marketing and exploration surfaces.
- Impact: The first navigational element makes the site feel interchangeable and weakens brand recognition precisely where the project needs a stronger public presence. A careless replacement could also reduce orientation, responsive behavior, or consistency between docs and non-docs pages.
- Desired outcome: Define a navigation boundary in which documentation can retain the conventions that help it work while non-documentation surfaces receive a coherent, site-owned header treatment. The result must preserve discoverability, active location, keyboard access, responsive behavior, and a clear relationship to the rest of the visual system.
- Tasks: none

## [ISSUE-SURFACE-COLOR-MOOD] Reconsider the homepage atmosphere without losing depth

- Type: problem
- Status: open
- Evidence: The grain/texture treatment used in the hero, footer, and closing sections is still considered valuable. The teal and pink colors at the top of the page now feel dated to the maintainer, but removing them without testing could leave the page flat, gray, or emotionally cold.
- Impact: The current surface treatment may date the brand expression, while a simplistic removal could damage atmosphere, hierarchy, or contrast. This is a system-level mood decision that affects several sections, not a one-off gradient tweak.
- Desired outcome: Establish an atmosphere treatment that keeps the useful texture and depth, feels current to the project, supports content hierarchy, and remains coherent and accessible in light and dark themes. Any direction should be compared across the affected sections before it is adopted globally.
- Tasks: none

## [ISSUE-ICON-CATEGORIES] Preserve composite Figma categories

**Evidence:** Figma labels may contain one to four semantic parts (`Design, Tools`,
`Transport, Parts, Service`, `Video, Audio, Sound`). The current generator reduces them to one
directory key by sorting labels by length, which makes `Design, Tools` become `tools` and discards
the original composition.

**Impact:** Generated package categories can be misleading, collide, and lose information needed
by search, documentation, and parity analysis.

**Desired outcome:** Preserve the complete source labels and resolve backward-compatible package
keys through an explicit mapping with collision checks. Do not migrate existing paths until the
compatibility model is approved.

**Reference:** `docs/issues/ICON-CATEGORY-MODEL.md`

**Planned task:** `CATEGORY-COMPOSITE-MODEL`

## [ISSUE-FIGMA-CATALOG] Keep the public Figma plugin synchronized

**Evidence:** The plugin embeds `@solar-icons/static` at build time. Publishing npm packages does
not update the Figma Community installation, and the plugin can therefore expose an older catalog
or older corrected SVGs.

**Impact:** Users can receive different icon inventories depending on whether they use npm or
Figma. A stale embedded catalog is difficult to notice without an explicit release check.

**Desired outcome:** Add catalog version/hash and count provenance to the plugin build, make CI
verify that the plugin embeds the current static catalog, and document the separate Figma Community
publication step.

**Planned task:** `FIGMA-CATALOG-SYNC`

## [ISSUE-ICON-REQUESTS] Standardize requests for missing icons

**Evidence:** New icons are currently selected from parity analysis and maintainer judgment. There
is no consistent public intake that records use case, demand, references, fallback coverage, or
priority without promising implementation.

**Impact:** Useful requests can be lost, while effort may be spent on low-impact additions chosen
only by availability.

**Desired outcome:** Add a GitHub icon-request template and triage labels. Capture the concept,
use case, references, required styles, related Solar icons, and demand signals; explicitly state
that a request is not a commitment.

**Planned task:** `ICON-REQUEST-INTAKE`

## [ISSUE-ICON-CONTRIBUTIONS] Define a safe external contribution path

**Evidence:** The project now supports curated extensions, but the contribution rules cover neither
icon-specific style review nor per-icon provenance, licensing, and attribution.

**Impact:** External submissions could introduce copied geometry, incompatible style decisions, or
unclear licensing into packages that currently contain both MIT project code and CC BY third-party
icons.

**Desired outcome:** Publish an icon contribution guide covering originality, Figma/source files,
the six-style invariant, metadata, review gates, license declarations, attribution, and maintainer
acceptance. Keep this separate from the public request intake.

**Planned task:** `ICON-CONTRIBUTOR-GOVERNANCE`

## [ISSUE-TSDOWN-LARGE-UNBUNDLE-PERF] tsdown build does not scale to the generated Solid package

- Type: problem
- Status: open
- Evidence: `@solar-icons/solid` currently expands 1,268 logical icons into 7,608 SVG-derived
  modules and 8,893 generated files. The asset generator itself completes in about 1.4 seconds,
  while the JavaScript-only tsdown phase takes about 24 seconds. A complete tsdown build with
  declarations repeatedly exceeded 90 seconds, used roughly 2.8–4.2 GB of memory, and did not
  finish reliably in the tested runs. In contrast, the previous Vite plus separate TypeScript
  declaration workflow completed in under 10 seconds, and a direct `tsgo --emitDeclarationOnly`
  test emitted about 8,903 declarations in about 2.5 seconds. Enabling `isolatedDeclarations`
  exposed 1,269 missing explicit-return annotations and, after those temporary annotations were
  tested, did not produce a complete-build improvement. Updating `rolldown-plugin-dts`, Rolldown,
  or TypeScript in isolation also produced no measured improvement and was reverted. The behavior
  matches the open upstream scalability report for large unbundled entry graphs in
  [tsdown#696](https://github.com/rolldown/tsdown/issues/696); tsdown's parallel-build request is
  tracked separately in [tsdown#541](https://github.com/rolldown/tsdown/issues/541). This remains
  unresolved.
- Impact: Release builds are slow and memory-heavy, which makes the planned continuous addition
  of icons expensive and increases the risk of CI or developer-machine out-of-memory failures.
  The local development workaround that skips unchanged package builds does not solve the
  production build bottleneck.
- Desired outcome: Keep tsdown as the supported single configuration for JavaScript and
  declarations while finding an upstream-supported or repository-level strategy that scales to
  the generated graph, preserves every public export and type signature, and completes within a
  predictable release-build time and memory budget. No optimization may silently change the
  package API.
- Tasks: none
