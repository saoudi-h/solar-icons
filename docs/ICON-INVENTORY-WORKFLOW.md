# Icon inventory update workflow

The authoritative inventory is computed from `packages/core/svgs/`. The same logical icon must
also exist in `packages/core/src/metadata.json` and
`packages/core/src/metadata-descriptions.json`. Do not maintain a hand-written “current total”
file as a second source of truth.

## After every Figma export

From the repository root:

```sh
pnpm --filter @solar-icons/core refresh:zip /path/to/solar-icons-svgs.zip
```

If the metadata gate reports new names, curate each entry in
`packages/core/src/metadata-descriptions.json` before continuing. For every extension, set:

- `origin: "extended"`;
- `addedAt` and `author`;
- `state: "beta"` until visual validation is complete;
- `priority` and `priorityReason` when it belongs to the extension roadmap.

Then rebuild the derived core metadata and run the source checks:

```sh
pnpm --filter @solar-icons/core generate:svgs --offline
pnpm exec tsx scripts/check-icon-inventory.ts
pnpm --filter @solar-icons/core check:svgs
pnpm --filter @solar-icons/core check:metadata
pnpm --filter @solar-icons/core check:descriptions
pnpm --filter @solar-icons/core check:icons-metadata
```

`scripts/check-icon-inventory.ts` prints the current count. The six-style invariant means the SVG total must be
six times the logical-icon total. Generated `metadata.json` may be reformatted by the generator;
run the repository formatter on that file before reviewing the diff, so formatting does not hide
the actual inventory change.

## Regenerate consumers

These generated lists embed a `Total icons` comment. They are all produced by one generator from
the same core SVG inventory:

```sh
pnpm generate:test-catalogs
```

This updates the React, Solid, Angular, Svelte, React Native, and icon-parity demo lists. The
per-app `generate:icons` scripts remain as compatibility aliases, but they call the same shared
generator; do not edit any `icon-list.ts` by hand.

The visual demos also prepare their catalog automatically before `dev`/`build` (or the equivalent
platform command). Most apps fingerprint the core SVGs, metadata, and package generators and only
rebuild their package when an input changed or the output is missing. The Solid demo is faster:
Vite aliases it directly to generated package source, so its preparation only regenerates the
source files and does not run the expensive full `tsdown` bundle. If an app is started through a
tool that bypasses its package scripts, run `pnpm --filter <app> prepare:catalog` before diagnosing
a missing icon.

The documentation explorer has its own generated React data files. Regenerate them after every
catalogue change:

```sh
pnpm --filter @solar-icons/docs generate:catalog
```

The docs `dev` and `build` scripts run this command automatically. This updates
`apps/docs/generated/descriptions.ts`, `apps/docs/generated/utils.ts`, and
`apps/docs/generated/generatedHeroUtils.ts`; it is what keeps `/icons` aligned with the core
inventory instead of leaving the previous count in the generated bundle.

The Svelte package must also be regenerated before checking `apps/svelte-app`, because the demo
imports the package through its generated `dist/` output. Its `dev` and `build` scripts now run
this catalog preparation automatically; the explicit command remains useful for CI and manual
checks:

```sh
pnpm --filter svelte-app prepare:catalog
pnpm --filter svelte-app check
```

Deprecated Svelte aliases are generated as wrapper components. Do not hand-edit an alias to use
`<script module> export { default }`: Svelte 5 rejects a component-level default export during SSR.

Confirm the derived lists with:

```sh
pnpm exec tsx scripts/check-icon-inventory.ts --check-generated
```

## Update human-facing copy

The following locations contain human-facing inventory text and must be searched after a release
packet. Replace the old count only when the text describes the current published package:

- root `README.md` and `AGENT.md`;
- package READMEs and AGENT files under `packages/*`;
- `packages/figma-plugin/README.md`, `packages/figma-plugin/AGENT.md`, community presentation, and
  `src/ui/components/InfoPanel.tsx`;
- `apps/docs/README.md`, docs config, home-page statistics, and v1/v2 documentation pages;
- demo copy under `apps/vue-app` and `packages/nuxt/playground`.

For the documentation site, current v2 copy and homepage statistics are part of the release
packet and must reflect the same logical count and six-style total. Versioned v1 pages are kept
historical and are not rewritten when the extension catalogue grows.

Use `rg` to find remaining old totals, but do not change numeric IDs in parity JSON files:

```sh
rg -n --glob '!*.svg' '(1,246|1,247|7,476|7,482|7,488)' README.md AGENT.md packages apps
```

## What must not be updated automatically

The Lucide parity artifacts describe a frozen historical inventory. In particular,
`apps/icon-parity/app/compare/mapping-state.json`, the production sheets, and
`lucide-coverage/coverage.json` must not be renumbered when adding a Solar icon. A new icon enters
the parity mapping only through a deliberate extension-map decision and a regenerated coverage
report. This prevents a package release from silently rewriting the audit history.

Finish each packet with the core tests and a single coherent commit (or squashed pull request).
