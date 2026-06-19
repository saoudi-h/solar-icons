# AGENT: packages/figma-rename-plugin

- **Type:** Figma plugin source. Not a pnpm workspace member (no `package.json`).
- **Role:** Renames icon components in the local Figma file according to the V3 source-of-truth fix (issue saoudi-h/solar-icons#493). Runs inside Figma's plugin sandbox, never from the command line.

## Files

| File | Role |
|---|---|
| `code.js` | Plugin entrypoint. Holds the `RENAMES` map (kebab-case keys and values). Walks the document with `figma.root.findAllWithCriteria({ types: ['COMPONENT'] })`, converts each `IconName` segment to kebab-case via `toKebab`, matches against `RENAMES`, and computes the new Figma-form name via `toFigmaName`. Applies renames on user confirmation, with per-component try/catch and progress reporting. |
| `ui.html` | Plugin UI. Lists every planned rename (`Old name → New name`) before applying. Apply and Cancel buttons. Progress bar during application. |
| `manifest.json` | Figma plugin manifest. `id: "solar-icon-renamer"`. |
| `README.md` | Install + use instructions, rename map table, post-plugin workflow. |

## Rename matching

The Figma component name format is `Style / Category / IconName` (3 segments separated by `/`, with optional spaces around each segment). The plugin:

1. Splits the name on `/`, trims each segment.
2. Takes the **last** segment as the `IconName`.
3. Converts it to kebab-case via `toKebab` (`Plain 2` → `plain-2`, `Wad Of Money` → `wad-of-money`).
4. Looks up that kebab in the `RENAMES` map.
5. If found, builds the new name by joining the original first segments with the new Figma-form icon segment.

The new Figma-form is `toFigmaName(newKebab)`: each kebab word capitalized, joined by single spaces (`plane-2` → `Plane 2`, `money-roll` → `Money Roll`). This matches the existing `packages/core/src/scripts/generate-svgs.ts` `parseIconName` convention.

## When to use

Once per V3 release cycle, after deciding to apply the rename map. The maintainer opens the local Figma file (`Solar Icons Set - Fixed`), runs the plugin, reviews the preview, clicks Apply. After the plugin finishes, the maintainer runs `pnpm generate:svgs` in `packages/core` to refresh `svgs/` and `metadata.json`. `src/metadata-descriptions.json` is remapped manually (separate task).

## Constraints

- **No build step.** The `.js` extension is Figma's required convention.
- **No dependencies.** Figma plugins cannot `require` npm packages. All utility code is inlined.
- **No network calls.** The rename map is embedded in `code.js`. The plugin does not contact the Figma REST API (which is the whole point — REST rate limits on free/starter plans are too strict for this volume of writes).
- **No geometry changes.** The plugin renames only. It does not touch paths, fills, strokes, or any visual property.
- **Read-only until Apply.** The plugin scans and shows a preview; nothing changes until the user clicks Apply in the UI.
- **Undoable.** Each rename is a single Figma edit, fully reversible via `Cmd/Ctrl+Z`.
- **`ui.html` is Figma-sandboxed HTML.** No external script tags. All JS/CSS is inline.
- **QuickJS sandbox — no optional chaining or nullish coalescing.** The Figma plugin main thread runs in QuickJS, which does not support the `?.` or `??` operators. Use `const x = (a && a.b) || defaultValue` style.

## Deferred decisions (per issue #493)

The issue proposes multiple target names for some entries. The plugin picks the simplest. The full list of deferred alternatives is commented at the top of `code.js`:

- `trellis`: also `vanity-table`, `dressing-table`
- `accumulator`: also `battery`
- `wad-of-money`: also `banknotes-pack`
- `bell-bing`: also `bell-ringing`, `bell-active`

To adopt a different target, edit the `RENAMES` map in `code.js` and hot-reload the plugin.

## Related

- `packages/figma-fix-plugin/` — sibling plugin that repairs the upstream `fill` vs `stroke` anomalies. Different concern (geometry vs naming). Kept separate.
- `packages/core/src/scripts/generate-svgs.ts` — the Figma-fetch script that pulls components into `svgs/`. The plugin updates the Figma file; the script pulls the result.
- `packages/core/src/utils.ts` (`ICON_RENAMES`, `fixIconName`) — the V2 backward-compat shim. The plugin makes it unnecessary for the renames it covers, but other entries (`Magnifer`, `Minimalistic`, etc.) remain until a future run of the plugin handles them.
