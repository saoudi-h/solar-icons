# @solar-icons/mcp

MCP server for Solar Icons — 1,268 icons × 6 styles. Exposes `solar_*` tools for search, get, list, info and overview via the Model Context Protocol.

## Install

```json
// .vscode/mcp.json, claude_desktop_config.json, etc.
{
    "mcpServers": {
        "solar-icons": {
            "command": "npx",
            "args": ["-y", "@solar-icons/mcp"]
        }
    }
}
```

Or with local stdio:

```bash
npx -y @solar-icons/mcp
```

## Tools

| Tool                    | Description                                      |
| ----------------------- | ------------------------------------------------ |
| `solar_search_icons`    | Search by name/tags/category                     |
| `solar_get_icon`        | Get import snippet + CDN + SVG for one icon      |
| `solar_list_icons`      | List icons (by category)                         |
| `solar_info_icon`       | Show metadata + all import paths for one icon    |
| `solar_overview`        | Global overview — catalog, packages, Figma, docs |
| `solar_list_categories` | List 37 categories                               |
| `solar_list_styles`     | List 6 styles + provider tokens                  |

All tools use `@solar-icons/static` as source of truth (offline, no network required beyond `npx` install). For programmatic use, prefer `--json` via the CLI (`npx @solar-icons/cli search --json`).

## Development

```bash
pnpm --filter @solar-icons/mcp build
pnpm --filter @solar-icons/mcp start   # stdio
npx @modelcontextprotocol/inspector npx -y @solar-icons/mcp  # inspector
```
