#!/usr/bin/env node
/**
 * Solar Icons MCP Server
 *
 * Exposes solar_* tools via Model Context Protocol (stdio).
 * Source of truth is @solar-icons/static (via @solar-icons/cli), no network.
 */

import { readFileSync, existsSync } from 'node:fs'

import { McpServer } from '@modelcontextprotocol/sdk/server/mcp.js'
import { StdioServerTransport } from '@modelcontextprotocol/sdk/server/stdio.js'
import {
    getOverview,
    importSnippet,
    listCategories,
    loadDescriptions,
    resolveSvgPath,
    rootImportSnippet,
    searchCatalog,
    STYLES,
    cdnSvgUrl,
    type Style,
} from '@solar-icons/cli'
import { z } from 'zod'

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

const CHARACTER_LIMIT = 25000

function truncate(text: string): { text: string; truncated: boolean } {
    if (text.length <= CHARACTER_LIMIT) return { text, truncated: false }
    const half = Math.floor(CHARACTER_LIMIT / 2)
    return {
        text: `${text.slice(0, half)}\n\n… truncated from ${text.length} to ${half} chars. Use limit/offset to paginate.`,
        truncated: true,
    }
}

function toFrameworkList(): string {
    return 'react|vue|svelte|solid|angular|react-native|nuxt|static|js'
}

// ---------------------------------------------------------------------------
// Server
// ---------------------------------------------------------------------------

const server = new McpServer({
    name: 'solar-icons-mcp-server',
    version: '1.0.0',
})

// ---------------------------------------------------------------------------
// solar_search_icons
// ---------------------------------------------------------------------------

server.registerTool(
    'solar_search_icons',
    {
        title: 'Search Solar Icons',
        description: `Search Solar Icons by name, tags or category. Use when the user asks for an icon, needs a replacement for Lucide/Phosphor/Tabler, or wants to browse the catalog.

Args:
  - query (string): search terms, e.g. "home", "shopping cart", "arrow up"
  - limit (number): max results 1..100 (default 20)
  - style (string): optional style filter: ${STYLES.join('|')}
  - category (string): optional category filter (see solar_list_categories)
  - framework (string): optional framework to include import snippet (${toFrameworkList()})

Returns: { total, count, query, results: [{ name, category, tags, import? }] } + markdown
`,
        inputSchema: {
            query: z
                .string()
                .min(1)
                .max(200)
                .describe('Search terms, e.g. "home" or "shopping cart"'),
            limit: z.number().int().min(1).max(100).default(20).describe('Max results 1..100'),
            style: z
                .enum([...STYLES] as [string, ...string[]])
                .optional()
                .describe('Style filter'),
            category: z.string().optional().describe('Category filter'),
            framework: z
                .enum([
                    'react',
                    'vue',
                    'svelte',
                    'solid',
                    'angular',
                    'react-native',
                    'nuxt',
                    'static',
                    'js',
                ] as const)
                .optional()
                .describe('Framework for import snippet'),
        },
        annotations: {
            readOnlyHint: true,
            destructiveHint: false,
            idempotentHint: true,
            openWorldHint: false,
        },
    },
    async ({ query, limit = 20, style, category, framework }) => {
        try {
            const descs = loadDescriptions()
            const results = searchCatalog(descs as any, {
                query,
                limit,
                style: style as Style | undefined,
                category,
            })
            const mapped = results.map(r => ({
                name: r.name,
                category: r.category,
                tags: r.tags.slice(0, 6),
                ...(framework
                    ? {
                          import: importSnippet(
                              r.name,
                              (style as Style) ?? 'linear',
                              framework as any
                          ),
                      }
                    : {}),
            }))
            const structured = {
                total: mapped.length,
                count: mapped.length,
                query,
                results: mapped,
                has_more: false,
            }
            const lines = [`# Search: "${query}" — ${mapped.length} result(s)`, '']
            for (const r of mapped) {
                lines.push(
                    `- **${r.name}** — ${r.category} — ${r.tags.join(', ')}${(r as any).import ? ` → ${(r as any).import}` : ''}`
                )
            }
            const text = lines.join('\n')
            const { text: truncated } = truncate(text)
            return {
                content: [{ type: 'text', text: truncated }],
                structuredContent: structured as any,
            }
        } catch (e) {
            return {
                isError: true,
                content: [
                    { type: 'text', text: `Error: ${e instanceof Error ? e.message : String(e)}` },
                ],
            }
        }
    }
)

// ---------------------------------------------------------------------------
// solar_get_icon
// ---------------------------------------------------------------------------

server.registerTool(
    'solar_get_icon',
    {
        title: 'Get Solar Icon',
        description: `Get import snippet, CDN URL and SVG for a single Solar icon. Use when the user picked an icon name and you need the exact import for their framework.

Args:
  - name (string): kebab icon name, e.g. "home", "arrow-up"
  - style (string): style, default linear: ${STYLES.join('|')}
  - framework (string): framework for snippet, default react: ${toFrameworkList()}

Returns: { name, style, framework, category, import, cdn, svg } + markdown
`,
        inputSchema: {
            name: z.string().min(1).describe('Kebab icon name, e.g. "home"'),
            style: z
                .enum([...STYLES] as [string, ...string[]])
                .default('linear')
                .describe('Style'),
            framework: z
                .enum([
                    'react',
                    'vue',
                    'svelte',
                    'solid',
                    'angular',
                    'react-native',
                    'nuxt',
                    'static',
                    'js',
                ] as const)
                .default('react')
                .describe('Framework for snippet'),
        },
        annotations: {
            readOnlyHint: true,
            destructiveHint: false,
            idempotentHint: true,
            openWorldHint: false,
        },
    },
    async ({ name, style = 'linear', framework = 'react' }) => {
        try {
            const descs = loadDescriptions()
            const entry = descs.find(d => d.name === name)
            if (!entry) {
                return {
                    isError: true,
                    content: [
                        {
                            type: 'text',
                            text: `Icon '${name}' not found. Try solar_search_icons with query "${name}"`,
                        },
                    ],
                }
            }
            const snippet = importSnippet(name, style as Style, framework as any)
            const cdn = cdnSvgUrl(name, style as Style)
            const svgPath = resolveSvgPath(name, style as Style)
            let svg: string | undefined
            if (svgPath && existsSync(svgPath)) {
                try {
                    svg = readFileSync(svgPath, 'utf8')
                } catch {}
            }
            const structured: any = {
                name,
                style,
                framework,
                category: entry.category,
                tags: entry.tags,
                import: snippet,
                cdn,
                svgPath: svgPath ?? null,
                svg,
            }
            const lines = [
                `# ${name} — ${style} — ${framework}`,
                '',
                `\`\`\`ts\n${snippet}\n\`\`\``,
                '',
                `- Category: ${entry.category}`,
                `- CDN: ${cdn}`,
            ]
            if (svg)
                lines.push('', '```svg', svg.slice(0, 800) + (svg.length > 800 ? '…' : ''), '```')
            const text = lines.join('\n')
            const { text: truncated } = truncate(text)
            return {
                content: [{ type: 'text', text: truncated }],
                structuredContent: structured,
            }
        } catch (e) {
            return {
                isError: true,
                content: [
                    { type: 'text', text: `Error: ${e instanceof Error ? e.message : String(e)}` },
                ],
            }
        }
    }
)

// ---------------------------------------------------------------------------
// solar_list_icons
// ---------------------------------------------------------------------------

server.registerTool(
    'solar_list_icons',
    {
        title: 'List Solar Icons',
        description: `List Solar icons, optionally filtered by category. Use to browse the catalog.

Args:
  - category (string): optional category (see solar_list_categories)
  - limit (number): max results 1..200 (default 50)
  - offset (number): pagination offset (default 0)

Returns: { total, count, offset, icons: [{ name, category }] } + markdown
`,
        inputSchema: {
            category: z.string().optional().describe('Category filter'),
            limit: z.number().int().min(1).max(200).default(50).describe('Max results'),
            offset: z.number().int().min(0).default(0).describe('Offset for pagination'),
        },
        annotations: {
            readOnlyHint: true,
            destructiveHint: false,
            idempotentHint: true,
            openWorldHint: false,
        },
    },
    async ({ category, limit = 50, offset = 0 }) => {
        try {
            const descs = loadDescriptions()
            const filtered = category ? descs.filter(d => d.category === category) : descs
            const total = filtered.length
            const slice = filtered.slice(offset, offset + limit)
            const structured: any = {
                total,
                count: slice.length,
                offset,
                has_more: offset + slice.length < total,
                ...(offset + slice.length < total ? { next_offset: offset + slice.length } : {}),
                icons: slice.map(d => ({ name: d.name, category: d.category })),
            }
            const lines = [
                `# List — ${category ?? 'all'} — ${total} icons (showing ${slice.length} from ${offset})`,
                '',
            ]
            for (const d of slice) lines.push(`- ${d.name} — ${d.category}`)
            if (structured.has_more)
                lines.push('', `Has more — next offset ${structured.next_offset}`)
            const text = lines.join('\n')
            const { text: truncated } = truncate(text)
            return {
                content: [{ type: 'text', text: truncated }],
                structuredContent: structured,
            }
        } catch (e) {
            return {
                isError: true,
                content: [
                    { type: 'text', text: `Error: ${e instanceof Error ? e.message : String(e)}` },
                ],
            }
        }
    }
)

// ---------------------------------------------------------------------------
// solar_info_icon
// ---------------------------------------------------------------------------

server.registerTool(
    'solar_info_icon',
    {
        title: 'Info Solar Icon',
        description: `Show metadata and all import paths for one icon. Use when the user wants to see every style/framework variant for an icon.

Args:
  - name (string): kebab icon name

Returns: { name, category, tags, styles, imports, rootImports, svg } + markdown
`,
        inputSchema: {
            name: z.string().min(1).describe('Kebab icon name'),
        },
        annotations: {
            readOnlyHint: true,
            destructiveHint: false,
            idempotentHint: true,
            openWorldHint: false,
        },
    },
    async ({ name }) => {
        try {
            const descs = loadDescriptions()
            const entry = descs.find(d => d.name === name)
            if (!entry) {
                return {
                    isError: true,
                    content: [{ type: 'text', text: `Icon '${name}' not found` }],
                }
            }
            const styles = [...STYLES]
            const imports: Record<string, string> = {}
            for (const fw of [
                'react',
                'vue',
                'svelte',
                'solid',
                'angular',
                'react-native',
                'nuxt',
                'static',
                'js',
            ] as const) {
                imports[fw] = importSnippet(name, 'linear', fw as any)
            }
            const rootImports: Record<string, string> = {}
            for (const s of styles)
                rootImports[s] = rootImportSnippet(name, s as Style, 'react' as any)
            const svg: Record<string, string> = {}
            for (const s of styles)
                svg[s] = resolveSvgPath(name, s as Style) ?? cdnSvgUrl(name, s as Style)
            const structured: any = {
                name: entry.name,
                category: entry.category,
                tags: entry.tags,
                categoryTags: entry.categoryTags,
                styles,
                imports,
                rootImports,
                svg,
            }
            const lines = [
                `# ${entry.name} — ${entry.category}`,
                '',
                `Tags: ${entry.tags.join(', ')}`,
                `CategoryTags: ${entry.categoryTags.join(', ')}`,
                '',
                `Available styles: ${styles.join(' · ')}`,
                '',
                '## Imports (linear example, per-file)',
            ]
            for (const [fw, snippet] of Object.entries(imports))
                lines.push(`- ${fw}: \`${snippet}\``)
            lines.push('', '## All styles (react, root — style in name)')
            for (const [s, snippet] of Object.entries(rootImports))
                lines.push(`- ${s}: \`${snippet}\``)
            const text = lines.join('\n')
            const { text: truncated } = truncate(text)
            return {
                content: [{ type: 'text', text: truncated }],
                structuredContent: structured,
            }
        } catch (e) {
            return {
                isError: true,
                content: [
                    { type: 'text', text: `Error: ${e instanceof Error ? e.message : String(e)}` },
                ],
            }
        }
    }
)

// ---------------------------------------------------------------------------
// solar_overview
// ---------------------------------------------------------------------------

server.registerTool(
    'solar_overview',
    {
        title: 'Solar Overview',
        description: `Global overview — catalog counts, packages, Figma plugin and docs. Use to answer "how many icons?" or "what packages exist?".

Returns: { catalog: { icons, categories, styles, variations }, packages, cliVersion, figma, docs, iconsExplorer } + markdown
`,
        inputSchema: {},
        annotations: {
            readOnlyHint: true,
            destructiveHint: false,
            idempotentHint: true,
            openWorldHint: false,
        },
    },
    async () => {
        try {
            const o = getOverview()
            const structured: any = o
            const lines = [
                '# Solar Icons',
                '',
                `${o.catalog.icons} icons × ${o.catalog.styles} styles = ${o.catalog.variations} variations — ${o.catalog.categories} categories`,
                '',
                `Packages (${o.packages.length}):`,
                ...o.packages.map(p => `- ${p.name} v${p.version} — ${p.description}`),
                '',
                `Figma: ${o.figma}`,
                `Docs: ${o.docs}`,
                `Icons: ${o.iconsExplorer}`,
                `CLI: ${o.cliVersion}`,
            ]
            const text = lines.join('\n')
            const { text: truncated } = truncate(text)
            return {
                content: [{ type: 'text', text: truncated }],
                structuredContent: structured,
            }
        } catch (e) {
            return {
                isError: true,
                content: [
                    { type: 'text', text: `Error: ${e instanceof Error ? e.message : String(e)}` },
                ],
            }
        }
    }
)

// ---------------------------------------------------------------------------
// solar_list_categories / solar_list_styles
// ---------------------------------------------------------------------------

server.registerTool(
    'solar_list_categories',
    {
        title: 'List Categories',
        description: `List all 37 categories. Use to discover category values for search/list filters.`,
        inputSchema: {},
        annotations: {
            readOnlyHint: true,
            destructiveHint: false,
            idempotentHint: true,
            openWorldHint: false,
        },
    },
    async () => {
        try {
            const cats = listCategories()
            const structured: any = { count: cats.length, categories: cats }
            const text = `# Categories — ${cats.length}\n\n${cats.map(c => `- ${c}`).join('\n')}`
            return {
                content: [{ type: 'text', text }],
                structuredContent: structured,
            }
        } catch (e) {
            return {
                isError: true,
                content: [
                    { type: 'text', text: `Error: ${e instanceof Error ? e.message : String(e)}` },
                ],
            }
        }
    }
)

server.registerTool(
    'solar_list_styles',
    {
        title: 'List Styles',
        description: `List 6 styles + provider tokens. Use to see available style values and CSS variables.`,
        inputSchema: {},
        annotations: {
            readOnlyHint: true,
            destructiveHint: false,
            idempotentHint: true,
            openWorldHint: false,
        },
    },
    async () => {
        try {
            const structured: any = {
                styles: [...STYLES],
                providerTokens: [
                    '--solar-color',
                    '--solar-size',
                    '--solar-stroke-width',
                    '--solar-secondary-color',
                    '--solar-secondary-opacity',
                ],
            }
            const text = `# Styles — ${STYLES.length}\n\n${STYLES.map(s => `- ${s}`).join('\n')}\n\nProvider tokens: ${structured.providerTokens.join(', ')}`
            return {
                content: [{ type: 'text', text }],
                structuredContent: structured,
            }
        } catch (e) {
            return {
                isError: true,
                content: [
                    { type: 'text', text: `Error: ${e instanceof Error ? e.message : String(e)}` },
                ],
            }
        }
    }
)

// ---------------------------------------------------------------------------
// Main — stdio
// ---------------------------------------------------------------------------

async function main(): Promise<void> {
    const transport = new StdioServerTransport()
    await server.connect(transport)
    // Use stderr for logs (stdout is for MCP)
    console.error(
        '[solar-icons-mcp] running via stdio — tools: solar_search_icons, solar_get_icon, solar_list_icons, solar_info_icon, solar_overview, solar_list_categories, solar_list_styles'
    )
}

main().catch(err => {
    console.error('[solar-icons-mcp] error:', err)
    process.exit(1)
})
