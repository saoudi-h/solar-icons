# Solar Icons for Blazor

An unreleased preview of native Blazor components for the Solar catalogue: 1,451 icons across six styles (8,706 SVG variations). The library targets .NET 8 and supports .NET 8 and later applications. The maintainer accepted the package name and monorepo location in [proposal 632](https://github.com/saoudi-h/solar-icons/issues/632#issuecomment-6418051432). The initial version is provisional. Publishing and maintenance belong to the Solar Icons project; no NuGet package has been published from this branch.

## Use the local preview

Build and pack the library with the contributor commands below. In a separate .NET 8 or later Blazor application, install the resulting package from the local feed:

```sh
dotnet add package SolarIcons.Blazor --version 0.1.0-preview.2 --source <repository>/packages/blazor/artifacts/packages
```

Add `@using SolarIcons.Blazor` to `_Imports.razor` or the consuming component.

```razor
<HomeLinearIcon Size="24" />
<HeartBoldDuotoneIcon Size="32" SecondaryColor="#ef4444" SecondaryOpacity="0.4" />
```

Static components include the style in their names and reference only that style. Dynamic components select a style at runtime and reference that icon's six styles:

```razor
<HomeIcon Weight="IconWeight.Outline" Size="24" />
```

`Weight` defaults to `Linear`. Other weights are `Bold`, `BoldDuotone`, `Broken`, `LineDuotone`, and `Outline`. Consumer applications do not need Node or a generator. The library does not require JavaScript interop or a particular Blazor render mode.

## Parameters and theming

`Size` accepts numeric text interpreted as pixels or CSS lengths such as `2rem`. `Color`, `StrokeWidth`, `SecondaryColor`, and `SecondaryOpacity` customize the icon. Opacity accepts finite values from zero to one. CSS length and color strings are interpreted by the browser.

The default size is 24 pixels, primary color is `currentColor`, stroke width is 1.5, and secondary opacity is 0.5. The existing `--solar-size`, `--solar-color`, `--solar-stroke-width`, `--solar-secondary-color`, and `--solar-secondary-opacity` variables provide inherited defaults:

```razor
<div style="--solar-size:32px;--solar-color:#172c29;--solar-secondary-color:#27a782">
    <HeartBoldDuotoneIcon />
</div>
```

Use `Isolated="true"` to ignore Solar variable defaults. `Class` is merged with the generated Solar classes; explicit `Style` follows parameter-generated CSS and therefore wins on equal CSS specificity. Additional SVG, ARIA, and data attributes are forwarded to the root SVG. A static icon has classes such as `solar solar-home-linear`; a dynamic icon has `solar solar-home`.

## Accessibility and aliases

Unlabeled icons are decorative with `aria-hidden="true"` and `focusable="false"`. Supply `Title`, `aria-label`, or `aria-labelledby` for informative icons. Title text is encoded. Explicit accessibility attributes are respected.

```razor
<HomeLinearIcon Title="Home" />
<HeartIcon aria-label="Favorite" />
```

Metadata aliases reuse the canonical component. Deprecated aliases have `[Obsolete]` guidance. No icon geometry is duplicated in an alias implementation.

## Other icon libraries

The components live in `SolarIcons.Blazor`. If another imported library also defines a component such as `HeartIcon`, qualify the component and enum names in Razor:

```razor
<SolarIcons.Blazor.HeartIcon Weight="SolarIcons.Blazor.IconWeight.Bold" />
```

`tests/Coexistence` compiles and renders Solar and Lucide `HeartIcon` components together. Parameters and additional attribute values are encoded by Blazor's render tree builder; CSS strings remain caller-controlled CSS values.

## Contributor commands

Generation needs Node and pnpm only. Building and verifying the package uses the .NET 10 SDK, with .NET 8 and .NET 10 runtimes installed for the application tests. From the repository root:

```sh
pnpm install --frozen-lockfile
pnpm --filter @solar-icons/core build
pnpm --dir packages/blazor generate:assets
pnpm --dir packages/blazor check:generated
pnpm --dir packages/blazor build:dotnet
pnpm --dir packages/blazor test:dotnet
pnpm --dir packages/blazor pack:dotnet
pnpm --dir packages/blazor test:package
pnpm --dir packages/blazor test:coexistence
pnpm --dir apps/blazor-app dev:dotnet
```

The playground lives in `apps/blazor-app` and tests the actual .NET components. The public website keeps its existing explorer and adds a Blazor code tab and documentation page.

The playground command explicitly uses the Development environment so a source build serves its framework and client static assets. Use a published application's output when testing Production hosting.

The TypeScript generator in `scripts/generate.ts` consumes the shared core parser, aliases, and duotone helper. Generated C#, the playground registry, and benchmark consumers are ignored; commit the generated `catalogue-manifest.json` when source inputs change. CI regenerates all three outputs, compares the manifest against the commit, and verifies output freshness and repeated-generation determinism. UTF-8 literals keep full-catalogue SVG geometry out of the .NET user-string metadata limit.

`tests/RenderChecks` verifies every canonical SVG in static and dynamic forms, aliases, parameters, accessibility, and attribute escaping on both .NET 8 and .NET 10. `probes/PackageConsumer` installs the packed NuGet artifact without a project reference on both runtimes. Change the preview version when repacking modified library code to avoid cached NuGet artifacts.

## Compilation and trimming measurements

```sh
pnpm --dir packages/blazor measure:build
dotnet build packages/blazor/tools/AssemblyInspector -c Release
dotnet workload install wasm-tools wasm-tools-net8
pnpm --dir packages/blazor measure:trimming
```

Pack the library first. The WebAssembly relink needs `python3` on the path. The comparison publishes 1, 50, and all canonical icons, using static Linear components and dynamic components, on .NET 8 and .NET 10. Each framework also has an empty baseline. The script validates exact retained types, rejects IL trim warnings, records Brotli and uncompressed assembly/framework sizes, and uses fresh output directories. The dynamic cases retain the full weight switch and provide a live style control. AOT and Webcil are disabled; normal managed trimming and native runtime relinking remain enabled.

Results are written under `artifacts/`, including a hash-addressed snapshot of the measured NuGet archive. `measure:trimming -- --resume` resumes an interrupted comparison only when the package and catalogue hashes match. `--validate-only` rechecks the completed matrix against its saved archive. See `BENCHMARKS.md` for measured results and their limits.

## Credits and releases

The initial Blazor implementation was contributed by [TahaReeh](https://github.com/TahaReeh). The project maintainer handles package maintenance and releases through this repository's CI under the project's NuGet account. Tag naming and publishing authentication must be configured before the first release; the verification workflow does not publish.

## License

Package code is MIT. Icons are CC BY 4.0 by [480 Design](https://www.figma.com/community/file/1166831539721848736). Preserve appropriate attribution and the included `LICENSE-THIRD-PARTY` notice.
