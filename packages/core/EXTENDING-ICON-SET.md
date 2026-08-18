# Adding a Solar icon extension

This is the production procedure for an icon that is not part of the original Solar set. The
current source of truth is Figma for the drawing and `packages/core` for the committed export and
metadata. AI-generated artwork is outside this workflow for now; if it is experimented with later,
the same checks and human visual review still apply.

## 1. Plan the icon

If the icon closes a Lucide gap, add it to `apps/icon-parity/app/compare/lucide-extension-roadmap.json`
first. Use the Lucide `sourceId`, a qualitative `priority`, and a short `priorityReason`. The
roadmap is for missing icons; it is not a second copy of the 1,247 existing Solar entries.

Keep the first release packet small (normally up to six icons). A priority does not mean that the
icon is already designed or that its name must be copied blindly. The final Solar name, category,
and aliases are decided during curation.

## 2. Draw and export from Figma

Create the icon in the Solar Figma source of truth and export the complete canonical style set:

`Bold`, `BoldDuotone`, `Broken`, `Linear`, `LineDuotone`, `Outline`.

Place the six files under the appropriate category in `packages/core/svgs/`, using one canonical
kebab-case name. Do not hand-edit generated framework packages. Figma does not yet have a separate
extension collection; the code metadata is therefore the authoritative distinction today.

## 3. Declare provenance and lifecycle

Add one hand-curated entry to `packages/core/src/metadata-descriptions.json` with at least:

```json
{
    "name": "example-icon",
    "category": "ui",
    "categoryTags": ["ui", "control"],
    "tags": ["example", "control"],
    "origin": "extended",
    "addedAt": "YYYY-MM-DD",
    "author": "github-handle",
    "state": "beta",
    "priority": "high",
    "priorityReason": "Why this icon is delivered at this point in the roadmap."
}
```

`origin: "extended"`, `addedAt`, and `author` are mandatory for new project icons. Keep `state:
"beta"` until the icon has been checked in the visual demo. `priority` is optional for upstream
icons, but should be retained for an extension while it is on the delivery roadmap. The metadata
file is hand-curated; never regenerate it wholesale.

## 4. Validate before committing

From the repository root, run:

```sh
pnpm --filter @solar-icons/core check:svgs
pnpm --filter @solar-icons/core check:metadata
pnpm --filter @solar-icons/core check:descriptions
pnpm --filter @solar-icons/core check:icons-metadata
pnpm --filter @solar-icons/core typecheck
pnpm --filter @solar-icons/core test
```

For a Lucide parity addition, also run `pnpm --filter icon-parity lucide:roadmap:check` and the two
coverage commands documented in the roadmap. Confirm that every style renders correctly in the
visual app before changing `state` to `stable`.

The metadata gate compares the working tree with Git `HEAD`. If new SVGs are present without an
explicit origin, it fails instead of silently treating them as part of the upstream 480 Design set.

## 5. Update the roadmap

Only after the icon is committed and visually validated, set its roadmap item to `created` and add
`createdIcon` if the canonical Solar name differs from the Lucide source name. If the item is
deliberately postponed, use `deferred` and explain why in the commit or roadmap reason.

One packet should normally produce one coherent commit (or one squashed pull request), not a
commit per SVG or per metadata field.
