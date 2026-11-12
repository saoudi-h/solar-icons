# PROJECT TASKS & ROADMAP

> **LEGEND**
> **Priority:** [🔴 Critical] [🟠 High] [🔵 Medium] [⚪ Low]
> **Complexity:** [S] Small (1h), [M] Medium (4h), [L] Large (1-2 days), [XL] Huge (Planning req.)
> **Status:** [ ] Todo, [/] In Progress, [x] Done, [!] Blocked

> **V2 plan source:** `packages/core/V2_roadmap.md` (untracked, French, internal working draft). TASKS.md is the canonical task list — new tasks can be added, removed, or refined as discoveries are made. The roadmap is not a strict contract.

## 🚧 Active

- [/] **[DUOTONE-OPACITY-COMPOUND]** Fix duotone secondary opacity applied on both `<g>` and children (static, js, rails, docs previews); add regression tests and regenerate outputs. `Priority: 🔴` `Complexity: M` *Issue: #724. See worklogs/2026-11-13-DUOTONE-OPACITY-COMPOUND.md*

- [/] **[RELEASE-INTENT]** Declaration-driven releases from `@solar-icons/static` across Blade, Blazor, Flutter, and Rails; PRs merged, next static release pending end-to-end. `Priority: 🟠` `Complexity: M` *See worklogs/2026-11-12-RELEASE-INTENT.md*

- [/] **[BLAZOR-INTEGRATE]** Integrate PR #637 (`SolarIcons.Blazor`, issue #632) on `feat/blazor-package`; local checks green, maintainer publication decisions pending. `Priority: 🟠` `Complexity: L` *Issue: #632, PR #637. See worklogs/2026-11-12-BLAZOR-INTEGRATE.md*

- [/] **[DOMAIN-MIGRATION]** Migrate docs site from `solar-icons.vercel.app` to `solar-icons.dev` preserving URL paths and Search Console/sitemap verification. `Priority: 🟠` `Complexity: M` *See worklogs/2026-11-12-DOMAIN-MIGRATION.md*

- [/] **[BLADE-P3]** Publish `solar-icons/blade` on Packagist (done) and list on blade-ui-kit.com directory (outreach pending). `Priority: 🟠` `Complexity: S` *See worklogs/2026-11-12-BLADE-P3.md*

- [ ] **[RN-PROVIDER-STYLE]** Backport `SolarConfig.style` and `DynamicIcon` fallback chain (`param > provider > linear`) to `@solar-icons/react-native`. `Priority: 🔵` `Complexity: S` *See worklogs/2026-11-12-RN-PROVIDER-STYLE.md*

- [/] **[DOCS-AI-TOOLS-SHOWCASE]** Replace homepage AI tools pseudo-stepper with interactive "Agent in Action" showcase across MCP, Skill, and CLI. `Priority: 🟠` `Complexity: M` *See worklogs/2026-11-12-DOCS-AI-TOOLS-SHOWCASE.md*

- [ ] **[EXTENSION-COMMUNICATION]** Update current README/docs/plugin copy to describe the maintained original Solar catalogue plus curated extensions, refresh current icon counts, and publish a release announcement without claiming new icons are from 480 Design. `Priority: 🟠` `Complexity: M`

- [ ] **[ICON-REQUEST-INTAKE]** Add a GitHub icon-request template and triage labels capturing concept, use case, references, required styles, related Solar fallback, demand, and non-commitment language. **Issue:** `ISSUE-ICON-REQUESTS`. `Priority: 🔵` `Complexity: M`

- [ ] **[ICON-CONTRIBUTOR-GOVERNANCE]** Define and publish the external icon contribution workflow: originality, source files, six-style validation, metadata, license, attribution, visual review, and maintainer acceptance. **Issue:** `ISSUE-ICON-CONTRIBUTIONS`. `Priority: ⚪` `Complexity: XL`

- [ ] **[CATEGORY-COMPOSITE-MODEL]** Replace the category-length heuristic with an explicit, backward-compatible mapping that preserves all Figma category labels and detects collisions. **Issue:** `ISSUE-ICON-CATEGORIES`. `Priority: 🔵` `Complexity: L`

- [/] **[ICON-FIXES]** Fix two reported icon issues: one incorrect icon name and one SVG requiring regeneration. Details and exact source-of-truth changes will be scoped after the maintainer provides the issue descriptions. `Priority: 🟠` `Complexity: S`

- [/] **[METADATA-AUDIT]** Audit and correct semantic errors in the hand-curated icon metadata, keep generated explorer descriptions synchronized, and maintain regression checks for known false-positive tags. Do not change Fuse or search semantics. `Priority: 🔴` `Complexity: L`

- [/] **[SKILL-DISCOVERY]** Benchmark skills.sh icon skills, finalize `skills/solar-icons/` on `npx @solar-icons/cli`, and document skills.sh maintenance/security rules. `Priority: 🟠` `Complexity: M` *See worklogs/2026-11-12-SKILL-DISCOVERY.md*

- [ ] **[DOCS-MOBILE-AUDIT]** Manually verify mobile viewport responsiveness, mobile Drawer, and transient Tooltip hover/focus states on `apps/docs-start` (follow-up from closed UI refresh tasks). `Priority: 🔵` `Complexity: S` *See: ISSUE-UI-FOUNDATION-REFRESH*

- [ ] **[STATIC-ICON-FONT]** Evaluate and optionally add icon font generation to `@solar-icons/static` (deferred from `STATIC-PKG`). `Priority: ⚪` `Complexity: M`
