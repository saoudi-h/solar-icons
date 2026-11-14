import fs from 'node:fs'
import path from 'node:path'

const REPOSITORY_ROOT = path.resolve(import.meta.dirname, '..')
const MCP_PACKAGE_PATH = path.join(REPOSITORY_ROOT, 'packages/mcp/package.json')
const MCP_SERVER_PATH = path.join(REPOSITORY_ROOT, 'packages/mcp/server.json')

interface McpPackageJson {
    name: string
    version: string
    mcpName?: string
}

interface McpServerJson {
    name: string
    version: string
    packages: Array<{
        identifier: string
        version: string
    }>
}

const pkg = JSON.parse(fs.readFileSync(MCP_PACKAGE_PATH, 'utf8')) as McpPackageJson
const server = JSON.parse(fs.readFileSync(MCP_SERVER_PATH, 'utf8')) as McpServerJson

let changed = false
if (server.version !== pkg.version) {
    server.version = pkg.version
    changed = true
}
for (const entry of server.packages) {
    if (entry.identifier === pkg.name && entry.version !== pkg.version) {
        entry.version = pkg.version
        changed = true
    }
}

if (changed) {
    fs.writeFileSync(MCP_SERVER_PATH, `${JSON.stringify(server, null, 4)}\n`)
    console.log(`Synchronized packages/mcp/server.json to @solar-icons/mcp@${pkg.version}.`)
} else {
    console.log(`packages/mcp/server.json is already in sync with @solar-icons/mcp@${pkg.version}.`)
}
