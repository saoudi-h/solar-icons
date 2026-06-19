# Solar Icon Exporter

A Figma plugin that exports every icon component in the local Figma file as raw SVG, bundles the result as a ZIP, and triggers a browser download. Runs entirely inside Figma's sandbox — no Figma REST API calls, no rate limits.

## Purpose

The existing `pnpm generate:svgs` script (in `packages/core`) uses the Figma REST API to download the icon set. On the free plan, the API allows only ~6 GET requests per month. The icon set has ~7 500 components, so the script burns the entire monthly budget in a single run. This plugin replaces that script's download step with a local export that runs in the Figma sandbox.

Use this plugin after any Figma-side mass edit (the V3 icon rename, geometry fixes via `figma-fix-plugin`, etc.) to refresh the local `svgs/` directory.

## How it works

1. The plugin walks the Figma document and finds every `COMPONENT`.
2. For each component, it parses the name (convention: `Style / Category / IconName`), builds the target on-disk path `svgs/{kebab-category}/{Style}/{kebab-icon}.svg`, and calls `node.exportAsync({ format: 'SVG' })` to get the SVG bytes. The export runs in the Figma sandbox — no network call.
3. The plugin sends the SVG bytes to the UI webview in batches of 50, with progress updates.
4. When the user clicks **Download ZIP**, the UI bundles all received SVGs into a ZIP using a small in-page ZIP writer (no JSZip, no dependencies).
5. The browser triggers a download of `solar-icons-svgs.zip`.

## Installation

1. Open **Figma Desktop**.
2. Go to **Plugins > Development > Import from manifest...**.
3. Select the `manifest.json` file in this directory.
4. The plugin appears in **Plugins > Development > Solar Icon Exporter**.

## Workflow

1. Open the local Figma file (`Solar Icons Set - Fixed`).
2. Run the **rename plugin** first (if applicable) so the component names reflect the desired state.
3. Run **Solar Icon Exporter**. Wait for the progress bar to reach 100%.
4. Click **Download ZIP**. Save `solar-icons-svgs.zip` somewhere temporary.
5. Unzip the archive **into `packages/core/svgs/`**, replacing the existing content:
   ```sh
   unzip solar-icons-svgs.zip -d packages/core/
   ```
   This produces `packages/core/svgs/...` with the new files.
6. From `packages/core`, rebuild `metadata.json` from the new files (no API call):
   ```sh
   pnpm generate:svgs --offline
   ```
7. Manually remap `src/metadata-descriptions.json` keys to match the new icon names (a separate task).

## Files

| File | Role |
|---|---|
| `manifest.json` | Figma plugin manifest. |
| `code.js` | Main entrypoint. Walks the document, exports SVGs, sends to the UI. |
| `ui.html` | UI: progress bar, Download button, in-page ZIP writer. |
| `README.md` | This file. |
| `AGENT.md` | Knowledge base entry for AI agents. |

## Constraints

- **No build step.** The `.js` extension is Figma's required convention.
- **No dependencies.** Figma plugins cannot `require` npm packages. The ZIP writer is inlined in `ui.html`.
- **No network calls.** The plugin does not contact the Figma REST API or any external server.
- **No geometry changes.** Read-only with respect to the Figma document.
- **`ui.html` is Figma-sandboxed HTML.** No external script tags.
