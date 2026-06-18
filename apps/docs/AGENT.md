---
name: "@solar-icons/docs"
type: "app"
status: "active"
---
# AGENT CONTEXT: apps/docs

## 🧠 Role

The official Solar Icons documentation site. Public, deployed to https://solar-icons.vercel.app. Built with Next.js 16 + Fumadocs.

## ⚙️ Conventions

- Next.js 16 App Router, React 19, React Compiler enabled (`reactCompiler: true`).
- Tailwind CSS 4 (via `@tailwindcss/postcss`).
- UI primitives: Radix UI, `cmdk`, `framer-motion`, `vaul`.
- Search: Fumadocs built-in search over MDX content.
- LLMs: `/llms.txt` and `/llms-full.txt` are first-class deliverables.
- Build = `tsx ./scripts/generate-changelog.ts && next build`. The pre-build changelog script aggregates per-package `CHANGELOG.md` into a single page.
- Lint = `eslint . && pnpm lint:links`. `lint:links` uses `next-validate-link` to scan MDX content for dead links.
- Postinstall = `fumadocs-mdx`.

## 📁 Key Directories

| Path | Description |
|---|---|
| `app/` | Next.js App Router pages, layouts, API routes. `(home)/` is the marketing landing, `docs/` is the documentation tree, `api/search` is the search endpoint. |
| `content/docs/` | MDX content for the documentation tree. |
| `core/` | A separate data layer for the docs app. Has its own `scripts/` and `generated/`. See `apps/docs/core/AGENT.md`. |
| `lib/`, `components/` | Hand-written utilities and components. |
| `scripts/` | `generate-changelog.ts`, `lint.ts` (link checker), `preload.ts` (Bun preload for the link checker). |
| `app/og/` | OG image generation. |
| `app/llms.txt`, `app/llms-full.txt` | LLM index and full-text routes. |

## 🏗 Stack

- Next.js 16, React 19, TypeScript 6.
- Fumadocs 16.x.
- Radix UI + `cmdk` + `vaul` + `framer-motion`.
- `@number-flow/react` for animated numbers.
- `@calcom/cal-sans-ui` for the Cal Sans font.
- `bun` for the link-check script runtime.

## ⚠️ Known Constraints

- **`typescript.ignoreBuildErrors: true` in `next.config.mts`.** The docs build does not fail on type errors. Run `pnpm typecheck` (`tsgo --noEmit`) explicitly.
- **`serverExternalPackages: ['ts-morph', 'typescript', 'oxc-transform', 'twoslash', 'shiki']`** in `next.config.mts`. New MDX/TS tooling deps may need the same treatment.
- **`@solar-icons/react` is the runtime dependency** (not `react-perf`).
- **`generate-changelog.ts` hardcodes the list of public packages** in `apps/docs/scripts/generate-changelog.ts`. New public packages need to be added there.
- **`lint:links` runs on Bun, not Node** (`preload.ts` uses `Bun.plugin(createMdxPlugin(...))`).
- **`apps/docs/core/` duplicates pieces of `packages/core/`** (notably `generate-data.ts` reads `core/metadata.json` and emits `core/generated/utils.ts`).
