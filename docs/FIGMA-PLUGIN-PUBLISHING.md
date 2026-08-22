# Publish a Figma plugin update

This is the repository procedure for publishing a new version of the existing Solar Icons Figma
Community plugin. It is a how-to guide for maintainers and for agents assisting with a release.
The repository can prepare and verify the plugin artifact; only a maintainer can complete the final
Figma Community publication.

For the catalogue contract and CI gate, see
[`FIGMA-CATALOG-SYNC.md`](./FIGMA-CATALOG-SYNC.md).

## When a new plugin version is required

Publish an update when any of the following changes:

- the embedded SVG catalogue or metadata;
- the static package version represented by the embedded catalogue;
- plugin UI, behavior, assets, fonts, or Community artwork.

Documentation-only changes do not require a plugin publication. A package release that changes the
embedded catalogue does require one, even if the plugin source code itself did not change.

## 1. Prepare and verify the artifact

From the repository root, run:

```sh
pnpm check:figma-catalog
```

Do not continue if this command fails. It rebuilds `@solar-icons/static`, rebuilds the plugin, and
verifies that the generated UI contains the current SVG map, metadata, version, counts, and
deterministic catalogue hash.

Record the complete values printed by the command in the release worklog. The generated files are
ignored and must not be edited or committed manually:

- `packages/figma-plugin/dist/code.js`;
- `packages/figma-plugin/dist/ui.html`.

If the plugin UI or Community visuals changed, also run:

```sh
pnpm --filter @solar-icons/figma-plugin capture:community
```

Review the generated assets in `packages/figma-plugin/community/dist` before publication. A
catalogue-only update does not require new artwork when the existing visuals already show the
current count.

## 2. Smoke-test the local plugin

Use Figma Desktop:

1. Open any Figma file.
2. Select **Plugins → Development → Import plugin from manifest…**.
3. Select `packages/figma-plugin/manifest.json`.
4. Run **Solar Icons** from the Development plugins menu.
5. Check the Icons, Settings, and Info tabs.
6. Confirm the Info tab shows the current package version and logical icon count.
7. Confirm the catalogue, style switching, search, insertion, and offline loading work as expected.

The plugin must remain offline. Do not add a runtime network request to avoid the publication step.

## 3. Publish from Figma Desktop

Figma's current flow for an existing published classic plugin is:

1. Open a file in Figma Desktop.
2. Click the Figma logo in the upper-left corner.
3. Select **Plugins → Manage plugins**.
4. Find **Solar Icons**, open its `…` menu, and select **Publish new version**.
5. If **Publish new version** is unavailable, choose **Locate local version**, select
   `packages/figma-plugin/manifest.json`, confirm, and reopen the menu.
6. Review the **Publish plugin** modal. Keep the existing listing information unless the current
   name, description, tags, artwork, or security information needs updating.
7. Update the global description when a current user-facing fact changes, especially the icon count.
8. If Figma shows an optional release-notes field, use it if useful, but do not treat it as the
   repository's version history.
9. Click **Publish**.

The final **Publish** action is an external publication side effect. An agent may prepare the
artifact, open the relevant flow, and guide the maintainer, but must obtain the maintainer's
confirmation immediately before submitting it.

## 4. Verify the published version

After publication:

1. Open the public Solar Icons Community listing.
2. Confirm the listing is still available and its current description contains the correct count.
3. Launch or install the published plugin and verify the Info tab again.
4. Record the publication date, package version, logical icon count, SVG entry count, catalogue hash,
   and any listing changes in the dated Autonomos worklog.

Figma Community does not provide a dependable, user-visible changelog for every plugin version.
Keep the detailed release record in the repository commit and worklog. The Community description is
the place for current product facts, not historical release tracking.

## 5. Close the repository task

Only after the maintainer confirms that publication and the post-publication check are complete:

1. Mark `FIGMA-CATALOG-SYNC` as complete in `.autonomos/TASKS.md`.
2. Update or create `.autonomos/worklogs/YYYY-MM-DD-FIGMA-CATALOG-SYNC.md`.
3. Commit the task/documentation record and any source changes in one focused Conventional Commit.
4. Leave unrelated working-tree changes unstaged and uncommitted.

## Release note template

Use this information in the repository worklog for every catalogue publication:

```text
Plugin: Solar Icons
Publication date: YYYY-MM-DD
Static package version: X.Y.Z
Logical icons: N
Styles: 6
Canonical SVGs: N × 6
SVG map entries: N (including deprecated aliases)
Catalogue hash: sha256:...
Community description changed: yes/no
Community artwork changed: yes/no
Maintainer smoke test: passed/failed
```
