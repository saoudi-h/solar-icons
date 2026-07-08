# AGENT: packages/figma-export-plugin

- **Type:** Figma plugin source. Not a pnpm workspace member (no `package.json`).
- **Role:** Exports every icon component in the local Figma file as raw SVG, bundles the result as a ZIP, and triggers a browser download from the plugin UI. Runs entirely inside Figma's sandbox — no Figma REST API calls, no rate limits.

## Why this exists

The Figma REST API rate limit on the free plan is 6 GET requests per month. The existing `packages/core/src/scripts/generate-svgs.ts` script needs one `getFile` call plus one `getImages` call per 1 000 icons — far over the budget. After the V3 icon rename in Figma (issue #493), the local `svgs/` directory is stale and the script cannot refresh it.

This plugin does the same export work via `node.exportAsync({ format: 'SVG' })`, which runs locally in the Figma sandbox. No network, no rate limit.

## Files

| File | Role |
|---|---|
| `code.js` | Walks `figma.root.findAllWithCriteria({ types: ['COMPONENT'] })`. For each, parses the name (convention `Style / Category / IconName`), builds the target on-disk path `svgs/{kebab-category}/{Style}/{kebab-icon}.svg`, exports the component as SVG bytes, and batches the result to the UI in chunks of 50. |
| `ui.html` | Receives SVG batches, shows a progress bar, and on demand builds a ZIP file using a minimal in-page ZIP writer (no dependencies, no JSZip). Triggers a download via a temporary `<a download>` link. |
| `manifest.json` | Figma plugin manifest. `id: "solar-icon-exporter"`. |
| `README.md` | Install + use instructions, workflow. |

## Name parsing and path

`code.js` reuses the `toKebabCase` helper from `packages/core/src/utils.ts`. The output path mirrors the layout produced by `generate-svgs.ts`:

```
svgs/
  arrows/
    Bold/
      arrow-down.svg
    Linear/
      arrow-down.svg
    ...
  arrows-action/
    ...
```

Components whose name does not follow the `Style / Category / IconName` convention (e.g. stray frames, non-icon components) are counted as `skipped` and not exported.

## Multi-name category convention

The Figma component name's category segment can carry **several names separated by `,` or `&`** (e.g. `Linear / UI, Essentional / Some Icon`). The package system keeps **one** canonical name per category as the directory name; the others are kept as keyword tags in `metadata.json` by the downstream `generate-svgs.ts` script.

The plugin resolves multi-name categories the same way the existing script does: **pick the shortest**. Sorting the parts by length and taking the first gives the canonical name (`UI` rather than `Essentional` in the example above). This is non-negotiable — picking the first or last in source order would make category names shift every time a maintainer re-orders the comma-separated list in Figma.

**Critical**: do not change this to "first in source order" or "last in source order" without checking with the maintainer. The shortest-name rule is what makes the export layout match the existing `svgs/` directory.

## How the ZIP is built

The UI contains a small ZIP writer (~80 lines of vanilla JS) that produces a valid uncompressed (stored) ZIP. The structure: local file headers, central directory, end-of-central-directory record. CRC-32 is computed per file. The whole archive is concatenated in memory into a `Uint8Array`, wrapped in a `Blob`, and offered for download via an object URL.

~7 500 icons at ~1–2 KB each total ~10–15 MB of SVG. The browser handles this without issue; the build is fast (sub-second) because there is no compression.

## When to use

Once per V3 release cycle, after the rename plugin (or any other Figma-side mass edit) has been applied. The maintainer opens the local Figma file, runs this plugin, downloads the ZIP, unzips it into `packages/core/svgs/`, and runs `pnpm generate:svgs --offline` to rebuild `metadata.json` from the new files.

## Constraints

- **No build step.** The `.js` extension is Figma's required convention.
- **No dependencies.** Figma plugins cannot `require` npm packages. The ZIP writer is inlined in `ui.html`.
- **No network calls.** The plugin does not contact the Figma REST API or any external server. The whole flow is local: sandbox export -> sandbox message -> browser download.
- **No geometry changes.** The plugin only reads and exports. It does not modify the Figma document.
- **`ui.html` is Figma-sandboxed HTML.** No external script tags. All JS/CSS is inline.
- **QuickJS sandbox — no optional chaining or nullish coalescing.** The Figma plugin main thread runs in QuickJS, which does not support the `?.` or `??` operators. Use `const x = (a && a.b) || defaultValue` style. (See commit 51f2aa73 for the trap I fell into.)

## Related

- `packages/figma-rename-plugin/` — sibling plugin. Rename the components in Figma first, then use this plugin to export the result.
- `packages/core/src/scripts/generate-svgs.ts` — the REST-API-based script this plugin replaces for the local refresh. Still used in `--offline` mode (after the ZIP is unzipped) to rebuild `metadata.json`.
- `packages/core/src/parser.ts` — the V3 parser that consumes the SVGs from `svgs/`.
- `packages/core/src/utils.ts` (`toKebabCase`) — the kebab-case helper duplicated in `code.js` because Figma plugins cannot `require` from the workspace.
