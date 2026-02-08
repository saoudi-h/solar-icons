# Solar Icons - Beta Release Workflow

## Overview

This document explains the beta publishing process to test new features before a stable release.

## Why a `beta` branch?

Using a `beta` branch is a common convention in projects that use Changesets. Here's how it works:

- **`main`**: Production branch, publishes stable versions (e.g., `1.0.4`)
- **`beta`**: Pre-production branch, publishes beta versions (e.g., `1.0.5-beta.0`)

> **Note**: Some projects use `next` or `canary` instead of `beta`. It's a matter of preference.

## Beta Publishing Workflow

### 1. Prepare the beta branch

```bash
# Create the beta branch from main (only once)
git checkout main
git pull
git checkout -b beta

# OR merge a feature branch into beta
git checkout beta
git merge feat/icon-naming-refactor
```

### 2. Enter prerelease mode

```bash
# Activate prerelease mode with "beta" tag
pnpm changeset pre enter beta
```

This creates a `.changeset/pre.json` file that tells Changesets to generate `-beta.X` versions.

### 3. Create a changeset

```bash
pnpm changeset
```

Answer the prompts: affected packages, change type, description.

### 4. Version the packages

```bash
pnpm changeset version
```

This updates `package.json` files with versions like `1.0.5-beta.0`, `1.0.5-beta.1`, etc.

### 5. Publish to NPM

```bash
# Publish with the "beta" tag
pnpm changeset publish --tag beta
```

Or simply push to the `beta` branch if the CI workflow is configured.

### 6. Exit prerelease mode

When ready for stable release:

```bash
pnpm changeset pre exit
```

Then merge `beta` → `main` to publish stable versions.

## GitHub Actions Workflows

### release.yml (main branch)
- Triggered on push to `main`
- Publishes stable versions

### release-beta.yml (beta branch)
- Triggered on push to `beta`
- Publishes beta versions with `--tag beta`

## Using beta versions

Users can install beta versions with:

```bash
# Install the latest beta
npm install @solar-icons/react@beta

# Install a specific version
npm install @solar-icons/react@1.0.5-beta.0
```

## Convention Summary

| Branch | NPM Tag | Versions | Public |
|--------|---------|----------|--------|
| `main` | `latest` | `1.0.4` | Yes, default |
| `beta` | `beta` | `1.0.5-beta.0` | Yes, opt-in |

## Alternatives to a beta branch

If you prefer to avoid a permanent `beta` branch:

1. **Feature branch + prerelease**: Activate prerelease on your feature branch
2. **Local publish**: Use `pnpm pack` for local testing
3. **Verdaccio**: Local NPM registry for internal testing
