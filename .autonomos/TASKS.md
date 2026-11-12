# PROJECT TASKS & ROADMAP

> **LEGEND**
> **Priority:** [🔴 Critical] [🟠 High] [🔵 Medium] [⚪ Low]
> **Complexity:** [S] Small (1h), [M] Medium (4h), [L] Large (1-2 days), [XL] Huge (Planning req.)
> **Status:** [ ] Todo, [/] In Progress, [x] Done, [!] Blocked

> **V2 plan source:** `packages/core/V2_roadmap.md` (untracked, French, internal working draft). TASKS.md is the canonical task list — new tasks can be added, removed, or refined as discoveries are made. The roadmap is not a strict contract.

## 🚧 Active

- [/] **[PROTO-UPGRADE]** Upgrade Autonomos protocol to 0.8.5-alpha (format 2) and reconcile context-budget findings. `Priority: 🟠` `Complexity: M`

- [/] **[RELEASE-INTENT]** Declaration-driven releases across languages: the changeset declared for `@solar-icons/static` is the only input for the Blade, Blazor, Flutter and Rails bumps and changelog text (versions independent, majors shared). Done: Blade (`solar-icons/blade` PR #4 merged: `sync-static.yml` opens a `release/next` PR, `tag-release.yml` tags on merge; org and repo setting for Actions-created PRs enabled; dry runs green on `main`) and the monorepo lane on `feat/derive-polyglot-bump-from-static` (`scripts/bump-polyglot-packages.ts --from-static` wired into `version-packages`, `scripts/lib/polyglot-intent.ts` with 13 tests, `pnpm test:scripts` in `ci.yml`, `docs/RELEASE-PROCEDURE.md` sections 1, 3, 4, 5, 9, 10 and new 11, root and `scripts/` AGENT.md). Left: merge the monorepo PR, then the first real run on the next static release exercises the version PR, the Blade `release/next` PR creation and `tag-release.yml` end to end (none of which was run for real). Nothing was published. `Priority: 🟠` `Complexity: M` *See worklogs/2026-11-11-RELEASE-INTENT.md*

- [/] **[BLAZOR-INTEGRATE]** Integrate contributor PR #637 (`SolarIcons.Blazor`, issue #632) on the local integration branch `feat/blazor-package`, authorship preserved (merge, no squash). Done on the branch: LF/CRLF-independent generation (the committed manifest hash came from a Windows CRLF checkout and failed on Linux), PowerShell scripts ported to Node/TS, CI reduced to one Linux job (30 min cap; the full 14-case trimming matrix reproduces in about four minutes in a container, retained types identical to the contributor's), version aligned to 2.0.0, `blazor-publish.yml` on `SolarIcons.Blazor-v*` tags (NuGet OIDC trusted publishing), RELEASE-PROCEDURE section 9. Verified locally: render checks 17,703 assertions on net8 and net10, packed-artifact consumption, Lucide coexistence, registry/listing/skill checks, cli 21 + mcp tests, docs build/typecheck/lint. Left for the maintainer: decide on pushing the branch and approving the fork workflows, nuget.org account + trusted publishing policy + `NUGET_USER` secret, first tag; then homepage banner logo, drop the unreleased-preview wording after publication. No reply posted to the contributor yet. `Priority: 🟠` `Complexity: L` *Issue: #632, PR #637*

- [/] **[SOLID-V1-RUNTIME]** Fix issue #634: `@solar-icons/solid@2.3.3` imported the Solid 2 runtime (`@solidjs/web`) after the `unplugin-solid` 2 → 3 bump, breaking Solid 1 consumers. Reverted the plugin to `^2.0.0` (patch changeset), blocked `unplugin-solid` at `<3` in Renovate until Solid 2 is stable, and added `pnpm check:dist-imports` (es-module-lexer over every built `dist`, wired in CI and both release workflows) so a bundle can no longer import an undeclared module. Maintainer decision: stay on Solid 1 and move to Solid 2 once stable, no second package. Branch: `fix/solid-unplugin-v2`. `Priority: 🔴` `Complexity: S` *Issue: #634*

- [ ] **[DOCS-START-REMOVE-COMPAT]** Move the components that `apps/docs-start` shares from `apps/docs` into `apps/docs-start`, rewrite them with the TanStack Router and Start APIs, and delete `src/compat` with its aliases. Behavior, URLs and the e2e tests stay unchanged. `Priority: 🟠` `Complexity: L` *See: ISSUE-DOCS-COMPAT-LAYER*

- [/] **[DOMAIN-MIGRATION]** Move the documentation site from `solar-icons.vercel.app` to `solar-icons.dev` without changing URL paths: establish Search Console baseline, attach the domain to the existing Vercel project, update active canonical/site references, redirect the legacy host, submit the new sitemap, and verify the migration. `Priority: 🟠` `Complexity: M`

- [/] **[BLADE-P3]** Publish `solar-icons/blade`: Packagist submit done by maintainer + webhook set, tag `v2.0.0` cut via sync workflow, Packagist import + fresh-project `composer require` verified working. Left: list on blade-ui-kit.com directory (curation process owned by Dries Vints, needs outreach). `Priority: 🟠` `Complexity: S`

- [/] **[FLUTTER-EVAL]** Evaluate contributed Flutter package (PR #571, devnoaman) and decide the Flutter lane. Cold assessment done (worklogs/2026-10-09-FLUTTER-EVAL.md): pub.dev uses an upload model, so NO dedicated repo is required (unlike Packagist/Blade); Dart lives outside pnpm/turbo (lucide precedent: non-workspace, own pub publishing); lucide DISCONTINUED its official Flutter package 2025-02 for lack of maintenance, community packages (flutter_lucide, 93 likes) now carry the lane; duotone rendering in flutter_svg is an open design risk; prior ranking holds (3rd behind Blade, Rails). Audit of PR #571 done (read-only, nothing executed): architecture sound (follower generator from core/svgs, good duotone two-layer composition, InheritedWidget theme, alias typedefs, meaningful tests, clean security scan), but 3 blocking issues: (1) ~~duotone regex missing `[^>]*` before `\/>` vs core parser, extracts only 352/2900 accents~~ CORRECTED 2026-10-10, false positive: regex is character-identical to core, 2900/2900 accents extracted (see worklog); (2) generated lib/icons/ gitignored so PR ships zero icons and tests cannot run, no Dart CI workflow; (3) no pub.dev publication story. Next: request changes on PR #571 (differential fidelity test vs static suggested, commit generated files or CI generate step + Dart workflow, publication plan), then decide: contributor-maintained non-workspace package (preferred) / separate org repo / decline with community alternatives. Also draft framework-package contribution policy for CONTRIBUTING.md. `Priority: 🟠` `Complexity: L`

- [ ] **[RN-PROVIDER-STYLE]** Second step after Flutter: backport the provider-level default style to React Native (`SolarConfig.style` + `DynamicIcon` fallback chain param > provider > linear, statics unaffected). RN has a real context store (unlike React's CSS-var pseudo-provider, which cannot do this for SSR reasons), so nothing blocks it; it was omitted by parity reflex when RN mirrored React's provider fields. Do NOT touch React web. `Priority: 🔵` `Complexity: S`

- [/] **[DOCS-AI-TOOLS-SHOWCASE]** Restyle the AI tools showcase on the docs homepage. Replace the static pseudo-stepper with an interactive "Agent in Action" window demonstrating real prompt, tool resolution, rendered Solar icon, and import snippet across MCP, Skill, and CLI modalities. `Priority: 🟠` `Complexity: M`

- [ ] **[EXTENSION-COMMUNICATION]** Update current README/docs/plugin copy to describe the maintained original Solar catalogue plus curated extensions, refresh current icon counts, and publish a release announcement without claiming new icons are from 480 Design. `Priority: 🟠` `Complexity: M`

- [ ] **[ICON-REQUEST-INTAKE]** Add a GitHub icon-request template and triage labels capturing concept, use case, references, required styles, related Solar fallback, demand, and non-commitment language. **Issue:** `ISSUE-ICON-REQUESTS`. `Priority: 🔵` `Complexity: M`

- [ ] **[ICON-CONTRIBUTOR-GOVERNANCE]** Define and publish the external icon contribution workflow: originality, source files, six-style validation, metadata, license, attribution, visual review, and maintainer acceptance. **Issue:** `ISSUE-ICON-CONTRIBUTIONS`. `Priority: ⚪` `Complexity: XL`

- [ ] **[CATEGORY-COMPOSITE-MODEL]** Replace the category-length heuristic with an explicit, backward-compatible mapping that preserves all Figma category labels and detects collisions. **Issue:** `ISSUE-ICON-CATEGORIES`. `Priority: 🔵` `Complexity: L`

- [/] **[ICON-FIXES]** Fix two reported icon issues: one incorrect icon name and one SVG requiring regeneration. Details and exact source-of-truth changes will be scoped after the maintainer provides the issue descriptions. `Priority: 🟠` `Complexity: S`

- [/] **[METADATA-AUDIT]** Audit and correct semantic errors in the hand-curated icon metadata, keep generated explorer descriptions synchronized, and maintain regression checks for known false-positive tags. Do not change Fuse or search semantics. `Priority: 🔴` `Complexity: L`

- [/] **[SKILL-DISCOVERY]** Research skills.sh ecosystem, benchmark icon competitors (Lucide, Phosphor, HugeIcons, Tabler, etc.), analyse top skill patterns (structure/tone/tooling/sécurité), and deliver concrete plan + draft skill(s) for Solar Icons + maintenance rules for skills.sh publication. Research complete (2026-08-28 worklog + draft `skills/solar-icons/`); CLI foundation done (`@solar-icons/cli` 2.1.0) — skill rewired to `npx @solar-icons/cli` (no shell scripts), import snippets verified (`HeartIcon` vs `HeartBoldIcon`), `catalog.md` updated to CLI source. `Priority: 🟠` `Complexity: M`

- [/] **[MCP-PKG]** Create `@solar-icons/mcp` (bin `solar-icons-mcp`) — MCP server with 7 `solar_*` tools over `@solar-icons/static` (via `@solar-icons/cli`), `stdio` transport, Zod schemas, `mcp-builder` best practices. `Priority: 🟠` `Complexity: M`

## ✅ Completed

### V2 — Next (CSS vars, classes, provider)

2026-06-21-V2-23-session*
