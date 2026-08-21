# AGENT: packages/figma-plugin

- **Type:** Public-facing Figma plugin. Not a pnpm workspace member.
- **Role:** Browse and insert the maintained Solar Icons SVG distribution into Figma files.
- **Asset architecture:** `scripts/build.mjs` embeds `packages/static/dist/icons.json`, `metadata-descriptions.json`, Cal Sans UI, Bricolage Grotesque, and package marks into the generated, gitignored `dist/ui.html`. The complete current catalogue × 6 styles is local in the UI iframe at runtime; `networkAccess` must remain `none`.
- **Source layout:** the Figma sandbox lives in `src/main`, shared message contracts in `src/shared`, and the React UI in `src/ui`. Edit source files, never `dist/code.js` or `dist/ui.html`.
- **Tooling:** Vite bundles and inlines the React UI; esbuild bundles the sandbox. Base UI supplies headless Tabs and Select behavior. Keep visual styling in plain CSS and do not add Tailwind without a demonstrated product benefit.
- **Design direction:** compact, flat utility UI aligned with the docs app and Figma itself. Use semantic Figma theme tokens, continuous grids, fine dividers, and the indigo brand accent. Avoid card grids, repeated rounded boxes, shadows, decorative gradients, and motion that delays exploration.
- **Layout:** Figma already displays the plugin name in its window chrome. Do not duplicate it with an in-plugin header. Keep the default browser 300px wide, make the window resizable from every edge and corner, and use Icons, Settings, and Info tabs for secondary content.
- **Grid performance:** the full SVG library is parsed locally by the UI and the column count follows the available width. Only visible rows and a small buffer may be mounted. Never move the large library into the Figma main sandbox, reintroduce a result cap, or make one network request per preview.
- **Search:** use Fuse with the same keys and options as the docs (`name`, `tags`, `category`, `categoryTags`, threshold `0.2`, `ignoreLocation: true`). Keep one index in memory and preserve AND semantics for multi-term queries.
- **Insertion behavior:** support both immediate insertion and explicit multi-selection. Settings persist via `figma.clientStorage`.
- **Brand:** reuse the canonical logo asset, `#6870c4`, Cal Sans UI for body copy, and Bricolage Grotesque for titles. UI actions use embedded Solar SVGs. Package marks are extracted at build time from the exact `devicon` and `vscode-icons` Iconify collections used by the docs; they remain grayscale until hover reveals their embedded native colors.
- **Themes:** system theme uses Figma semantic variables. Explicit light and dark previews are first-class persisted settings so both modes remain testable when the Linux desktop theme is unreliable.
- **Runtime constraints:** avoid optional chaining and nullish coalescing in the Figma main thread. The UI and main thread communicate through `postMessage`.
- **Editable strokes:** Linear, Broken, and Line Duotone use the stroke-width control. Do not describe these collectively as “Linear icons”; that is ambiguous with the Linear style. The other three styles use filled geometry and receive no stroke override.
- **Geometry controls:** size and stroke width support horizontal pointer scrubbing, keyboard increments, double-click reset, and an immediate grid preview. Persist only committed values so dragging does not write to client storage every frame.
