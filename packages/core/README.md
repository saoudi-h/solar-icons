# Core Package (Internal)

## Overview

The `@solar/core` package is an internal utility within the Solar project monorepo. It is designed to manage and generate the base assets and build processes for the framework-specific Solar packages. This package is not intended for external use or direct publication on npm.

## Purpose

- **Asset Management**: Centralizes the SVG assets and metadata required for generating framework-specific icon components.
- **Build Support**: Provides scripts and configurations to streamline the build processes of dependent packages.
- **Internal Use**: Supports the development workflow within the Solar monorepo.

## Key Features

- **Centralized SVG Repository**: Contains all source SVG files used across the Solar ecosystem.
- **Metadata Generation**: Produces `metadata.json` to facilitate icon categorization and usage.
- **Build Scripts**: Custom scripts for downloading, transforming and optimizing SVG files.

## Installation

> Note: This package is only used internally within the monorepo and should not be installed or used separately.

## Usage

`@solar/core` is integrated directly into the monorepo’s build process and is not intended for direct imports or external development.

## License

The `@solar/core` package is part of the solar-icons, which is licensed under the [MIT License](../../LICENSE). The underlying icon assets are attributed to **480 Design** and licensed under [CC BY 4.0](https://www.figma.com/community/file/1166831539721848736).

## Contribution

Contributions to `@solar/core` are welcome as part of the overall Solar project development. For details, refer to the [contribution guidelines](../../CONTRIBUTING.md).
