# Contributing Guide

## How to Contribute

Thank you for considering contributing to my project! Here are some ways you can help:

- **Reporting Bugs**: If you find a bug, please open an issue with a clear description of the problem, steps to reproduce it, and any relevant details.
- **Feature Requests**: Feel free to propose new features or improvements by creating an issue. Explain the feature and why it would be useful.
- **Code Contributions**: If you'd like to contribute code, please fork the repository, create a new branch, and submit a pull request. Be sure to include tests for any new functionality.

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

1. Fork the repository and create your branch from `main`.
2. Make your changes, ensuring you follow our style guide.
3. Test your changes to confirm everything works as expected.
4. Submit your pull request, providing a clear description of your changes.

## Contributing a framework package

New framework packages (a new language or UI framework, e.g. Flutter, Rails) are welcome, but they become a maintenance commitment. Before writing code, open an issue describing the target registry, the API shape, and who updates the package when the icon catalogue grows.

A framework package is accepted when it meets all of these:

1. **Generated from the catalogue, never hand-copied.** The package reads `packages/core/svgs` (plus `metadata-descriptions.json` for aliases) through a checked-in generator, and generated files carry a "do not edit" header.
2. **Full coverage.** All six styles plus deprecated aliases, with a failing check when the catalogue drifts (regenerate-and-diff in CI).
3. **Idiomatic API.** Follow the target ecosystem's conventions (theming, naming, accessibility) instead of porting another framework's API. Duotone styles must render two tones, not one.
4. **Tests and a playground.** Automated tests plus an app that renders the whole catalogue for visual review.
5. **Release story.** Either join the repo's release pipeline or document who publishes, where, and how versions are cut.
6. **Docs and tooling.** A docs-site page, plus CLI/MCP/skill coverage when the tooling supports the ecosystem.

The maintainer may accept a package into an integration branch first and finish repo-side alignment (CI, docs, generated output) there. Authorship always stays with the contributor.

## Contact

If you have any questions about contributing, feel free to open an issue or reach out to me directly.

---

I appreciate your interest and efforts in contributing to this project!
