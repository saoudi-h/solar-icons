---
'@solar-icons/angular': patch
---

Add explicit `.js` / `/index.js` extensions to relative imports and exports so types and ESM modules resolve under `moduleResolution: "node16"` and `"nodenext"`.
