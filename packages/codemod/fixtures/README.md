# Runnable Migration Fixtures

Each fixture is a small, pinned v1 application. `pnpm test:fixtures` copies it to a temporary directory, builds it with its v1 dependency, applies the codemod, installs the v2 beta, and builds it again when the migration is deterministic.

`react-v1-manual` is intentionally different: it builds only as v1, then verifies diagnostics for providers, namespaces, and category imports. It proves that the codemod stops safely when an application-level decision is required.

`vue-v1` exercises a `.vue` single-file component with static, dynamic, aliased, and renamed icon imports.

`nuxt-v1-config` validates the Nuxt module configuration migration in a real Nuxt build.

`svelte-v1` validates style imports, aliases, and removed icon names in a Svelte component.
