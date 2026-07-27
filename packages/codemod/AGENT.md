# AGENT: packages/codemod

`@solar-icons/codemod` is the public, opt-in migration CLI for Solar Icons major releases.

- Default to a dry run. Writing requires an explicit `--write` flag.
- Only transform syntax when the v2 target is deterministic. Record ambiguous or architectural changes as diagnostics.
- Use framework adapters. JavaScript and TypeScript source can use the TypeScript compiler API; SFC and template syntaxes must use their framework compiler rather than text replacement.
- Every transform needs fixtures for a successful migration and for an intentionally skipped case.
- Runnable fixtures live in `fixtures/`. `pnpm test:fixtures` copies each pinned v1 app to a temporary directory, builds it before and after migration, and installs the requested v2 package version between the builds. Keep executable fixtures limited to deterministic migrations; ambiguous cases belong in unit fixtures that assert a diagnostic.
- Transform results are composable: a later transform returning `changed: false` must not discard code already changed by an earlier transform.
- `src/icon-renames.ts` mirrors all 37 rows in the v2 icon-renames guide. The guide introduction incorrectly says 36; preserve the table as the canonical migration data until the documentation count is corrected.
