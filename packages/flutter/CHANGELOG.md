## 2.3.0

* Expand catalogue to 1,576 icon families (9,456 SVGs)

## 2.2.1

* Fix the secondary tone of duotone icons rendering lighter than intended on about 300 icons (for example `printer` in Bold Duotone). The secondary opacity was applied on the group and again on each element inside it, so it multiplied (0.25 instead of 0.5 by default). It is now applied once per accent layer, so `--solar-secondary-opacity` means what it says.

## 2.2.0

* Add 38 community icon families from contributor Grand Magus and align waterdrop

## 2.1.0

* Add 28 new icons across 12 categories (1,479 icons across six styles, 8,874 SVG variations).

## 2.0.2

- Restore the corrected catalogue artwork, including editable line shapes and dashed details, from the maintained Figma source. No icons are added or removed.

## 2.0.1

* Pub.dev listing: gallery screenshots, documentation link, and topics.
* Docs: complete static/dynamic sections plus duotone, aliases, and accessibility.

## 2.0.0

* First stable release, aligned with the Solar Icons v2 package family.
* 1,451 icons in six styles (Bold, BoldDuotone, Broken, Linear, LineDuotone, Outline) as static one-style widgets, plus style-switching dynamic widgets, `SolarProvider` defaults including the dynamic style, and deprecated-name typedefs.

## 0.1.0

* Initial Flutter package for the Solar Icons catalogue.
