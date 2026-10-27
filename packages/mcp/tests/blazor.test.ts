import path from 'node:path'

import { Client } from '@modelcontextprotocol/sdk/client/index.js'
import { StdioClientTransport } from '@modelcontextprotocol/sdk/client/stdio.js'
import { afterAll, beforeAll, describe, expect, it } from 'vitest'

describe('Blazor tools over MCP stdio', () => {
    const client = new Client({ name: 'blazor-verification', version: '1.0.0' })
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

    it('advertises Blazor and returns Razor for search, get, and info', async () => {
        const { tools } = await client.listTools()
        for (const name of ['solar_search_icons', 'solar_get_icon']) {
            const schema = tools.find(tool => tool.name === name)!.inputSchema
            const framework = schema.properties!.framework as { enum: string[] }
            expect(framework.enum).toContain('blazor')
        }
        const get = await client.callTool({
            name: 'solar_get_icon',
            arguments: { name: 'heart', style: 'bold-duotone', framework: 'blazor' },
        })
        expect(get.isError).not.toBe(true)
        expect(get.content).toEqual(
            expect.arrayContaining([
                expect.objectContaining({
                    type: 'text',
                    text: expect.stringContaining('```razor'),
                }),
            ])
        )
        expect(get.structuredContent).toMatchObject({
            import: '@using SolarIcons.Blazor\n\n<HeartBoldDuotoneIcon Size="24" />',
        })
        const search = await client.callTool({
            name: 'solar_search_icons',
            arguments: { query: 'home', framework: 'blazor', limit: 1 },
        })
        expect(search.isError).not.toBe(true)
        const result = search.structuredContent as { results: Array<{ import: string }> }
        expect(result.results[0]!.import).toContain('@using SolarIcons.Blazor')
        const info = await client.callTool({ name: 'solar_info_icon', arguments: { name: 'home' } })
        expect(info.structuredContent).toMatchObject({
            imports: { blazor: '@using SolarIcons.Blazor\n\n<HomeLinearIcon Size="24" />' },
        })
    })
})
