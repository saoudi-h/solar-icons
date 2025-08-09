---
'@solar-icons/nuxt': patch
---

The --stub flag was causing build issues in the prepack script. This patch removes it to ensure proper package building during prepack phase.
