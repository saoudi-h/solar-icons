# Solar Icons and shadcn/ui integration

This document records the compatibility contract for adding Solar Icons to the shadcn/ui `create` flow. It is intentionally narrower than full Lucide parity: the target is the icon surface currently used by the shadcn registry.

## Current audit

The pinned source capture is stored in `apps/icon-parity/app/compare/shadcn-coverage/source-registry.json`. It was extracted from shadcn/ui commit `2b3e6d4f8d9161fe5c19340dc383aade392012dd`.

The current registry surface contains 182 unique Lucide names and 3,045 `IconPlaceholder` uses. The generated audit is available in `apps/icon-parity/app/compare/shadcn-coverage/AUDIT-REPORT.md`.

The current baseline has 159 accepted mappings, 5 fallback mappings, 18 candidates awaiting review, and no unresolved entries. `audio-lines` is covered by the existing `soundwave` icon. `octagon-x` has an explicit `close-square` fallback, with `close-circle` as an alternate. Lucide's exported `layout` name is a legacy alias for the canonical `panels-top-left` concept, which is now covered by Solar.

The review candidates and their shadcn usage rationale are tracked in `apps/icon-parity/app/compare/lucide-extension-roadmap.json` and the generated audit. Broader compound-family opportunities are tracked separately in `apps/icon-parity/app/compare/ICON-FAMILY-EASY-WINS.md` so shadcn-critical work is not diluted by the wider catalogue plan.

Run the audit with:

```sh
pnpm --filter icon-parity shadcn:coverage
pnpm --filter icon-parity shadcn:coverage:check
pnpm --filter icon-parity shadcn:package:check
pnpm --filter icon-parity families:report:check
```

To refresh the source capture after cloning a newer shadcn/ui revision:

```sh
pnpm --filter icon-parity shadcn:coverage \
  --source-file /path/to/ui/apps/v4/registry/icons/__lucide__.ts \
  --bases-dir /path/to/ui/apps/v4/registry/bases \
  --commit <full-commit-sha>
```

## Mapping statuses

- `mapped`: an accepted current-name, audited-equivalent, or explicit override mapping exists.
- `fallback`: a documented fallback exists but does not preserve the full Lucide construction.
- `review`: a candidate exists, but visual or semantic review is still required before upstream submission.
- `missing`: no current Solar icon or accepted candidate exists; plan a six-style extension or an explicit upstream exception.

The audit is not a license to silently promote candidates. A `review` mapping must be checked against the rendered Linear style before it becomes an accepted compatibility mapping.

## Proposed package contract

The first shadcn integration should use the Linear style:

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

The package contract must be smoke-tested from a packed artifact. A workspace build alone does not prove that `@solar-icons/react/linear` resolves for consumers.

## Upstream implementation checklist

The contribution to shadcn/ui must cover both the CLI and the v4 registry preview:

1. Add the Solar entry to `packages/shadcn/src/icons/libraries.ts`.
2. Append `solar` to the preset library values without reordering existing values.
3. Add the picker logo and the lazy Solar preview renderer.
4. Add a Solar prop to every `IconPlaceholder` used by the registry bases.
5. Generate the Solar registry exports and canonical mapping.
6. Add transformer, migration, and package-install tests.
7. Run the registry build and test a new project, an existing project, component installation, and icon migration.
8. Include documentation, a changeset, and an explicit maintenance promise.

The mapping layer is required because Solar and Lucide use different names. For example, `plus` maps to `add`, `x` maps to `close`, and `settings-2` maps to `settings-minimalistic`.

## Extension policy

The current shadcn queue should be handled separately from the general Lucide queue. The registry audit currently has no missing concepts: every placeholder has a Solar value, while 18 visual or semantic candidates and 5 documented fallbacks still need maintainer-facing review. Existing Solar equivalents and explicit fallbacks must remain recorded before a candidate is promoted to an accepted equivalence.

The family report also captures lower-cost compound work such as clipboard, file, folder, chat, grid, and table variants. Those entries are triage proposals, not automatic shadcn requirements.

New icons must follow `packages/core/EXTENDING-ICON-SET.md`: six styles, curated metadata, visual validation, and core inventory checks. Do not add a one-style compatibility glyph solely to satisfy the registry.

## Interim distribution

Before upstream acceptance, a custom `registry:base` or pre-transformed registry can demonstrate Solar adoption. It must not be presented as official `iconLibrary: solar` support: the stock shadcn CLI only recognizes libraries built into its own registry map.
