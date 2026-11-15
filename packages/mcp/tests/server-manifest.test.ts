import { readFileSync } from 'node:fs'
import path from 'node:path'

import { describe, expect, it } from 'vitest'

const mcpRoot = path.resolve(import.meta.dirname, '..')
const packageJson = JSON.parse(readFileSync(path.join(mcpRoot, 'package.json'), 'utf8')) as {
    name: string
    version: string
    mcpName?: string
    files: string[]
}
const serverJson = JSON.parse(readFileSync(path.join(mcpRoot, 'server.json'), 'utf8')) as {
    $schema: string
    name: string
    description: string
    version: string
    packages: Array<{
        registryType: string
        identifier: string
        version: string
        transport: { type: string }
    }>
}

describe('MCP Registry metadata', () => {
    it('declares matching mcpName and server.json versions', () => {
        expect(packageJson.mcpName).toBe('io.github.saoudi-h/solar-icons')
        expect(packageJson.files).toContain('server.json')
        expect(serverJson.name).toBe(packageJson.mcpName)
        expect(serverJson.version).toBe(packageJson.version)
        expect(serverJson.description.length).toBeGreaterThan(0)
        expect(serverJson.description.length).toBeLessThanOrEqual(100)
        expect(serverJson.packages).toEqual(
            expect.arrayContaining([
                expect.objectContaining({
                    registryType: 'npm',
                    identifier: packageJson.name,
                    version: packageJson.version,
                    transport: { type: 'stdio' },
                }),
            ])
        )
    })
})
