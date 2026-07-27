# @solar-icons/codemod

Conservative, opt-in migrations for Solar Icons v2.

Run a preview first. It never writes files unless `--write` is passed.

```bash
npx @solar-icons/codemod --react-v1-mode static
npx @solar-icons/codemod --react-v1-mode static --write
```

## React v1 strategy

`--react-v1-mode static` is the default and recommended mode. It converts a known `weight` to a per-style import, removing the prop for the smallest bundle.

`--react-v1-mode dynamic` preserves the old all-styles component model through `@solar-icons/react/dynamic`.

If a `weight` expression cannot be resolved while using `static`, the codemod safely uses `dynamic` for that icon and prints a file, line, column, code, and explanation.

## Manual follow-ups

The codemod reports, without rewriting, legacy providers and `useSolar`, category imports, and default namespace imports. These need an application-level decision and are linked to the v2 migration guide.

All 37 removed icon names are converted through an explicit v1-to-v2 mapping.

## Verification

```bash
pnpm test
pnpm test:fixtures
```

The runnable fixtures build pinned v1 applications, migrate a temporary copy, install the v2 beta, and build again.
