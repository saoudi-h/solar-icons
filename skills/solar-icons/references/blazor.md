# Blazor

`SolarIcons.Blazor` is an unreleased NuGet preview for .NET Blazor. Do not assume it is available on NuGet.org. Follow the local package instructions in `packages/blazor/README.md` until the release is announced.

The library supports .NET 8 and later. Use fully qualified component names such as `<SolarIcons.Blazor.HeartIcon />` when another imported icon library defines the same name.

Detect Blazor through `.csproj` and `.razor` files. After installing the packed local preview, add `@using SolarIcons.Blazor` to `_Imports.razor`.

```razor
<HomeLinearIcon Size="24" />
<HomeIcon Weight="IconWeight.Bold" Size="24" />
<HeartBoldDuotoneIcon SecondaryColor="#ef4444" SecondaryOpacity="0.4" />
```

Use static style-suffixed components when the style is fixed. Dynamic components default to `Linear` and retain that icon's six styles. Size is a CSS string; numeric text is pixels. Shared CSS variables use the same `--solar-*` names as the web packages. Use `Title` or ARIA labels for informative icons; unlabeled icons are decorative. The package requires no JavaScript interop.

`npx @solar-icons/cli get home --style linear --framework blazor` emits the static Razor example. MCP search/get accept `framework: "blazor"`. Names, weights, and component parameters use PascalCase; CSS style selection uses the separate `Weight` parameter.
