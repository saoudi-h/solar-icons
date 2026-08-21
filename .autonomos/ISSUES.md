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
