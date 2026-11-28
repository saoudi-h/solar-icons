# @solar-icons/solid-v2

## 2.2.0

### Minor Changes

- [#765](https://github.com/saoudi-h/solar-icons/pull/765) [`d8b0515`](https://github.com/saoudi-h/solar-icons/commit/d8b05151781eb068b06492a7e0ac8cedd3b37988) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Expand catalogue to 1,692 icon families (10,152 SVGs), normalize `*-off` icons, and standardize modifier suffixes:
  
  - Add 96 new icon families across all 6 canonical styles (`Bold`, `BoldDuotone`, `Broken`, `Linear`, `LineDuotone`, `Outline`):
    - Media rewind intervals ([#763](https://github.com/saoudi-h/solar-icons/issues/763)): `rewind-20-seconds-back`, `rewind-20-seconds-forward`, `rewind-30-seconds-back`, `rewind-30-seconds-forward`.
    - Slashed `*-off` states ([#764](https://github.com/saoudi-h/solar-icons/issues/764) and completions): `restart-off`, `refresh-off`, `repeat-off`, `bot-off`, `bug-off`, `flashlight-off`, `globe-off`, `keyboard-off`, `megaphone-off`, `mouse-off`, `pen-off`, `pin-off`, `server-off`, `radio-off`, `route-off`, `screen-share-off`, `umbrella-off`, `wrench-off`.
    - Animals starter batch ([#761](https://github.com/saoudi-h/solar-icons/issues/761)): `bird`, `dog`, `paw-print`, `rabbit`, `turtle`, `snail`, `owl`, `feather`, `squirrel`, `butterfly`.
    - Modifier family completions (`64` icons): `*-x`, `*-plus`, `*-minus`, `*-check`, `*-lock`, `*-pen`, `*-cog`, `*-sync`, `*-search`, `*-clock` variants across existing parent families.
  - Normalize all 14 legacy `*-off` icons (`wi-fi-off`, `heart-off`, `star-off`, `map-point-off`, `bookmark-off`, `eye-off`, `shield-off`, `microphone*-off`, `webcam-off`, `volume-off`, `cloud-off`) to the unified top-left-to-bottom-right (`\`) diagonal slash across all 6 styles, and harmonize `*-off` `LineDuotone` variants to 50% subject opacity with a 100% slash.
  - Standardize 42 existing modifier icon names to geometric suffixes (`-x`, `-plus`, `-minus`, `-off`) while retaining every previous name as a generated `deprecatedAliases` export until v3.

## 2.1.0

### Minor Changes

- [#758](https://github.com/saoudi-h/solar-icons/pull/758) [`f937168`](https://github.com/saoudi-h/solar-icons/commit/f9371684c464b40b20786e145b60cb759aebeced) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Expand catalogue to 1,596 icon families (9,576 SVGs):
  
  - Add 20 new `Sports` icon families across all 6 canonical styles (`Bold`, `BoldDuotone`, `Broken`, `Linear`, `LineDuotone`, `Outline`): `sport-shoe`, `footprints`, `kettlebell`, `biceps-flexed`, `jump-rope`, `yoga-mat`, `baseball`, `ping-pong`, `hockey`, `cricket`, `tennis-racket`, `skiing`, `boxing-glove`, `kayak`, `bow-arrow`, `fishing-rod`, `swimming-pool`, `whistle`, `sport-field`, and `flag-checkered`.
  
  - Fix open stroke endpoints to use round caps in 9 `tools` icons: `opacity` (Broken, Linear), `contrast` (Linear, LineDuotone), `flat-brush` (Linear, LineDuotone), `exclude` (Linear) and `subtract-minimalistic` (Linear, LineDuotone).

## 2.0.1

### Patch Changes

- [#755](https://github.com/saoudi-h/solar-icons/pull/755) [`4638a31`](https://github.com/saoudi-h/solar-icons/commit/4638a31866fd7d30afd1c204d22279c504eab809) Thanks [@saoudi-h](https://github.com/saoudi-h)! - Require stable `solid-js` and `@solidjs/web` `^2.0.0` peer dependencies and update README for the stable Solid 2 release.
