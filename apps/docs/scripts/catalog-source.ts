import fs from 'node:fs'
import path from 'node:path'

/** Read canonical core metadata without depending on a possibly stale dist directory. */
export function readCoreMetadata<T>(filename: 'metadata.json' | 'metadata-descriptions.json'): T {
    const sourcePath = path.resolve(import.meta.dirname, '../../../packages/core/src', filename)
    return JSON.parse(fs.readFileSync(sourcePath, 'utf8')) as T
}
