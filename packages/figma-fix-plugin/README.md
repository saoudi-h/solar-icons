# Solar Icon Fixer

A lightweight, high-performance Figma plugin tailored for the `@solar-icons` suite to diagnose and rebuild vector geometries, ensuring they export cleanly as SVG strokes rather than static baked fills.

---

## 🎯 Purpose

Figma's SVG exporter often converts strokes to outline fills when it encounters complex vector networks (e.g. branching paths, mixed endpoint caps, or non-centered alignments). This plugin automatically:
1. **Diagnoses** vector layers for elements that will trigger fill conversion.
2. **Rebuilds** problematic nodes non-destructively, creating clean, SVG-compliant vector structures.
3. **Validates** results with an interactive SVG Weight Slider to test responsiveness.
4. **Detects** solid fills/surfaces using a strict linear design checker.

---

## 🚀 Key Features

* **Cycle-Aware Branching Check**: Employs an iterative Depth-First Search (DFS) graph cycle detector to identify loops. It permits open branching structures (like arrowheads on shafts) to pass as clean, while flagging actual closed loops that cause SVG export failures.
* **Smart Cap Diagnostics**: Mutes false positives by ignoring default/unspecified `NONE` vertex-level stroke caps that inherit node-level styling correctly.
* **Strict Mode (Surfaces Detector)**: Allows toggling a linear design validator to flag any solid shapes/fills (surfaces), helping maintain a purely stroke-based icon set.
* **Weight Slider**: Renders a live SVG preview with a real-time stroke-width slider to test visual fidelity.
* **Safe Rebuilding & Purging**: Hides and renames original layers for safety. A **🧹 Clean** button permanently removes hidden original layers in a single click when you are ready.
* **Anti-Race Condition Matching**: Uses transaction request IDs to coordinate messages between the sandboxed main thread (`code.js`) and the webview (`ui.html`), preventing UI freezes when clicking quickly.

---

## 📂 File Structure

* [manifest.json](./manifest.json) — Figma plugin configuration manifest.
* [code.js](./code.js) — The main execution controller (runs in Figma's sandboxed QuickJS engine). Houses the DFS graph analyzer, the non-destructive node rebuilder, and the O(N) chunked UTF-8 binary stream exporter.
* [ui.html](./ui.html) — The webview UI. Features a premium dark-themed layout, SVG preview renders, an interactive path attributes inspector, and a persistent configuration manager using `figma.clientStorage`.

---

## ⚙️ Installation & Usage

1. Open **Figma Desktop**.
2. Go to **Plugins > Development > New plugin...**.
3. Choose **Import from manifest.json** and select the [manifest.json](./manifest.json) file in this directory.
4. Run the plugin on any frame or vector component.
5. *Tip*: Press `Ctrl + Alt + P` to quickly re-run or reload the plugin in development.
