---
'@solar-icons/angular': minor
'@solar-icons/cli': minor
'@solar-icons/js': minor
'@solar-icons/mcp': minor
'@solar-icons/nuxt': minor
'@solar-icons/react': minor
'@solar-icons/react-native': minor
'@solar-icons/solid': minor
'@solar-icons/solid-v2': minor
'@solar-icons/static': minor
'@solar-icons/svelte': minor
'@solar-icons/vue': minor
---

Expand catalogue to 1,692 icon families (10,152 SVGs), normalize `*-off` icons, and standardize modifier suffixes:

- Add 96 new icon families across all 6 canonical styles (`Bold`, `BoldDuotone`, `Broken`, `Linear`, `LineDuotone`, `Outline`):
  - Media rewind intervals (#763): `rewind-20-seconds-back`, `rewind-20-seconds-forward`, `rewind-30-seconds-back`, `rewind-30-seconds-forward`.
  - Slashed `*-off` states (#764 and completions): `restart-off`, `refresh-off`, `repeat-off`, `bot-off`, `bug-off`, `flashlight-off`, `globe-off`, `keyboard-off`, `megaphone-off`, `mouse-off`, `pen-off`, `pin-off`, `server-off`, `radio-off`, `route-off`, `screen-share-off`, `umbrella-off`, `wrench-off`.
  - Animals starter batch (#761): `bird`, `dog`, `paw-print`, `rabbit`, `turtle`, `snail`, `owl`, `feather`, `squirrel`, `butterfly`.
  - Modifier family completions (`64` icons): `*-x`, `*-plus`, `*-minus`, `*-check`, `*-lock`, `*-pen`, `*-cog`, `*-sync`, `*-search`, `*-clock` variants across existing parent families.
- Normalize all 14 legacy `*-off` icons (`wi-fi-off`, `heart-off`, `star-off`, `map-point-off`, `bookmark-off`, `eye-off`, `shield-off`, `microphone*-off`, `webcam-off`, `volume-off`, `cloud-off`) to the unified top-left-to-bottom-right (`\`) diagonal slash across all 6 styles, and harmonize `*-off` `LineDuotone` variants to 50% subject opacity with a 100% slash.
- Standardize 42 existing modifier icon names to geometric suffixes (`-x`, `-plus`, `-minus`, `-off`) while retaining every previous name as a generated `deprecatedAliases` export until v3.
