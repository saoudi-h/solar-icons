# Blazor playground

This local app exercises the actual .NET components in static SSR, Interactive Server, Interactive WebAssembly, and Interactive Auto. The public website uses its existing explorer with a Blazor code tab.

From the repository root:

```sh
pnpm --filter @solar-icons/core build
pnpm --dir packages/blazor generate:assets
pnpm --dir apps/blazor-app dev:dotnet
```

The launcher explicitly selects Development so source builds serve the Blazor client and framework assets. Production hosting requires published output. The library supports .NET 8 and later; this playground runs on .NET 10. Rendering and trimming probes exercise both .NET 8 and .NET 10 independently.
