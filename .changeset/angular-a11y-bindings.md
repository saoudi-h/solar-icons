---
'@solar-icons/angular': patch
---

Bind `ariaLabel` to the `aria-label` attribute and render `titleAttr` (or `alt`) as a `<title>` child on static and dynamic icons, so the documented accessibility inputs actually expose an accessible name. The `SolarIcon` directive now forwards `undefined` values too, so clearing an input resets the icon to its defaults.
