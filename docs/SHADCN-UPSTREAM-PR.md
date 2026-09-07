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

- [ ] `pnpm icons:build` completes for the v4 registry.
- [ ] The Solar library can be selected in the create picker.
- [ ] Base, Radix, and Aria previews render without missing icons.
- [ ] `shadcn init --preset ...` installs `@solar-icons/react`.
- [ ] `shadcn add` transforms `IconPlaceholder` imports and usage correctly.
- [ ] `shadcn migrate icons --to solar` updates supported imports and reports unsupported mappings.
- [ ] Existing preset codes still decode to their previous libraries.
- [ ] Tests and registry generation pass.

## Known limitation before submission

The current Solar audit has 13 unresolved registry concepts that need new six-style Solar glyphs or an explicit maintainer-approved fallback: circle-dashed, clipboard-paste, columns-3, container, file-bar-chart, file-chart-column, file-warning, folder-search, layout, loader, loader-2, message-circle-question, and star-off. The registry-specific `file-bar-chart` export is the Lucide alias for `file-chart-column-increasing`; `layout` is the alias for `panels-top-left`; and `loader-2` is the alias for `loader-circle`.

`audio-lines` is covered by Solar `soundwave`. `octagon-x` is covered by the documented `close-square` fallback, with `close-circle` as an alternate. These are not new Solar glyph blockers for the upstream proposal.

The PR should not silently map these to unrelated objects. The contribution can be prepared while this queue is completed, but first-class preview support should not be claimed until every placeholder has a reviewed Solar value.
