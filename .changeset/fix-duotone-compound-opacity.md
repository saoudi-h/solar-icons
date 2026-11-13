---
'@solar-icons/static': patch
'@solar-icons/js': patch
---

Fix the secondary tone of duotone icons rendering lighter than intended on about 300 icons (for example `printer` in Bold Duotone). The secondary opacity was applied on the group and again on each element inside it, so it multiplied (0.25 instead of 0.5 by default). It is now applied once per accent layer, so `--solar-secondary-opacity` means what it says.
