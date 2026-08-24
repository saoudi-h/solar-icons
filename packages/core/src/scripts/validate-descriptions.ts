import Ajv2020 from 'ajv/dist/2020'

import schema from '../descriptions.schema.json' with { type: 'json' }

const ajv = new Ajv2020({ allErrors: true })
const validate = ajv.compile(schema)

/**
 * Validate `metadata-descriptions.json` entries against the descriptions JSON Schema
 * plus file-level rules (alias uniqueness and collisions).
 * @param entries - The raw parsed entries.
 * @param iconNames - All existing icon names (from `metadata.json`), kebab-case.
 * @returns Human-readable error messages. Empty when the data is valid.
 */
export const validateDescriptions = (
    entries: unknown[],
    iconNames: ReadonlySet<string>
): string[] => {
    const errors: string[] = []

    const seenAliases = new Map<string, string>()

    for (let i = 0; i < entries.length; i++) {
        const entry = entries[i]
        const label = `Entry #${i}`
        const name = (entry as { name?: unknown } | null)?.name

        if (!validate(entry)) {
            for (const err of validate.errors ?? []) {
                const instancePath = err.instancePath || '/'
                errors.push(
                    `${label}${name ? ` (${String(name)})` : ''}: ${err.message} at ${instancePath}`
                )
            }
            continue
        }

        const record = entry as {
            name: string
            aliases?: string[]
        }

        for (const alias of record.aliases ?? []) {
            if (alias === record.name) {
                errors.push(
                    `${label} (${record.name}): alias "${alias}" equals the icon name itself`
                )
                continue
            }
            if (iconNames.has(alias)) {
                errors.push(
                    `${label} (${record.name}): alias "${alias}" collides with an existing icon name`
                )
            }
            const owner = seenAliases.get(alias)
            if (owner) {
                errors.push(
                    `${label} (${record.name}): alias "${alias}" is already used by "${owner}"`
                )
            } else {
                seenAliases.set(alias, record.name)
            }
        }
    }

    return errors
}
