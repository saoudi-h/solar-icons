---
'@solar-icons/react': patch
'@solar-icons/react-native': patch
---

Declare `@types/react` as an optional peer dependency so the published `.d.mts` files resolve their `react` type imports under strict installers (pnpm isolated/global virtual store, Yarn PnP, Bun isolated linker).
