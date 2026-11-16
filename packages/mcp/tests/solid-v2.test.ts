import path from 'node:path'

import { Client } from '@modelcontextprotocol/sdk/client/index.js'
import { StdioClientTransport } from '@modelcontextprotocol/sdk/client/stdio.js'
import { afterAll, beforeAll, describe, expect, it } from 'vitest'

describe('Solid 2 tools over MCP stdio', () => {
    const client = new Client({ name: 'solid-v2-verification', version: '1.0.0' })
    beforeAll(async () => {
        await client.connect(
            new StdioClientTransport({
                command: process.execPath,
                args: [path.resolve(import.meta.dirname, '../dist/index.js')],
                stderr: 'pipe',
            })
        )
    }, 20_000)
    afterAll(async () => {
        await client.close()
    })

    it('advertises solid-v2 and returns @solar-icons/solid-v2 snippets for search, get, and info', async () => {
        const { tools } = await client.listTools()
        for (const name of ['solar_search_icons', 'solar_get_icon']) {
            const schema = tools.find(tool => tool.name === name)!.inputSchema
            const framework = schema.properties!.framework as { enum: string[] }
            expect(framework.enum).toContain('solid-v2')
        }
        const get = await client.callTool({
            name: 'solar_get_icon',
            arguments: { name: 'heart', style: 'bold', framework: 'solid-v2' },
        })
        expect(get.isError).not.toBe(true)
        expect(get.structuredContent).toMatchObject({
            import: 'import { HeartIcon } from "@solar-icons/solid-v2/bold/heart";',
        })
        const search = await client.callTool({
            name: 'solar_search_icons',
            arguments: { query: 'home', framework: 'solid-v2', limit: 1 },
        })
        expect(search.isError).not.toBe(true)
        const result = search.structuredContent as { results: Array<{ import: string }> }
        expect(result.results[0]!.import).toContain('@solar-icons/solid-v2/')
        const info = await client.callTool({ name: 'solar_info_icon', arguments: { name: 'home' } })
        expect(info.structuredContent).toMatchObject({
            imports: {
                'solid-v2': 'import { HomeIcon } from "@solar-icons/solid-v2/linear/home";',
            },
        })
    })
})
