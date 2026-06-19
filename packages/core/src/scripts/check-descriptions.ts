import fs from 'node:fs'
import path from 'node:path'
import pc from 'picocolors'

const DESCRIPTIONS_PATH = path.resolve(import.meta.dirname, '../metadata-descriptions.json')

const main = () => {
    console.log(pc.blue('Checking metadata-descriptions.json integrity...\n'))

    if (!fs.existsSync(DESCRIPTIONS_PATH)) {
        console.log(pc.red('metadata-descriptions.json is missing — this file is required source code.'))
        process.exit(1)
    }

    let raw: string
    try {
        raw = fs.readFileSync(DESCRIPTIONS_PATH, 'utf-8')
    } catch {
        console.log(pc.red('Cannot read metadata-descriptions.json.'))
        process.exit(1)
    }

    let data: unknown
    try {
        data = JSON.parse(raw)
    } catch {
        console.log(pc.red('metadata-descriptions.json is not valid JSON.'))
        process.exit(1)
    }

    if (!Array.isArray(data)) {
        console.log(pc.red('metadata-descriptions.json must be a JSON array.'))
        process.exit(1)
    }

    if (data.length === 0) {
        console.log(pc.red('metadata-descriptions.json is empty — this file is hand-curated source code.'))
        process.exit(1)
    }

    const required = ['name', 'category']
    let fails = 0
    for (let i = 0; i < data.length; i++) {
        const entry = data[i] as Record<string, unknown>
        for (const key of required) {
            if (typeof entry[key] !== 'string') {
                console.log(pc.red(`  Entry #${i}: missing or invalid "${key}" field`))
                fails++
            }
        }
    }
    if (fails > 0) {
        console.log(pc.red(`\n${fails} validation error(s) in metadata-descriptions.json.`))
        console.log(pc.yellow('This file is hand-curated source code. Fix it manually.'))
        process.exit(1)
    }

    console.log(pc.green(`metadata-descriptions.json is valid (${data.length} entries).`))
    console.log(pc.dim('This file is hand-curated source code — never auto-generated.'))
}

main()
