#!/usr/bin/env node
import { realpathSync } from 'node:fs'
import { pathToFileURL } from 'node:url'

import { Command } from 'commander'
import pc from 'picocolors'

import { getOverview, listCategories } from './catalog.js'
import { STYLES } from './catalog.js'
import { runGet } from './commands/get.js'
import { runInfo } from './commands/info.js'
import { runList } from './commands/list.js'
import { runSearch } from './commands/search.js'

const program = new Command()
    .name('solar-icons')
    .description('Solar Icons CLI — search, get and list 1,268 icons × 6 styles.')
    .version('2.1.0', '-v, --version')
    .showHelpAfterError()
    .showSuggestionAfterError()
    .configureHelp({
        sortSubcommands: true,
        styleTitle: (s: string) => pc.bold(pc.cyan(s)),
        styleCommandText: (s: string) => pc.cyan(s),
        styleCommandDescription: (s: string) => pc.dim(s),
        styleOptionText: (s: string) => pc.green(s),
        styleArgumentText: (s: string) => pc.yellow(s),
        styleDescriptionText: (s: string) => pc.dim(s),
        styleOptionTerm: (s: string) => pc.green(s),
    })

program.addHelpText(
    'after',
    `\n${pc.bold('Examples:')}\n  ${pc.dim('$')} ${pc.cyan('solar-icons')} ${pc.green('search')} ${pc.yellow('"home"')} ${pc.dim('--limit 10 --framework react')}\n  ${pc.dim('$')} ${pc.cyan('solar-icons')} ${pc.green('get')} ${pc.yellow('arrow-up')} ${pc.dim('--style linear --framework vue')}\n  ${pc.dim('$')} ${pc.cyan('solar-icons')} ${pc.green('overview')} ${pc.dim('--json')}  ${pc.dim('# for agents / CI')}\n`
)

program
    .command('search')
    .argument('<query>', 'search query, e.g. "home" or "shopping cart"')
    .option('-l, --limit <n>', 'max results (1..200, default 20)', '20')
    .option('--style <style>', `restrict import hint to one style: ${STYLES.join('|')}`)
    .option('--category <category>', 'restrict to category (see: solar-icons categories)')
    .option(
        '--framework <framework>',
        'emit import snippet for framework (react|vue|svelte|solid|angular|react-native|nuxt|static|js)'
    )
    .option('--json', 'machine-readable JSON output (for agents/MCP)')
    .description('Search icons by name/tags/category')
    .addHelpText(
        'after',
        `  ${pc.bold('Examples:')}\n    ${pc.dim('$')} ${pc.cyan('solar-icons search')} ${pc.yellow('"shopping cart"')} ${pc.dim('--framework react')}\n    ${pc.dim('$')} ${pc.cyan('solar-icons search')} ${pc.yellow('arrow')} ${pc.dim('--category arrows --json')}\n  `
    )
    .action((query: string, opts: any) => {
        try {
            runSearch(query, opts)
        } catch (e: any) {
            console.error(pc.red(`error: ${e.message}`))
            process.exit(2)
        }
    })

program
    .command('get')
    .argument('<name>', 'kebab icon name, e.g. home')
    .option('--style <style>', 'style', 'linear')
    .option('--framework <framework>', 'framework for snippet', 'react')
    .option('--out <file>', 'copy SVG to file')
    .option('--json', 'JSON output')
    .description('Get import snippet and SVG for an icon')
    .addHelpText(
        'after',
        `  ${pc.bold('Examples:')}\n    ${pc.dim('$')} ${pc.cyan('solar-icons get')} ${pc.yellow('home')} ${pc.dim('--style bold --framework svelte')}\n    ${pc.dim('$')} ${pc.cyan('solar-icons get')} ${pc.yellow('arrow-up')} ${pc.dim('--out ./arrow.svg')}\n  `
    )
    .action((name: string, opts: any) => {
        try {
            runGet(name, opts)
        } catch (e: any) {
            console.error(pc.red(`error: ${e.message}`))
            process.exit(2)
        }
    })

program
    .command('list')
    .option('--category <category>', 'filter by category')
    .option('--style <style>', `hint style: ${STYLES.join('|')}`)
    .option('-l, --limit <n>', 'max results (1..2000, default 50)', '50')
    .option('--json', 'JSON output')
    .description('List icons')
    .addHelpText(
        'after',
        `  ${pc.bold('Examples:')}\n    ${pc.dim('$')} ${pc.cyan('solar-icons list')} ${pc.dim('--category home --limit 20')}\n    ${pc.dim('$')} ${pc.cyan('solar-icons list')} ${pc.dim('--json | jq .[].name')}\n  `
    )
    .action((opts: any) => {
        try {
            runList(opts)
        } catch (e: any) {
            console.error(pc.red(`error: ${e.message}`))
            process.exit(2)
        }
    })

program
    .command('info')
    .argument('<name>', 'icon name')
    .option('--json', 'JSON output')
    .description('Show metadata and all import paths for an icon')
    .addHelpText(
        'after',
        `  ${pc.bold('Examples:')}\n    ${pc.dim('$')} ${pc.cyan('solar-icons info')} ${pc.yellow('arrow-up')}\n    ${pc.dim('$')} ${pc.cyan('solar-icons info')} ${pc.yellow('heart')} ${pc.dim('--json')}\n  `
    )
    .action((name: string, opts: any) => {
        try {
            runInfo(name, opts)
        } catch (e: any) {
            console.error(pc.red(`error: ${e.message}`))
            process.exit(2)
        }
    })

program
    .command('categories')
    .option('--json', 'JSON output')
    .description('List all categories')
    .addHelpText(
        'after',
        `  ${pc.bold('Examples:')}\n    ${pc.dim('$')} ${pc.cyan('solar-icons categories')} ${pc.dim('--json')}\n  `
    )
    .action((opts: any) => {
        const cats = listCategories()
        if (opts.json) console.log(JSON.stringify(cats, null, 2))
        else for (const c of cats) console.log(c)
    })

program
    .command('styles')
    .option('--json', 'JSON output')
    .description('List all styles and provider tokens')
    .addHelpText(
        'after',
        `  ${pc.bold('Examples:')}\n    ${pc.dim('$')} ${pc.cyan('solar-icons styles')}\n  `
    )
    .action((opts: any) => {
        if (opts.json) console.log(JSON.stringify(STYLES, null, 2))
        else {
            for (const s of STYLES) console.log(s)
            console.log(
                pc.dim(
                    '\nProvider tokens: --solar-color, --solar-size, --solar-stroke-width, --solar-secondary-color, --solar-secondary-opacity'
                )
            )
        }
    })

program
    .command('overview')
    .option('--json', 'JSON output')
    .description('Show global overview — catalog, packages, Figma plugin and docs')
    .addHelpText(
        'after',
        `  ${pc.bold('Examples:')}\n    ${pc.dim('$')} ${pc.cyan('solar-icons overview')}\n    ${pc.dim('$')} ${pc.cyan('solar-icons overview')} ${pc.dim('--json')}\n  `
    )
    .action((opts: any) => {
        const o = getOverview()
        if (opts.json) {
            console.log(JSON.stringify(o, null, 2))
            return
        }
        // Header
        console.log(`${pc.bgCyan(pc.black(' Solar Icons '))} ${pc.dim(`v${o.cliVersion}`)}`)
        console.log('')
        console.log(
            `${pc.bold(pc.cyan(String(o.catalog.icons)))} ${pc.dim('icons')} ${pc.dim('×')} ${pc.bold(String(o.catalog.styles))} ${pc.dim('styles')} ${pc.dim('=')} ${pc.bold(pc.cyan(String(o.catalog.variations)))} ${pc.dim('variations')}  ${pc.dim('—')}  ${pc.bold(String(o.catalog.categories))} ${pc.dim('categories')}`
        )
        console.log(pc.dim('─'.repeat(56)))
        if (o.packages.length > 0) {
            console.log(pc.bold(`\nPackages (${o.packages.length})`))
            const nameW = Math.max(...o.packages.map(p => p.name.length))
            for (const p of o.packages) {
                const name = pc.cyan(p.name.padEnd(nameW))
                const ver = pc.dim(`v${p.version}`.padEnd(8))
                const desc = pc.dim(
                    p.description.length > 58 ? `${p.description.slice(0, 55)}…` : p.description
                )
                console.log(`  ${pc.dim('›')} ${name}  ${ver}  ${desc}`)
            }
        } else {
            console.log(pc.dim('\nPackages: (run inside monorepo to list versions)'))
        }
        console.log('')
        console.log(`${pc.bold('Figma')}  ${pc.underline(pc.cyan(o.figma))}`)
        console.log(`${pc.bold('Docs ')}  ${pc.underline(pc.cyan(o.docs))}`)
        console.log(`${pc.bold('Icons')}  ${pc.underline(pc.cyan(o.iconsExplorer))}`)
    })

async function main(): Promise<void> {
    await program.parseAsync(process.argv)
}

const entry = process.argv[1] ? realpathSync(process.argv[1]) : undefined
if (entry && import.meta.url === pathToFileURL(entry).href) void main()
