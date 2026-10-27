# Blazor compilation and trimming measurements

Measured locally on Windows x64 on 27 October 2026, using .NET SDK 10.0.402. These are local observations, not hardware-independent performance guarantees. GitHub-hosted Linux and Windows jobs are configured to repeat the checks; they have not run yet.

## Compilation

The library targets .NET 8. It contains 10,409 generated component types, including compatibility aliases. Generated files and restored dependencies were already present. Shared compilation was disabled. The rebuild forces compilation; the incremental run checks unchanged inputs. Each figure is one run on an active developer machine, rather than a statistical benchmark.

| Operation   | Seconds | Warnings |
| ----------- | ------: | -------: |
| rebuild     |   45.02 |        0 |
| incremental |    3.48 |        0 |

The full untrimmed library is 15,448,576 bytes. Generation and restore time are excluded from the compilation figures.

## Retained icon assembly

Static consumers use Linear components. Dynamic consumers select their weight at runtime and expose a button that cycles all six weights, retaining the complete icon family. Selection is Home first, then the remaining canonical names in ordinal order. Each publish uses a separate, fresh output directory and consumes the local NuGet package, without a project reference.

| Runtime | Logical icons | Static DLL bytes | Dynamic DLL bytes | Static Brotli bytes | Dynamic Brotli bytes |
| ------- | ------------: | ---------------: | ----------------: | ------------------: | -------------------: |
| net8.0  |             1 |           12,288 |            19,968 |               4,855 |                6,826 |
| net8.0  |            50 |           68,608 |           496,640 |              16,050 |               81,699 |
| net8.0  |         1,451 |        1,760,256 |        14,999,040 |             314,509 |            2,488,063 |
| net10.0 |             1 |           12,288 |            19,968 |               4,852 |                6,824 |
| net10.0 |            50 |           68,608 |           496,640 |              16,052 |               81,592 |
| net10.0 |         1,451 |        1,760,256 |        14,999,040 |             314,610 |            2,488,394 |

Both empty consumers remove the icon assembly completely. Static consumers retain exactly 1, 50, or 1,451 icon types. Dynamic consumers retain exactly 7, 350, or 10,157 icon types: the dynamic component plus its six styles per logical icon. No compatibility aliases survive these canonical-only scenarios. All 14 cases pass exact retained-type validation and produce no IL trimming warnings.

The static/dynamic difference is small for one icon and grows with catalogue coverage. These results support static components as the default and dynamic components as an opt-in for runtime style changes. The full-catalogue comparison selects one static style per icon; an application explicitly using all six static styles would retain their payloads too.

## Framework output footprint

These totals sum the files under `wwwroot/_framework`, excluding symbols, source maps, and duplicate compressed copies. The Brotli column selects `.br` where present and falls back to the original file for anything uncompressed. This is an output footprint, not a measured browser startup transfer: locale selection, bootstrap files, HTTP headers, and actual content negotiation can change network costs.

| Runtime | Case        | Uncompressed framework bytes | Framework bytes with Brotli |
| ------- | ----------- | ---------------------------: | --------------------------: |
| net8.0  | EMPTY       |                    8,418,919 |                   2,504,774 |
| net8.0  | STATIC_1    |                    8,441,022 |                   2,511,900 |
| net8.0  | STATIC_50   |                    8,499,902 |                   2,523,897 |
| net8.0  | STATIC_ALL  |                   10,267,326 |                   2,835,291 |
| net8.0  | DYNAMIC_1   |                    8,449,726 |                   2,514,453 |
| net8.0  | DYNAMIC_50  |                    8,929,982 |                   2,590,174 |
| net8.0  | DYNAMIC_ALL |                   23,537,854 |                   5,010,201 |
| net10.0 | EMPTY       |                    9,090,282 |                   2,696,740 |
| net10.0 | STATIC_1    |                    9,115,083 |                   2,704,401 |
| net10.0 | STATIC_50   |                    9,173,963 |                   2,716,329 |
| net10.0 | STATIC_ALL  |                   10,940,875 |                   3,028,927 |
| net10.0 | DYNAMIC_1   |                    9,123,787 |                   2,707,037 |
| net10.0 | DYNAMIC_50  |                    9,604,555 |                   2,782,613 |
| net10.0 | DYNAMIC_ALL |                   24,212,427 |                   5,203,213 |

## Settings and runtime verification

- .NET 8 application rendering ran on runtime 8.0.32; .NET 10 application rendering ran on runtime 10.0.13. Both pass 17,703 rendering, alias, parameter, accessibility, and escaping assertions.
- Release publishing uses managed trimming and normal native runtime relinking. AOT and Webcil are disabled. The latter permits direct assembly inspection, so these figures do not include Webcil wrapping overhead.
- Four headless browser tests run the published static and dynamic consumers on both frameworks. They confirm the WebAssembly runtime and, for dynamic consumers, all six weight changes. Two additional browser tests verify the moved playground in Interactive Server and WebAssembly.
- A separate Razor application compiles and renders Solar and LucideBlazor 1.0.6 components with the same `HeartIcon` name using fully qualified names.
- Publish durations are present in the JSON evidence but include sequential build/cache effects. They should not be treated as isolated static-versus-dynamic compilation benchmarks.

## Reproduce

```sh
pnpm --filter @solar-icons/core build
pnpm --dir packages/blazor generate:assets
pnpm --dir packages/blazor measure:build
pnpm --dir packages/blazor pack:dotnet
dotnet build packages/blazor/tools/AssemblyInspector -c Release
dotnet workload install wasm-tools wasm-tools-net8
pnpm --dir packages/blazor measure:trimming
pnpm --dir packages/blazor exec playwright install --with-deps chromium
pnpm --dir packages/blazor test:browser
```

Raw evidence is in `artifacts/build-results.json`, `artifacts/trim-comparison.json`, framework-specific rendering JSON files, and their logs. The trimming script saves a hash-addressed copy of the measured archive; `-ValidateOnly` validates the saved comparison and `-Resume` requires the current inputs to match. The final archive has refreshed documentation and an identical runtime DLL to the measured archive.

- Package version: `0.1.0-preview.2`.
- Measured archive SHA-256: `46871E1736C2764FE5130127A401FEDA3E55B92BADBC5AE3FA56207FCEDFA18F`.
- Runtime DLL SHA-256: `1A6DBB6320502776954D30B9A6D9CFC24634A59CE9D94D0AA1EAC6ACE96B0E2C`.
- Generated icon-code hash: `6012617ab2e43cd7e5bec02ce6dfe8d1cab7bf9b8e1d90eb093bf9750a88d84b`.

These are unreleased preview results. Publishing belongs to the maintainer and has not been performed.
