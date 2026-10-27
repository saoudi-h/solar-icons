# Blazor compilation and trimming measurements

Measured on Linux x64 on 27 October 2026 in a container, using .NET SDK 10.0.403 (runtimes 8.0.33 and 10.0.14). These are local observations, not hardware-independent performance guarantees. The first figures of this document were measured by the contributor on Windows; the Linux run reproduces the retained types exactly and the sizes within 0.1%.

## Compilation

The library targets .NET 8. It contains 10,409 generated component types, including compatibility aliases. Generated files and restored dependencies were already present. Shared compilation was disabled. The rebuild forces compilation; the incremental run checks unchanged inputs. Each figure is one run on a developer machine, rather than a statistical benchmark.

| Operation   | Seconds | Warnings |
| ----------- | ------: | -------: |
| rebuild     |   18.29 |        0 |
| incremental |    1.32 |        0 |

The full untrimmed library is 15,433,728 bytes. Generation and restore time are excluded from the compilation figures.

## Retained icon assembly

Static consumers use Linear components. Dynamic consumers select their weight at runtime and expose a button that cycles all six weights, retaining the complete icon family. Selection is Home first, then the remaining canonical names in ordinal order. Each publish uses a separate, fresh output directory and consumes the local NuGet package, without a project reference.

| Runtime | Logical icons | Static DLL bytes | Dynamic DLL bytes | Static Brotli bytes | Dynamic Brotli bytes |
| ------- | ------------: | ---------------: | ----------------: | ------------------: | -------------------: |
| net8.0  |             1 |           12,288 |            19,968 |               4,837 |                6,785 |
| net8.0  |            50 |           68,096 |           496,128 |              15,971 |               81,386 |
| net8.0  |         1,451 |        1,758,720 |        14,984,192 |             315,287 |            2,488,741 |
| net10.0 |             1 |           12,288 |            19,968 |               4,851 |                6,781 |
| net10.0 |            50 |           68,096 |           496,128 |              16,019 |               81,450 |
| net10.0 |         1,451 |        1,758,720 |        14,984,192 |             315,353 |            2,489,274 |

Both empty consumers remove the icon assembly completely. Static consumers retain exactly 1, 50, or 1,451 icon types. Dynamic consumers retain exactly 7, 350, or 10,157 icon types: the dynamic component plus its six styles per logical icon. No compatibility aliases survive these canonical-only scenarios. All 14 cases pass exact retained-type validation and produce no IL trimming warnings.

The static/dynamic difference is small for one icon and grows with catalogue coverage. These results support static components as the default and dynamic components as an opt-in for runtime style changes. The full-catalogue comparison selects one static style per icon; an application explicitly using all six static styles would retain their payloads too.

## Framework output footprint

These totals sum the files under `wwwroot/_framework`, excluding symbols, source maps, and duplicate compressed copies. The Brotli column selects `.br` where present and falls back to the original file for anything uncompressed. This is an output footprint, not a measured browser startup transfer: locale selection, bootstrap files, HTTP headers, and actual content negotiation can change network costs.

| Runtime | Case        | Uncompressed framework bytes | Framework bytes with Brotli |
| ------- | ----------- | ---------------------------: | --------------------------: |
| net8.0  | EMPTY       |                    8,418,839 |                   2,504,431 |
| net8.0  | STATIC_1    |                    8,440,941 |                   2,512,697 |
| net8.0  | STATIC_50   |                    8,499,309 |                   2,524,605 |
| net8.0  | STATIC_ALL  |                   10,265,709 |                   2,836,820 |
| net8.0  | DYNAMIC_1   |                    8,449,645 |                   2,515,705 |
| net8.0  | DYNAMIC_50  |                    8,929,389 |                   2,591,123 |
| net8.0  | DYNAMIC_ALL |                   23,522,925 |                   5,012,523 |
| net10.0 | EMPTY       |                    9,084,469 |                   2,696,315 |
| net10.0 | STATIC_1    |                    9,108,752 |                   2,703,569 |
| net10.0 | STATIC_50   |                    9,167,632 |                   2,715,479 |
| net10.0 | STATIC_ALL  |                   10,933,520 |                   3,028,627 |
| net10.0 | DYNAMIC_1   |                    9,117,968 |                   2,707,798 |
| net10.0 | DYNAMIC_50  |                    9,598,224 |                   2,783,333 |
| net10.0 | DYNAMIC_ALL |                   24,191,760 |                   5,204,706 |

## Settings and runtime verification

- .NET 8 application rendering ran on runtime 8.0.33; .NET 10 application rendering ran on runtime 10.0.14. Both pass 17,703 rendering, alias, parameter, accessibility, and escaping assertions.
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
pnpm --dir packages/blazor measure:trimming   # needs python3 for the WebAssembly relink
pnpm --dir packages/blazor exec playwright install --with-deps chromium
pnpm --dir packages/blazor test:browser
```

Raw evidence is in `artifacts/build-results.json`, `artifacts/trim-comparison.json`, framework-specific rendering JSON files, and their logs. The trimming script saves a hash-addressed copy of the measured archive; `--validate-only` validates the saved comparison and `--resume` requires the current inputs to match. 

- Package version: `2.0.0`.
- Measured archive SHA-256: `2556cd09a6ea01e2af11d7400c9c1d716df816f2a787390a2af67da40587adb4`.
- Runtime DLL SHA-256: `eba4c89b2c6860217d74026a24181fc5300b73265d59d7500fca068b19a2b74b`.
- Generated icon-code hash: `ad2ed0c685cf1d87dbedd3f40539eb728cc4ca6f657c57cee6bdd472a3dfa76c`.

These are unreleased preview results.
