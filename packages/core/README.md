# @solar-icons/core

Core logic, SVGs, metadata, and parser utilities for Solar Icons. This package serves as the definitive source of truth for the entire ecosystem.

> **Private package.** `@solar-icons/core` is not published to npm. It is consumed as a workspace dependency at build time by the framework packages and embedded into their output. Install the framework package for your stack instead.

## Features

- **Source of truth:** Contains the original optimized SVG paths and metadata for all 1,246 icons in 6 styles.
- **Parser & codegen:** Reusable functions for parsing SVGs and transforming them (`transformDuotoneAccent`, `loadIcon`).
- **TypeScript:** Shared interfaces (`StyleComponentsMap`, `Weight`) used by all framework packages.
- **Agnostic:** Build-time and metadata dependency only. No UI components.

## Usage

This package is consumed internally by other `@solar-icons` libraries or for custom code-generation pipelines.

```js
import { loadIcon, transformDuotoneAccent } from '@solar-icons/core'
import metadata from '@solar-icons/core/metadata.json'

console.log(`Total icons: ${metadata.length}`)
```

## License

MIT License. Icons by 480 Design (CC BY 4.0).
