# AGENT: packages/figma-fix-plugin

- **Type:** Figma plugin source. Not a pnpm workspace member (no `package.json`).
- **Role:** Detects and repairs the upstream Figma file's `fill` vs `stroke` anomalies on the Linear, LineDuotone, and Broken styles. Run inside Figma's plugin sandbox, never from the command line.

## Files

| File | Role |
|---|---|
| `code.js` | Plugin entrypoint. Walks the document, finds components matching a Solar style, classifies paths by `strokes` vs `fills`, splits branched networks, harmonizes caps, and rewrites alignment. |
| `manifest.json` | Figma plugin manifest. |
| `ui.html` | Plugin UI (HTML + inline JS). |
| `README.md` | Install + run instructions. |

## When to use

When the upstream Figma file is updated by 480 Design and one of the affected styles regresses to a fill-heavy export. The maintainer opens the file in Figma, runs the plugin on the affected style, and re-exports.

## Constraints

- **No build step.** The `.js` extension is Figma's required convention.
- **No dependencies.** Figma plugins cannot `require` npm packages. Inline any utility code.
- **Side effects limited to the Figma document** the plugin is run against. No disk writes, no network calls.
- **`ui.html` is Figma-sandboxed HTML.** No external script tags. All JS/CSS is inline.
