# Publish a Figma plugin update

This is the repository procedure for publishing a new version of the existing Solar
Icons Figma Community plugin. It is a how-to guide for maintainers and for agents
assisting with a release. The repository can prepare and verify the plugin
artifact; only a maintainer can complete the final Figma Community publication.

For the catalogue contract and CI gate, see
[`FIGMA-CATALOG-SYNC.md`](./FIGMA-CATALOG-SYNC.md).

## When a new plugin version is required

Publish an update when any of the following changes:

- **the static catalogue**: a new `@solar-icons/static` version (new icons,
  changed icons, changed metadata) changes the embedded SVG bodies;
- **plugin code or UI**: behavior, layout, colors, fonts, or any source file
  under `packages/figma-plugin/src`;
- **registry data**: `registry.json` (package list, logos, summaries) changes
  what the Info tab and the embedded registry show;
- **Community assets**: `community/listing-description.md`, the presentation
  slides, or the generated artwork changes;
- **Figma listing fields**: name, description, tags, icons, or screenshots.

Documentation-only changes do not require a plugin publication. A package release
that changes the embedded catalogue does require one, even if the plugin source
code itself did not change.

When in doubt, run the pre-flight checks: if they pass and the artifacts are
unchanged, there is nothing to publish.

## 1. Pre-flight checks

From the repository root, run all three guards:

```sh
pnpm check:icon-inventory   # icon counts across README, docs, and generated lists
pnpm check:registry         # package listings across every surface
pnpm check:figma-catalog    # rebuilds static + plugin, verifies the embedded catalogue
```

Do not continue if any command fails. Together they verify that:

- the embedded SVG map, metadata, version, counts, and deterministic catalogue
  hash match `packages/static/dist`;
- every package and skill in `registry.json` is listed in the README table, the
  docs pages, the docs sidebar, the plugin Info tab, and the Community
  ecosystem artwork;
- no build placeholder remains in `dist/ui.html`.

The generated files are ignored and must not be edited or committed manually:

- `packages/figma-plugin/dist/code.js`;
- `packages/figma-plugin/dist/ui.html`.

Record the values printed by the commands in the release worklog.

## 2. Regenerate the Community assets

If the listing description, the package list, the icon count, or any presentation
data changed, regenerate the artwork:

```sh
pnpm --filter @solar-icons/figma-plugin capture:community
```

Review the generated assets in `packages/figma-plugin/community/dist` before
publication: `plugin-icon-128.png`, `thumbnail-1920x1080.png`, and the three
1920x1080 screenshots (`01-explore`, `02-customize`, `03-ecosystem`). The
ecosystem slide reads its package list from the same surfaces the guards check,
so a stale package list fails `check:registry` before it reaches an image.

A catalogue-only update does not require new artwork when the existing visuals
already show the current facts.

## 3. Smoke-test the local plugin

Use Figma Desktop:

1. Open any Figma file.
2. Select **Plugins → Development → Import plugin from manifest…**.
3. Select `packages/figma-plugin/manifest.json`.
4. Run **Solar Icons** from the Development plugins menu.
5. Check the Icons, Settings, and Info tabs.
6. Confirm the Info tab shows the current package version, the icon count, and
   the full package list from `registry.json`.
7. Confirm every style renders straight from the bundle, with no network needed;
   if the catalogue ever outgrows the embed budget, the overflow downloads once
   from the CDN at launch (the status line reports progress, skeleton cells
   appear meanwhile).
8. Reload the plugin offline and confirm the embedded styles still render.

The manifest `networkAccess` stays scoped to the versioned static distribution
with a public reasoning string. Review the scope before publishing: it must never
widen beyond versioned Solar assets, and pack downloads must never fetch a newer
catalogue than the embedded version.

## 4. Publish from Figma Desktop

Figma's current flow for an existing published classic plugin is:

1. Open a file in Figma Desktop.
2. Click the Figma logo in the upper-left corner.
3. Select **Plugins → Manage plugins**.
4. Find **Solar Icons**, open its `…` menu, and select **Publish new version**.
5. If **Publish new version** is unavailable, choose **Locate local version**,
   select `packages/figma-plugin/manifest.json`, confirm, and reopen the menu.
6. Review the **Publish plugin** modal. Keep the existing listing information
   unless the current name, description, tags, artwork, or security information
   needs updating.
7. Paste the Community description from
   `packages/figma-plugin/community/listing-description.md`. Update that file
   first if any user-facing fact changed (especially the icon count, which
   `pnpm check:icon-inventory` enforces), then paste verbatim.
8. Upload the generated assets when the modal asks for icons and screenshots:
   `community/dist/plugin-icon-128.png` and the four 1920x1080 images.
9. If Figma shows an optional release-notes field, use it if useful, but do not
   treat it as the repository's version history.
10. Click **Publish**.

The final **Publish** action is an external publication side effect. An agent may
prepare the artifact, open the relevant flow, and guide the maintainer, but must
obtain the maintainer's confirmation immediately before submitting it.

## 5. Verify the published version

After publication:

1. Open the public Solar Icons Community listing.
2. Confirm the listing is still available, its description contains the correct
   count, and the icons and screenshots show the current facts.
3. Launch or install the published plugin and verify the Info tab again.
4. Record the publication date, package version, logical icon count, SVG entry
   count, catalogue hash, and any listing changes in the dated Autonomos
   worklog.

Figma Community does not provide a dependable, user-visible changelog for every
plugin version. Keep the detailed release record in the repository commit and
worklog. The Community description is the place for current product facts, not
historical release tracking.

## 6. Close the repository task

Only after the maintainer confirms that publication and the post-publication
check are complete:

1. Mark `FIGMA-CATALOG-SYNC` as complete in `.autonomos/TASKS.md`.
2. Update or create `.autonomos/worklogs/YYYY-MM-DD-FIGMA-CATALOG-SYNC.md`.
3. Commit the task/documentation record and any source changes in one focused
   Conventional Commit.
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
Bundle: X.XX MiB raw, X.XX MiB gzip
Registry: N packages, N skill(s)
Community description changed: yes/no
Community artwork changed: yes/no
Maintainer smoke test: passed/failed
```
