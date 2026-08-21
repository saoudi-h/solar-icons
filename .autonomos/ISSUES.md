# Open Issues & Proposals

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
