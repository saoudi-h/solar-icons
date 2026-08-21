# Solar Icons Figma Plugin

Development source for the public Solar Icons browser and inserter.

The plugin embeds the complete current catalogue in all six styles from the local build output of `@solar-icons/static`. It does not make network requests, and the generated UI records the exact package version and icon count used to build it. The UI is built with Vite, React, TypeScript, Base UI, and plain CSS.

## Build and install locally

1. Install the repository dependencies and build `@solar-icons/static` if its generated assets are not current.
2. Run `pnpm --filter @solar-icons/figma-plugin build` from the repository root.
3. Open Figma Desktop.
4. Choose **Plugins → Development → Import plugin from manifest…**.
5. Select `manifest.json` in this directory.
6. Run **Solar Icons** from the Development plugins menu.

The build writes the gitignored `dist/code.js` and `dist/ui.html`. Vite bundles the React UI, Base UI behavior, Fuse index code, CSS, fonts, and verified logo assets into one local HTML file. Esbuild produces the small Figma sandbox bundle. Rebuild after source, icon, metadata, font, or version changes, then reload the development plugin in Figma.

## Current behavior

- Fuzzy-search the complete catalogue by icon name, category, and search tags using the same Fuse configuration as the docs.
- Filter the complete current catalogue by any of the six styles and by category.
- Adapt the dense virtualized grid to the plugin width so only visible SVG previews are mounted.
- Choose between immediate insertion and explicit multi-selection.
- Scrub or keyboard-adjust icon size and the stroke width used by Linear, Broken, and Line Duotone.
- Preview stroke-width changes immediately in the icon grid before insertion.
- Resize the plugin from any side or corner while the controls and grid adapt to the available space.
- Follow Figma's theme or explicitly preview the light and dark themes.
- Reset every persisted setting to its factory value in one action.
- Persist user settings with Figma client storage.
- Insert one icon or arrange multiple selected icons around the viewport center.
- Open the documentation and package pages from the Info tab, with exact embedded Iconify package marks.
- Use keyboard-accessible Base UI tabs and selects with fully custom Solar styling.

## Validation checklist

- The initial catalogue and every style switch appear without network requests or progressive CDN loading.
- Scrolling reaches every embedded icon while the UI remains responsive.
- Search, category filtering, arrow-key grid navigation, and both insertion modes work.
- Misspelled and out-of-order multi-word searches resolve through Fuse.
- Multi-selection inserts every selected icon once and groups the action into one undo step.
- Icon sizes from 8 to 256 px are correct.
- Linear, Broken, and Line Duotone retain editable strokes at 1, 1.5, and 2 px.
- Their grid previews update immediately when the stroke-width control is scrubbed.
- Outline, Bold, and Bold Duotone insert without applying a stroke-width override.
- All eight resize handles respect the minimum window size and the grid gains or loses columns responsively.
- System, light, and dark themes retain readable text, borders, focus states, and selection states.

## Figma Community assets

Run `pnpm --filter @solar-icons/figma-plugin capture:community` after UI changes. The command rebuilds the plugin, captures the real Icons, Settings, and Info tabs, then regenerates the 128 px icon, 1920 × 1080 thumbnail, and three Community carousel images in `community/dist`.

The editable composition lives in `community/presentation.html`. Keep publication visuals aligned with the product UI: use the canonical Solar mark, `#6870c4`, Bricolage Grotesque headings, Cal Sans UI copy, real plugin screens, and restrained borders and rounding.
