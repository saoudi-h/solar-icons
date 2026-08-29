# @solar-icons/cli

CLI for Solar Icons — 1,268 icons × 6 styles. Search, get and list icons locally (offline) via `@solar-icons/static`. Designed as the single source of truth for `skills` and the future MCP server.

```bash
pnpm add -D @solar-icons/cli
# or without install
npx @solar-icons/cli search "home" --limit 10 --json
```

## Commands

```bash
solar-icons search <query> [--limit 20] [--style linear] [--category ui] [--framework react] [--json]
solar-icons get <name> [--style linear] [--framework react] [--out file.svg] [--json]
solar-icons list [--category ui] [--style linear] [--json] [--limit 50]
solar-icons info <name> [--json]
solar-icons categories [--json]
solar-icons styles [--json]
```

All `--json` outputs are machine-readable (for agents / MCP).

Framework snippet examples: `react` → `import { HomeBoldIcon } from "@solar-icons/react/bold/home"`, `vue`, `svelte`, `solid`, `angular` (`SolarHomeBold`), `react-native`, `nuxt`, `static`, `js`.
