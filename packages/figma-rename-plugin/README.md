# Solar Icon Renamer

A Figma plugin that renames icon components in the local Figma file according to the V3 source-of-truth fix (issue [saoudi-h/solar-icons#493](https://github.com/saoudi-h/solar-icons/issues/493)). Runs entirely inside Figma's plugin sandbox — no Figma REST API calls, no rate limits.

## Purpose

The upstream Figma file from 480 Design contains icon names with typos (`plain` instead of `plane` for paper-plane icons, `weigher` instead of `scale`, `globus` instead of `globe`, etc.) and inconsistent spelling (`favourite` vs `favorite`). The V3 plan corrects all of these. The plugin is the safe, manual, user-confirmed way to apply the corrections directly in Figma.

The plugin **renames the components only**. It does not modify geometry, colors, or structure. Each rename is a single Figma edit and is fully undoable via `Cmd/Ctrl+Z`.

## How it works

1. The plugin walks the document and finds every `COMPONENT` whose name follows the `Style / Category / IconName` convention.
2. For each component, it extracts the `IconName` segment, converts it to kebab-case, and checks if it matches a `from` key in the embedded rename map.
3. The plugin opens a small UI window showing the full list of planned renames (`Old name → New name`). Nothing is applied yet.
4. The user clicks **Apply**. The plugin renames each component, one by one, with a progress bar in the UI.
5. The user can verify in Figma, then undo any rename with `Cmd/Ctrl+Z` if needed.

The plugin is **read-only until the user clicks Apply**.

## Rename map

The map is defined in `code.js` under the `RENAMES` constant. As of the initial version, it covers the 18 entries from issue #493:

| From | To |
|---|---|
| `plain`, `plain-2`, `plain-3` | `plane`, `plane-2`, `plane-3` |
| `file-favourite`, `folder-favourite-star`, `folder-favourite-bookmark`, `gallery-favourite`, `map-point-favourite` | `...-favorite` (US English) |
| `magic-stick`, `magic-stick-2`, `magic-stick-3` | `magic-wand`, ... |
| `weigher` | `scale` |
| `sort-by-alphabet` | `sort-alphabetically` |
| `wad-of-money` | `money-roll` |
| `globus` | `globe` |
| `trellis` | `vanity` |
| `accumulator` | `car-battery` |
| `bell-bing` | `bell-ring` |

Some issue entries have multiple proposed target names (e.g. `trellis` could be `vanity`, `vanity-table`, or `dressing-table`). The plugin picks the simplest. The deferred alternatives are listed in comments at the top of `code.js` so they can be picked later by editing the `RENAMES` map.

## Installation

1. Open **Figma Desktop**.
2. Go to **Plugins > Development > Import from manifest...**.
3. Select the `manifest.json` file in this directory.
4. Figma installs the plugin in development mode. The user can now run it from **Plugins > Development > Solar Icon Renamer**.

To re-run after editing `code.js` or `ui.html`, use **Plugins > Development > Hot reload plugin** (or the `Ctrl+Alt+P` shortcut if a frame is selected).

## Workflow after the plugin

1. Open the local Figma file `Solar Icons Set - Fixed`.
2. Run the plugin. Review the list of planned renames in the UI window.
3. Click **Apply**. The plugin renames the components.
4. In the `packages/core` package, run `pnpm generate:svgs` to refresh the `svgs/` directory with the new names. `metadata.json` is also regenerated.
5. Manually remap `src/metadata-descriptions.json` keys to match the new icon names (a separate V3-12 follow-up task).

## Files

| File | Role |
|---|---|
| `manifest.json` | Figma plugin manifest. |
| `code.js` | Plugin entrypoint. Holds the `RENAMES` map, walks the document, applies renames on confirmation. |
| `ui.html` | Plugin UI: preview list, Apply/Cancel buttons, progress bar. |
| `README.md` | This file. |
| `AGENT.md` | Knowledge base entry for AI agents. |
