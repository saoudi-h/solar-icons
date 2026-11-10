# Release procedure

Executable checklist for publishing any Solar Icons package. Run top to bottom. A human and an AI agent follow the same steps.

## 1. npm packages (changesets flow)

1. Land the change on `main` via PR with a changeset file (`.changeset/<name>.md`). Patch for fixes, minor for features, major for breaking changes.
2. Catalog changes (new icons, renames, metadata) go through the static package changeset. Dependents cascade automatically: `updateInternalDependencies: minor` bumps `@solar-icons/cli` on every static release and `@solar-icons/mcp` on every CLI release. Never hand-edit versions to force this.
3. Push to `main`. CI runs the release gates (build, typecheck, lint, test, `check:exports`, `check:figma-catalog`, `check:skill-counts`). Fix red gates before proceeding.
4. Merge the Changesets version PR that CI opens. The next CI run publishes to npm on `latest`.
5. Verify: `npm view <pkg> version` matches, then `pnpm check:exports` green on main. Registry reads can lag for minutes behind the publish (one package can lag while another resolves instantly); trust the run log and the pushed tags, then re-check.

## 2. Catalog-release checklist (new icons, renames, metadata)

Changesets cascade the versions, but these need explicit verification:

1. `pnpm check:icon-inventory` green (counts in README, AGENT.md, docs config match core).
2. `pnpm check:skill-counts` green (no hardcoded counts in `skills/`).
3. Alias redirect works: `pnpm --filter @solar-icons/cli exec tsx src/cli.ts get <old-name> --json` returns the canonical entry with a `deprecated` field. Add the old name to `deprecatedAliases` in `packages/core/src/metadata-descriptions.json` if a rename lacks one.
4. CLI tests green (`pnpm --filter @solar-icons/cli test`), including the alias redirect tests.
5. Skill prose: no catalog numbers anywhere in `skills/`. Point to `npx @solar-icons/cli overview`.
6. New framework package: README row, docs page plus site integration, CLI/MCP/skill coverage, banner logo asset plus `<img>` row plus `pnpm generate:banner` rerun, homepage package count (all enforced by `check:icon-inventory` except the docs prose).

## 3. Blade package (`solar-icons/blade`, separate repo and org)

1. Normal state: do nothing. The weekly `sync-static` workflow detects a newer `@solar-icons/static`, regenerates SVGs plus the enum, and cuts a diff-aware release (patch for additions or modifications, minor for removals, none for metadata-only changes). Packagist imports the tag through the GitHub hook.
2. PHP-only fix: dispatch `sync-static` manually with `release: patch` (or `minor`).
3. Verify: `composer require solar-icons/blade` in a fresh Laravel project renders static, dynamic, helper, and enum forms.
4. First-time setup only (done): Packagist submit plus webhook, scope reservation. Never recreate these.

## 4. Flutter package (`flutter_solar_icons` on pub.dev, in-monorepo)

1. Normal state: `flutter.yml` regenerates both codegen outputs on every catalogue change and fails on drift. Regenerate locally (`node packages/flutter/tool/generate_icons.mjs`, then `node packages/flutter/tool/generate_gallery_registry.mjs`) and commit the output together with the catalogue change.
2. Bump `version:` in `packages/flutter/pubspec.yaml` manually (patch for fixes, minor for features or catalogue growth). Changesets cannot version Dart packages. Add a CHANGELOG.md entry under the new version header.
3. Publish: `flutter-publish.yml` uses `dart-lang/setup-dart` to configure pub.dev OIDC credentials before installing Flutter. Installing Flutter alone does not authenticate publishing. Push a `flutter_solar_icons-v<version>` tag matching the pubspec version. `flutter-publish.yml` re-verifies everything and runs `dart pub publish --force`, authenticated by a temporary GitHub OIDC token (no secret to manage).
4. Verify: `flutter pub add flutter_solar_icons` in a fresh project renders widget, style-param, theme, and duotone forms; the example gallery eyeballs the full catalogue.
5. First-time setup only: publish 2.0.0 once by hand (`dart pub publish` from `packages/flutter`, browser OAuth with a Google account — automation only works for existing packages), then enable automated publishing on the package admin page (repo `saoudi-h/solar-icons`, tag pattern `flutter_solar_icons-v{{version}}`). Consider a tag protection rule for `flutter_solar_icons-v*`.

## 5. Rails gem (`solar_icons` on RubyGems, in-monorepo)

1. Normal state: nothing happens automatically. When the catalogue moves, regenerate deliberately from the repository root (`node packages/rails/bin/fetch-icons`) and commit `lib/solar_icons/icons/`, `icons.rb`, and `.provenance.json` together with the catalogue change or in the release PR.
2. Release: bump `lib/solar_icons/version.rb`, update `CHANGELOG.md`, update the path version in `demo/Gemfile.lock`, land all of it on `main` via PR.
3. Publish: push a `solar_icons-v<version>` tag matching the version. `rails-publish.yml` re-runs the specs, builds the gem, asserts the 8,874-SVG payload, and pushes to RubyGems.org through OIDC trusted publishing (no token).
4. Verify: the version on rubygems.org, a frozen `bundle install` of `demo/`, and the CI demo smoke test (six style pages, 1,479 SVGs each).
5. First-time setup only (done): trusted publisher on rubygems.org for repository `saoudi-h/solar-icons` and workflow `rails-publish.yml`. Consider a tag protection rule for `solar_icons-v*`.

## 6. Skill (auto-detected, no submission)

1. Content lives in `skills/solar-icons/`. No versions, no changelog, no submission step: skills.sh detects the skill when agents invoke the CLI, and ranking follows usage.
2. The skill must contain zero hardcoded catalog counts (`pnpm check:skill-counts` enforces this in CI). Point to `npx @solar-icons/cli overview`.
3. Framework matrix (`references/frameworks.md`) gains a row for every new package before its release, not after.

## 7. Figma plugin (manual, exception)

1. Rebuild from main, pull the refreshed catalog, regenerate community images from current sources (`packages/figma-plugin/community/`).
2. Publish from Figma Desktop by hand. No API exists, so this step stays manual. See `docs/FIGMA-PLUGIN-PUBLISHING.md`.

## 8. Post-release verification matrix

| Surface   | Check                                                                    |
| --------- | ------------------------------------------------------------------------ |
| npm       | `npm view` version, `check:exports`                                      |
| Flutter   | fresh `flutter pub add`, widget + theme + duotone forms, gallery eyeball |
| Blade     | fresh `composer require`, four render forms                              |
| Rails gem | rubygems.org version, frozen `bundle install` of `demo/`                 |
| Blazor    | fresh `dotnet add package`, static + dynamic render, playground eyeball  |
| CLI/MCP   | `get <alias> --json` redirect, `search` alias note                       |
| Skill     | `check:skill-counts`, counts resolve via `overview`                      |
| Docs      | package page, sidebar icon, icon-detail tab, homepage card               |

## 9. Blazor package (`SolarIcons.Blazor` on NuGet.org, in-monorepo)

1. Normal state: `blazor.yml` regenerates the C# on every catalogue change and fails on drift. Regenerate locally (`pnpm --filter @solar-icons/core build`, then `pnpm --dir packages/blazor generate:assets`) and commit `catalogue-manifest.json` with the catalogue change; generated C# stays ignored. The .NET steps run with the SDK 10 and the 8 and 10 runtimes, in a container if they are not installed locally.
2. Bump `<Version>` in `packages/blazor/src/SolarIcons.Blazor/SolarIcons.Blazor.csproj` together with the two probe projects (`probes/PackageConsumer`, `probes/TrimProbe`) and the install commands in the README and the docs page. Add a `CHANGELOG.md` entry whose heading is the new version (`pnpm --dir packages/blazor check:version` fails when the project, the probes and the changelog disagree). Published NuGet versions are immutable: a mistake in a package's metadata or README is only fixed by a new version. Changesets version the CLI and MCP changes only; they cannot version NuGet packages.
3. Publish: push a `SolarIcons.Blazor-v<version>` tag matching the project version. `blazor-publish.yml` re-verifies the generation, renders every icon, packs, renders the packed artifact, and pushes to NuGet.org with a temporary API key obtained through OIDC trusted publishing (no secret to rotate; only the nuget.org profile name is stored, as `NUGET_USER`).
4. Verify: `dotnet add package SolarIcons.Blazor` in a fresh Blazor application renders a static and a dynamic icon; the playground in `apps/blazor-app` eyeballs the full catalogue.
5. First-time setup only: create the trusted publishing policy on nuget.org (repository owner `saoudi-h`, repository `solar-icons`, workflow file `blazor-publish.yml`; the policy scopes decide whether it may publish a new package), add the `NUGET_USER` repository secret, and consider a tag protection rule for `SolarIcons.Blazor-v*`. If the first push cannot use the policy, publish `2.0.0` once by hand with an API key and delete the key afterwards.
6. Trimming and size figures live in `packages/blazor/BENCHMARKS.md`; refresh them with `measure:build` and `measure:trimming` after changes to the generated components.

## 10. Coordinated catalogue patch releases

A site deployment does not release icon assets. For an artwork repair, use a clean branch from `main`; never import from a design-review branch containing unaccepted proposals.

1. Stage the reviewed ZIP with `pnpm --dir packages/core refresh:zip /absolute/path/export.zip --check-only`. Review the complete path/family delta, quality findings and provenance. Import only the accepted archive, without diagnostic overrides. Keep the archive hash and comparison evidence with the release worklog.
2. Regenerate and test every consumer. Add explicit patch changesets for the eight framework/web packages (`angular`, `js`, `nuxt`, `react`, `react-native`, `solid`, `svelte`, `vue`), `static`, `cli` and `mcp`. The codemod does not contain catalogue artwork and does not need an unrelated bump. Inspect `changeset status` before merging; do not assume a private core change cascades into every consumer.
3. Regenerate Blazor's manifest and bump its project, probe versions and changelog. Bump Flutter's pubspec and changelog, and regenerate its ignored widget output. Regenerate Rails from the newly built static package and bump its gem version, changelog and demo lockfile. Check each registry as well as repository versions: an unpublished version in `main` may contain earlier changes that will also ship.
4. Merge the source PR only after npm/site, Flutter, Ruby and Blazor checks pass. In the generated Changesets version PR, rebuild `static` and rerun `node packages/rails/bin/fetch-icons` so the Ruby payload provenance records the actual new static version. Commit that deterministic provenance refresh to the version PR before merging it. Then verify the npm publishing run and the exact versions of all affected packages. The code is published by CI, never by a local `npm publish`.
5. For non-npm distributions, push the three matching version tags from the verified `main` commit using maintainer credentials. Push only tags that do not already exist. A tag pushed by a workflow's default `GITHUB_TOKEN` does **not** start another workflow: do not add a tag-creating job and assume publishing will run. Flutter, RubyGems and NuGet have independent workflows and independent registry authentication; verify every run and registry result. First-time trusted-publisher configuration may still require the maintainer on the registry.
6. After the corrected static version is available on npm, dispatch `sync-static.yml` in `solar-icons/blade` with `release: none`. The workflow detects modified SVGs, runs PHPUnit before tagging and selects a patch automatically. Verify its GitHub release, `.static-version`, Packagist version and a fresh Composer consumer. Blade lives in a separate repository and is not versioned by the monorepo's Changesets PR.
7. Rebuild the Figma plugin from the corrected catalogue. Its Community update remains a manual publication from Figma Desktop; do not claim that npm or a docs deployment updates the installed Community plugin.

A failed registry publication is partial release state. Record the exact successful versions and tags, fix the failed lane and retry it without republishing immutable versions. Do not start integrating unaccepted icon proposals while this repair remains partially published.
