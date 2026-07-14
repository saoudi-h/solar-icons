# @solar-icons/core

Core logic, SVGs, metadata, and parser utilities for Solar Icons. This package serves as the definitive source of truth for the entire ecosystem.

## Features

- **Source of truth:** Contains the original optimized SVG paths and metadata for all 1,246 icons in 6 styles.
- **Parser & codegen:** Reusable functions for parsing SVGs and transforming them (`transformDuotoneAccent`, `loadIcon`).
- **TypeScript:** Shared interfaces (`StyleComponentsMap`, `Weight`) used by all framework packages.
- **Agnostic:** Build-time and metadata dependency only. No UI components.

## Install

```sh
npm install @solar-icons/core
```

## Usage

This package is generally consumed internally by other `@solar-icons` libraries or for custom code-generation pipelines.

```js
import { loadIcon, transformDuotoneAccent } from '@solar-icons/core'
import metadata from '@solar-icons/core/metadata.json'

console.log(`Total icons: ${metadata.length}`)
```

## Documentation

For deep technical dives into the core utilities and a searchable icon catalog, visit the [Core Documentation](https://solar-icons.vercel.app/docs/v2/packages/core).

## License

MIT License. Icons by 480 Design (CC BY 4.0).
