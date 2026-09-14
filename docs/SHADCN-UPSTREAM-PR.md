# Draft shadcn/ui contribution

## Proposed title

`feat: add Solar Icons support`

## Summary

Add Solar Icons as an icon library in the shadcn/ui `create`, `init`, `apply`, component transformation, and icon migration flows.

Solar uses the public `@solar-icons/react` package and its Linear style barrel. The package exposes standard React SVG props, refs, class names, accessibility attributes, and a stable MIT distribution.

## Scope

- Add `solar` to the icon library registry.
- Append `solar` to preset encoding values without changing existing order.
- Add the Solar picker logo and preview renderer.
- Add Solar mappings to the registry placeholders.
- Generate Solar icon exports and the canonical mapping.
- Add transformation, migration, and package-install tests.
- Verify a packed `@solar-icons/react` artifact rather than relying only on a workspace build.

The current compatibility audit covers 182 unique Lucide names and 3,045 registry uses. The Solar-side audit is tracked in `apps/icon-parity/app/compare/shadcn-coverage/`.

## Package contract

```ts
solar: {
  name: "solar",
  title: "Solar Icons",
  packages: ["@solar-icons/react"],
  import: "import { ICON } from '@solar-icons/react/linear'",
  usage: "<ICON />",
  export: "@solar-icons/react/linear",
}
```

Solar and Lucide names are not expected to match. The mapping layer handles names such as `plus` → `add`, `x` → `close`, and `settings-2` → `settings-minimalistic`.

## Validation checklist

- [x] `pnpm icons:build` completes for the v4 registry.
- [x] The Solar library can be selected in the create picker.
- [x] Base, Radix, and Aria previews receive Solar mappings without missing icons.
- [ ] `shadcn init --preset ...` installs `@solar-icons/react`.
- [ ] `shadcn add` transforms `IconPlaceholder` imports and usage correctly.
- [ ] `shadcn migrate icons --to solar` updates supported imports and reports unsupported mappings.
- [x] Existing preset codes still decode to their previous libraries.
- [x] Tests, typechecks, formatting, lint, and registry generation pass locally.

## Known limitation before submission

The regenerated Solar audit has no unresolved registry concepts. It contains 18 visual or semantic review candidates and 5 documented fallbacks. The upstream patch supplies a Solar value for every registry placeholder, but the review candidates should remain explicit until shadcn maintainers accept the mapping policy.

`audio-lines` is covered by Solar `soundwave`. `octagon-x` is covered by the documented `close-square` fallback, with `close-circle` as an alternate. These are not new Solar glyph blockers for the upstream proposal.

The PR should not silently map review candidates to unrelated objects. The contribution can provide complete technical preview coverage while clearly documenting the candidates and fallbacks for maintainer review.
