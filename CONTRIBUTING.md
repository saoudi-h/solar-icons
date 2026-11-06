# Contributing Guide

## How to Contribute

We welcome help with code, documentation and icon design. You can also simply tell us which icon you need.

- **Reporting Bugs**: If you find a bug, please open an issue with a clear description of the problem, steps to reproduce it, and any relevant details.
- **Feature Requests**: Feel free to propose new features or improvements by creating an issue. Explain the feature and why it would be useful.
- **Icon Requests and Proposals**: Use the [icon request or proposal form](https://github.com/saoudi-h/solar-icons/issues/new?template=icon-request.yml). Describe the use case and the closest existing icons. You do not need to draw or code anything.
- **Code Contributions**: If you'd like to contribute code, please fork the repository, create a new branch, and submit a pull request. Be sure to include tests for any new functionality.

## Licensing and attribution

Solar Icons’ code is distributed under the MIT license.

Icons from the original 480 Design set remain under CC BY 4.0, including corrected or normalized versions.

New original icons added to the catalogue are distributed under the MIT license. Their design must follow Solar’s visual language.

Authors of new icons are credited in the catalogue. Accepted contributions may be maintained, modified, replaced, or removed by the project in accordance with their license. Contributing does not grant a governance role.

## Proposing a new icon

Before drawing an icon or opening a pull request for artwork, use the [icon request form](https://github.com/saoudi-h/solar-icons/issues/new?template=icon-request.yml) to describe the need and any existing icons that come close to addressing it. Choose whether you are requesting an icon or would like to contribute its design. If an issue already exists, continue there instead of opening another one.

Wait for agreement on the contribution’s scope. If you want to contribute several icons, propose the list in that discussion first.

Design review starts with the Linear style. Create the other five styles after the Linear version has been approved.

The [maintained Figma file](https://www.figma.com/community/file/1700288903247372375/solar-icons-dev-icon-library) is our source of truth. We use GitHub issues to discuss proposals and record the review. You do not need edit access to our Figma source or a paid Figma plan.

### Sharing a design proposal

- **From Figma:** Work in your own draft, keep the icon in a clearly named 24 × 24 frame or component, and share a link to it in the issue. Allow viewing and copying so we can inspect and integrate the editable vectors. Include a visual preview in the issue.
- **From another vector editor:** Share the SVG source in an `svg` code block in the issue, with a visual preview. Keep live strokes editable and identify any reference artwork. We can import the vectors into Figma for review.
- Start with Linear. After we approve it, add the other five styles to the same proposal. Keep revisions and discussion in that issue.
- We integrate accepted vectors into the maintained Figma file, then export and validate package assets. Adding SVG files to the repository alone does not complete catalogue integration.

See the [icon contribution guide](https://solar-icons.dev/docs/v2/community/contributing#minimum-technical-expectations) for minimum technical expectations. We decide whether to accept a contribution based on usefulness, visual consistency, technical conformity and maintenance capacity.

## Originality

We welcome original designs that fit Solar’s visual language. We do not want drawings copied from other collections and presented as new original work.

If your proposal adapts an existing drawing, disclose that in your submission.

Undisclosed copying discovered after acceptance may result in the icon being removed from future releases and replaced with an original design.

## Code of Conduct

Please note that all contributors are expected to adhere to the [Code of Conduct](./CODE_OF_CONDUCT.md) to ensure a welcoming environment for everyone.

## Development Setup

1. Fork the repository and clone it locally.
2. Install dependencies:
    ```bash
    pnpm install
    ```
3. **Build the workspace packages** (required before running apps or tests):
    ```bash
    pnpm build
    ```
    > **Note:** Packages are no longer built automatically during install. You must run `pnpm build` manually after installing dependencies.
4. Alternatively, use the setup script to do both steps at once:
    ```bash
    pnpm setup
    ```

## Pull Request Process

1. For substantial changes, open an issue and agree on the scope first. Focused bug fixes and documentation corrections do not need a separate scope discussion.
2. Fork the repository and create your branch from `main`.
3. Edit source files rather than generated icon components. Follow the affected package's conventions.
4. Add meaningful tests for behavioural changes and run the affected package's checks.
5. Link the relevant issue and describe the problem, resulting behaviour and verification in your pull request. Include screenshots for visual changes.
6. Add a Changeset when published package behaviour changes. Documentation-only changes do not need one.

## Contributing a framework package

New framework packages (a new language or UI framework, e.g. Flutter, Rails) are welcome, but they become a maintenance commitment. Before writing code, open an issue describing the target registry, the API shape, and who updates the package when the icon catalogue grows.

A framework package is accepted when it meets all of these:

1. **Generated from the catalogue, never hand-copied.** The package reads `packages/core/svgs` (plus `metadata-descriptions.json` for aliases) through a checked-in generator, and generated files carry a "do not edit" header.
2. **Full coverage.** All six styles plus deprecated aliases, with a failing check when the catalogue drifts (regenerate-and-diff in CI).
3. **Idiomatic API.** Follow the target ecosystem's conventions (theming, naming, accessibility) instead of porting another framework's API. Duotone styles must render two tones, not one.
4. **Tests and a playground.** Automated tests plus an app that renders the whole catalogue for visual review.
5. **Release story.** Either join the repo's release pipeline or document who publishes, where, and how versions are cut.
6. **Docs and tooling.** A docs-site page, plus CLI/MCP/skill coverage when the tooling supports the ecosystem.

We may accept a package into an integration branch first and finish repo-side alignment (CI, docs, generated output) there. Authorship always stays with the contributor.

## Contact

If you have questions about contributing, ask us in a GitHub issue.

---

We appreciate your interest and efforts in contributing to this project!
