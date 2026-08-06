---
'@solar-icons/nuxt': patch
---

Keep the module defaults (color `currentColor`, size 24, stroke width 1.5, secondary color `currentColor`, secondary opacity 0.5) when only some styling options are set on `solarIcons`, instead of dropping the unset ones. The module now also warns when styling options are ignored because `provider: false` is set.
