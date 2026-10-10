# Release procedure

Executable checklist for publishing any Solar Icons package. Run top to bottom. A human and an AI agent follow the same steps.

## 1. npm packages (changesets flow)

1. Land the change on `main` via PR with a changeset file (`.changeset/<name>.md`). Patch for fixes, minor for features, major for breaking changes.
2. Catalog changes (new icons, renames, metadata) go through the static package changeset. Dependents cascade automatically: `updateInternalDependencies: minor` bumps `@solar-icons/cli` on every static release and `@solar-icons/mcp` on every CLI release. Never hand-edit versions to force this.
3. Push to `main`. CI runs the release gates (build, typecheck, lint, test, `check:exports`, `check:figma-catalog`, `check:skill-counts`). Fix red gates before proceeding.
4. Merge the Changesets version PR that CI opens. The next CI run publishes to npm on `latest`.
5. Verify: `npm view <pkg> version` matches, then `pnpm check:exports` green on main.

## 2. Catalog-release checklist (new icons, renames, metadata)

Changesets cascade the versions, but these need explicit verification:

1. `pnpm check:icon-inventory` green (counts in README, AGENT.md, docs config match core).
2. `pnpm check:skill-counts` green (no hardcoded counts in `skills/`).
3. Alias redirect works: `pnpm --filter @solar-icons/cli exec tsx src/cli.ts get <old-name> --json` returns the canonical entry with a `deprecated` field. Add the old name to `deprecatedAliases` in `packages/core/src/metadata-descriptions.json` if a rename lacks one.
4. CLI tests green (`pnpm --filter @solar-icons/cli test`), including the alias redirect tests.
5. Skill prose: no catalog numbers anywhere in `skills/`. Point to `npx @solar-icons/cli overview`.

## 3. Blade package (`solar-icons/blade`, separate repo and org)

1. Normal state: do nothing. The weekly `sync-static` workflow detects a newer `@solar-icons/static`, regenerates SVGs plus the enum, and cuts a diff-aware release (patch for additions or modifications, minor for removals, none for metadata-only changes). Packagist imports the tag through the GitHub hook.
2. PHP-only fix: dispatch `sync-static` manually with `release: patch` (or `minor`).
3. Verify: `composer require solar-icons/blade` in a fresh Laravel project renders static, dynamic, helper, and enum forms.
4. First-time setup only (done): Packagist submit plus webhook, scope reservation. Never recreate these.

## 4. Flutter package (`solar_icons` on pub.dev, in-monorepo)

1. Normal state: `flutter.yml` regenerates both codegen outputs on every catalogue change and fails on drift. Regenerate locally (`node packages/flutter/tool/generate_icons.mjs`, then `node packages/flutter/tool/generate_gallery_registry.mjs`) and commit the output together with the catalogue change.
2. Bump `version:` in `packages/flutter/pubspec.yaml` manually (patch for fixes, minor for features or catalogue growth). Changesets cannot version Dart packages. Add a CHANGELOG.md entry under the new version header.
3. Publish: push a `solar_icons-v<version>` tag matching the pubspec version. `flutter-publish.yml` re-verifies everything and runs `dart pub publish --force`.
4. Verify: `flutter pub add solar_icons` in a fresh project renders widget, style-param, theme, and duotone forms; the example gallery eyeballs the full catalogue.
5. First-time setup only (pending): pub.dev account, package uploader, `PUB_TOKENS_JSON` secret. Never commit the token file.

## 5. Skill (auto-detected, no submission)

1. Content lives in `skills/solar-icons/`. No versions, no changelog, no submission step: skills.sh detects the skill when agents invoke the CLI, and ranking follows usage.
2. The skill must contain zero hardcoded catalog counts (`pnpm check:skill-counts` enforces this in CI). Point to `npx @solar-icons/cli overview`.
3. Framework matrix (`references/frameworks.md`) gains a row for every new package before its release, not after.

## 5. Figma plugin (manual, exception)

1. Rebuild from main, pull the refreshed catalog, regenerate community images from current sources (`packages/figma-plugin/community/`).
2. Publish from Figma Desktop by hand. No API exists, so this step stays manual. See `docs/FIGMA-PLUGIN-PUBLISHING.md`.

## 6. Post-release verification matrix

| Surface | Check |
|---|---|
| npm | `npm view` version, `check:exports` |
| Flutter | fresh `flutter pub add`, widget + theme + duotone forms, gallery eyeball |
| Blade | fresh `composer require`, four render forms |
| CLI/MCP | `get <alias> --json` redirect, `search` alias note |
| Skill | `check:skill-counts`, counts resolve via `overview` |
| Docs | package page, sidebar icon, icon-detail tab, homepage card |
