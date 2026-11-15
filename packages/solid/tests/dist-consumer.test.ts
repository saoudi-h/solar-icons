import { execFileSync } from 'node:child_process'
import fs from 'node:fs'
import os from 'node:os'
import path from 'node:path'

import { build as tsdownBuild } from 'tsdown'
import solid from 'unplugin-solid/rolldown'
import { afterAll, beforeAll, describe, expect, it } from 'vitest'

const PKG_ROOT = path.resolve(import.meta.dirname, '..')
const TSC_BIN = path.join(PKG_ROOT, 'node_modules/.bin/tsc')
const PNPM_BIN = process.platform === 'win32' ? 'pnpm.cmd' : 'pnpm'
const TAR_BIN = 'tar'

function runNodeInDir(cwd: string, scriptPath: string, nodeArgs: string[] = []): string {
    return execFileSync(process.execPath, [...nodeArgs, scriptPath], {
        cwd,
        encoding: 'utf8',
        stdio: ['ignore', 'pipe', 'pipe'],
    })
}

describe('Packed tarball consumer verification (dist/)', () => {
    let tmpDir = ''

    beforeAll(() => {
        tmpDir = fs.mkdtempSync(path.join(os.tmpdir(), 'solar-solid-consumer-'))
        fs.mkdirSync(path.join(tmpDir, 'src'), { recursive: true })
        fs.mkdirSync(path.join(tmpDir, 'node_modules/@solar-icons/solid'), { recursive: true })

        fs.writeFileSync(
            path.join(tmpDir, 'package.json'),
            JSON.stringify({
                name: 'solid1-consumer-test',
                version: '1.0.0',
                private: true,
                type: 'module',
            })
        )

        const packOut = execFileSync(PNPM_BIN, ['pack', '--pack-destination', tmpDir], {
            cwd: PKG_ROOT,
            encoding: 'utf8',
        })
        const tgzName = packOut
            .trim()
            .split(/\r?\n/)
            .map(l => l.trim())
            .filter(Boolean)
            .at(-1)!
        const tgzPath = path.isAbsolute(tgzName) ? tgzName : path.join(tmpDir, tgzName)

        execFileSync(
            TAR_BIN,
            [
                '-xzf',
                tgzPath,
                '-C',
                path.join(tmpDir, 'node_modules/@solar-icons/solid'),
                '--strip-components=1',
            ],
            { stdio: 'pipe' }
        )

        // Link peer and test runtime packages cleanly without network access
        fs.symlinkSync(
            path.join(PKG_ROOT, 'node_modules/solid-js'),
            path.join(tmpDir, 'node_modules/solid-js'),
            'dir'
        )
        fs.symlinkSync(
            path.join(PKG_ROOT, 'node_modules/jsdom'),
            path.join(tmpDir, 'node_modules/jsdom'),
            'dir'
        )
    }, 60_000)

    afterAll(() => {
        if (tmpDir && fs.existsSync(tmpDir)) {
            fs.rmSync(tmpDir, { recursive: true, force: true })
        }
    })

    it('resolves all public ESM exports and renders SSR in plain Node without a bundler', () => {
        const script = path.join(tmpDir, 'node-ssr.mjs')
        fs.writeFileSync(
            script,
            `
import assert from 'node:assert/strict'
import { createComponent } from 'solid-js'
import { renderToString, renderToStringAsync, ssr } from 'solid-js/web'

const subpaths = [
    '@solar-icons/solid',
    '@solar-icons/solid/lib',
    '@solar-icons/solid/lib/IconBase',
    '@solar-icons/solid/lib/SolarProvider',
    '@solar-icons/solid/lib/dynamic-icon',
    '@solar-icons/solid/lib/types',
    '@solar-icons/solid/dynamic',
    '@solar-icons/solid/dynamic/arrow-up',
    '@solar-icons/solid/bold',
    '@solar-icons/solid/bold/arrow-up',
    '@solar-icons/solid/bold-duotone',
    '@solar-icons/solid/bold-duotone/arrow-up',
    '@solar-icons/solid/broken',
    '@solar-icons/solid/broken/arrow-up',
    '@solar-icons/solid/line-duotone',
    '@solar-icons/solid/line-duotone/arrow-up',
    '@solar-icons/solid/linear',
    '@solar-icons/solid/linear/arrow-up',
    '@solar-icons/solid/outline',
    '@solar-icons/solid/outline/arrow-up',
]

for (const specifier of subpaths) {
    const mod = await import(specifier)
    assert.ok(mod && typeof mod === 'object', 'Failed to import ' + specifier)
}

const { ArrowUpLinearIcon, SolarProvider, useSolar } = await import('@solar-icons/solid')
const { DynamicIcon } = await import('@solar-icons/solid/lib/dynamic-icon')
const { IconStyle } = await import('@solar-icons/solid/lib/types')
const { ArrowUpIcon: ArrowUpDynamic } = await import('@solar-icons/solid/dynamic/arrow-up')
const { ArrowUpIcon: ArrowUpBoldDuotone } = await import('@solar-icons/solid/bold-duotone/arrow-up')

assert.equal(typeof DynamicIcon, 'function')
assert.equal(IconStyle.LINEAR, 'Linear')

function ContextProbe() {
    const solar = useSolar()
    return ssr(['<span data-color="', '"></span>'], solar.color())
}

const html = renderToString(() =>
    createComponent(SolarProvider, {
        color: 'rebeccapurple',
        size: 32,
        secondaryColor: 'gold',
        secondaryOpacity: 0.4,
        get children() {
            return [
                createComponent(ContextProbe, {}),
                createComponent(ArrowUpLinearIcon, { alt: 'Up' }),
                createComponent(ArrowUpBoldDuotone, {}),
                createComponent(ArrowUpDynamic, { weight: 'Outline' }),
            ]
        },
    })
)

assert.ok(html.includes('--solar-color:rebeccapurple'))
assert.ok(html.includes('--solar-size:32px'))
assert.ok(html.includes('--solar-secondary-color:gold'))
assert.ok(html.includes('--solar-secondary-opacity:0.4'))
assert.ok(html.includes('data-color="rebeccapurple"'))
assert.ok(html.includes('solar-arrow-up-linear'))
assert.ok(html.includes('<title'))
assert.ok(html.includes('solar-arrow-up-bold-duotone'))
assert.ok(html.includes('solar-arrow-up-outline'))
assert.ok(!html.includes('weight='), 'DynamicIcon leaked weight attr in SSR')
assert.ok(!html.includes('styles='), 'DynamicIcon leaked styles attr in SSR')

const asyncHtml = await renderToStringAsync(() =>
    createComponent(SolarProvider, {
        color: 'navy',
        get children() {
            return createComponent(ArrowUpDynamic, { weight: 'Bold' })
        },
    })
)
assert.ok(asyncHtml.includes('--solar-color:navy'))
assert.ok(asyncHtml.includes('solar-arrow-up-bold'))
process.stdout.write('OK')
`
        )
        const out = runNodeInDir(tmpDir, script)
        expect(out).toBe('OK')
    }, 30_000)

    it('compiles and runs SSR from the packed dist using the solid JSX condition', async () => {
        const entry = path.join(tmpDir, 'src/ssr-entry.tsx')
        const outDir = path.join(tmpDir, 'out-ssr')
        fs.writeFileSync(
            entry,
            `
import { generateHydrationScript, renderToString } from 'solid-js/web'
import { SolarProvider, useSolar } from '@solar-icons/solid/lib'
import { ArrowUpIcon } from '@solar-icons/solid/linear/arrow-up'
import { ArrowUpIcon as ArrowUpDuotone } from '@solar-icons/solid/bold-duotone/arrow-up'
import { ArrowUpIcon as ArrowUpDynamic } from '@solar-icons/solid/dynamic/arrow-up'

function Probe() {
    const solar = useSolar()
    return <span data-probe={solar.color()} />
}

export function renderPage() {
    const html = renderToString(() => (
        <SolarProvider color="blue">
            <Probe />
            <ArrowUpIcon alt="Up" />
            <ArrowUpDuotone />
            <ArrowUpDynamic weight="Linear" />
        </SolarProvider>
    ))
    return { script: generateHydrationScript(), html }
}
`
        )

        await tsdownBuild({
            config: false,
            cwd: tmpDir,
            entry: { ssr: entry },
            outDir,
            format: ['esm'],
            fixedExtension: true,
            dts: false,
            platform: 'node',
            plugins: [solid({ solid: { generate: 'ssr', hydratable: true } })],
            inputOptions: {
                resolve: {
                    conditionNames: ['solid', 'node', 'import', 'default'],
                },
            },
            deps: {
                neverBundle: ['solid-js', 'solid-js/web'],
                alwaysBundle: [/^@solar-icons\/solid/],
            },
            clean: true,
            logLevel: 'error',
        })

        const runner = path.join(tmpDir, 'run-ssr-solid.mjs')
        fs.writeFileSync(
            runner,
            `
import assert from 'node:assert/strict'
import { renderPage } from './out-ssr/ssr.mjs'
const { html, script } = renderPage()
assert.ok(script.includes('_$HY'))
assert.ok(html.includes('data-hk='))
assert.ok(html.includes('--solar-color:blue'))
assert.ok(html.includes('data-probe="blue"'))
assert.ok(html.includes('solar-arrow-up-linear'))
assert.ok(html.includes('solar-arrow-up-bold-duotone'))
assert.ok(!html.includes('weight='))
assert.ok(!html.includes('styles='))
process.stdout.write('OK')
`
        )
        expect(runNodeInDir(tmpDir, runner)).toBe('OK')
    }, 30_000)

    it('renders in DOM under both solid (JSX) and browser (precompiled) conditions and keeps DynamicIcon reactive', async () => {
        const entry = path.join(tmpDir, 'src/dom-entry.tsx')
        fs.writeFileSync(
            entry,
            `
import { createSignal } from 'solid-js'
import { render } from 'solid-js/web'
import { SolarProvider, useSolar } from '@solar-icons/solid/lib'
import { ArrowUpIcon } from '@solar-icons/solid/linear/arrow-up'
import { ArrowUpIcon as ArrowUpDuotone } from '@solar-icons/solid/bold-duotone/arrow-up'
import { ArrowUpIcon as ArrowUpDynamic } from '@solar-icons/solid/dynamic/arrow-up'

export function runDomChecks(root: HTMLElement) {
    const [color, setColor] = createSignal('blue')
    const [weight, setWeight] = createSignal<'Linear' | 'Bold' | 'Outline'>('Linear')
    let setter!: (val: string) => void

    function Controls() {
        const solar = useSolar()
        setter = solar.setColor
        return <ArrowUpIcon aria-label="Go up" data-testid="static" />
    }

    const dispose = render(() => (
        <SolarProvider color={color()} size={28}>
            <Controls />
            <ArrowUpDuotone isolated={true} data-testid="isolated" />
            <ArrowUpDynamic weight={weight()} data-testid="dynamic" />
        </SolarProvider>
    ), root)

    const wrapper = root.firstElementChild as HTMLElement
    const staticSvg = root.querySelector('[data-testid="static"]')!
    const isolatedSvg = root.querySelector('[data-testid="isolated"]')!
    const dynamicSvgBefore = root.querySelector('[data-testid="dynamic"]')!

    if (wrapper.style.getPropertyValue('--solar-color') !== 'blue') throw new Error('initial color mismatch')
    if (wrapper.style.getPropertyValue('--solar-size') !== '28px') throw new Error('initial size mismatch')
    if (staticSvg.getAttribute('aria-label') !== 'Go up') throw new Error('missing aria-label')
    if (staticSvg.hasAttribute('aria-hidden')) throw new Error('unexpected aria-hidden')
    if (isolatedSvg.getAttribute('width') !== '24px') throw new Error('isolated width mismatch')
    if (!dynamicSvgBefore.getAttribute('class')?.includes('solar-arrow-up-linear')) throw new Error('initial dynamic weight mismatch')
    if (dynamicSvgBefore.hasAttribute('weight') || dynamicSvgBefore.hasAttribute('styles')) {
        throw new Error('leaked weight/styles attrs on dynamic svg')
    }

    setColor('green')
    if (wrapper.style.getPropertyValue('--solar-color') !== 'green') throw new Error('prop signal update failed')
    setter('purple')
    if (wrapper.style.getPropertyValue('--solar-color') !== 'purple') throw new Error('useSolar setter failed')

    setWeight('Bold')
    const dynamicSvgBold = root.querySelector('[data-testid="dynamic"]')!
    if (!dynamicSvgBold.getAttribute('class')?.includes('solar-arrow-up-bold')) throw new Error('reactive Bold switch failed')

    setWeight('Outline')
    const dynamicSvgOutline = root.querySelector('[data-testid="dynamic"]')!
    if (!dynamicSvgOutline.getAttribute('class')?.includes('solar-arrow-up-outline')) throw new Error('reactive Outline switch failed')

    dispose()
    return 'OK'
}
`
        )

        // 1) Bundler using `solid` condition (compiles dist/runtime/jsx/*.jsx)
        await tsdownBuild({
            config: false,
            cwd: tmpDir,
            entry: { 'dom-solid': entry },
            outDir: path.join(tmpDir, 'out-dom-solid'),
            format: ['esm'],
            fixedExtension: true,
            dts: false,
            platform: 'browser',
            plugins: [solid({ solid: { generate: 'dom', hydratable: false } })],
            inputOptions: {
                resolve: {
                    conditionNames: ['solid', 'browser', 'import', 'default'],
                },
            },
            deps: {
                alwaysBundle: ['solid-js', 'solid-js/web', /^@solar-icons\/solid/],
            },
            clean: true,
            logLevel: 'error',
        })

        // 2) Bundler WITHOUT `solid` condition (resolves precompiled dist/runtime/dom/*.mjs)
        await tsdownBuild({
            config: false,
            cwd: tmpDir,
            entry: { 'dom-browser': entry },
            outDir: path.join(tmpDir, 'out-dom-browser'),
            format: ['esm'],
            fixedExtension: true,
            dts: false,
            platform: 'browser',
            plugins: [solid({ solid: { generate: 'dom', hydratable: false } })],
            inputOptions: {
                resolve: {
                    conditionNames: ['browser', 'import', 'default'],
                },
            },
            deps: {
                alwaysBundle: ['solid-js', 'solid-js/web', /^@solar-icons\/solid/],
            },
            clean: true,
            logLevel: 'error',
        })

        const runner = path.join(tmpDir, 'run-dom.mjs')
        fs.writeFileSync(
            runner,
            `
import { JSDOM } from 'jsdom'
const dom = new JSDOM('<!doctype html><html><body><div id="a"></div><div id="b"></div></body></html>')
globalThis.window = dom.window
globalThis.document = dom.window.document
globalThis.Node = dom.window.Node
globalThis.Element = dom.window.Element
globalThis.HTMLElement = dom.window.HTMLElement
globalThis.SVGElement = dom.window.SVGElement

const { runDomChecks: runSolid } = await import('./out-dom-solid/dom-solid.mjs')
const { runDomChecks: runBrowser } = await import('./out-dom-browser/dom-browser.mjs')
if (runSolid(document.getElementById('a')) !== 'OK') throw new Error('solid DOM check failed')
if (runBrowser(document.getElementById('b')) !== 'OK') throw new Error('browser DOM check failed')
process.stdout.write('OK')
`
        )
        expect(runNodeInDir(tmpDir, runner, ['--conditions=browser'])).toBe('OK')
    }, 30_000)

    it('hydrates SSR markup cleanly without duplicating SVGs and preserves post-hydration reactivity', async () => {
        const ssrEntry = path.join(tmpDir, 'src/hydrate-ssr.tsx')
        const clientEntry = path.join(tmpDir, 'src/hydrate-client.tsx')

        fs.writeFileSync(
            ssrEntry,
            `
import { generateHydrationScript, renderToString } from 'solid-js/web'
import { SolarProvider } from '@solar-icons/solid/lib'
import { ArrowUpIcon } from '@solar-icons/solid/linear/arrow-up'
import { ArrowUpIcon as ArrowUpDuotone } from '@solar-icons/solid/bold-duotone/arrow-up'
import { ArrowUpIcon as ArrowUpDynamic } from '@solar-icons/solid/dynamic/arrow-up'

export function renderHydratable() {
    const html = renderToString(() => (
        <SolarProvider color="blue">
            <ArrowUpIcon alt="Up" />
            <ArrowUpDuotone />
            <ArrowUpDynamic weight="Linear" />
        </SolarProvider>
    ))
    return { script: generateHydrationScript(), html }
}
`
        )

        fs.writeFileSync(
            clientEntry,
            `
import { createSignal } from 'solid-js'
import { hydrate } from 'solid-js/web'
import { SolarProvider } from '@solar-icons/solid/lib'
import { ArrowUpIcon } from '@solar-icons/solid/linear/arrow-up'
import { ArrowUpIcon as ArrowUpDuotone } from '@solar-icons/solid/bold-duotone/arrow-up'
import { ArrowUpIcon as ArrowUpDynamic } from '@solar-icons/solid/dynamic/arrow-up'

export function runHydrate(container: HTMLElement) {
    const firstSvgBefore = container.querySelectorAll('svg')[0]
    if (!firstSvgBefore) throw new Error('Missing SSR SVG before hydration')

    const [color, setColor] = createSignal('blue')
    const [weight, setWeight] = createSignal<'Linear' | 'Bold'>('Linear')

    const dispose = hydrate(() => (
        <SolarProvider color={color()}>
            <ArrowUpIcon alt="Up" />
            <ArrowUpDuotone />
            <ArrowUpDynamic weight={weight()} />
        </SolarProvider>
    ), container)

    const svgsAfter = container.querySelectorAll('svg')
    if (svgsAfter.length !== 3) throw new Error('Expected 3 SVGs after hydration, got ' + svgsAfter.length)
    if (svgsAfter[0] !== firstSvgBefore) throw new Error('Hydration replaced SSR SVG node instead of reusing it')

    setColor('orange')
    const wrapper = container.firstElementChild as HTMLElement
    if (wrapper.style.getPropertyValue('--solar-color') !== 'orange') {
        throw new Error('Post-hydration SolarProvider color update failed')
    }

    setWeight('Bold')
    const updatedDyn = container.querySelectorAll('svg')[2]
    if (!updatedDyn.getAttribute('class')?.includes('solar-arrow-up-bold')) {
        throw new Error('Post-hydration DynamicIcon weight update failed')
    }

    dispose()
    return 'OK'
}
`
        )

        await tsdownBuild({
            config: false,
            cwd: tmpDir,
            entry: { ssr: ssrEntry },
            outDir: path.join(tmpDir, 'out-hy-ssr'),
            format: ['esm'],
            fixedExtension: true,
            dts: false,
            platform: 'node',
            plugins: [solid({ solid: { generate: 'ssr', hydratable: true } })],
            inputOptions: {
                resolve: {
                    conditionNames: ['solid', 'node', 'import', 'default'],
                },
            },
            deps: {
                neverBundle: ['solid-js', 'solid-js/web'],
                alwaysBundle: [/^@solar-icons\/solid/],
            },
            clean: true,
            logLevel: 'error',
        })

        await tsdownBuild({
            config: false,
            cwd: tmpDir,
            entry: { client: clientEntry },
            outDir: path.join(tmpDir, 'out-hy-client'),
            format: ['esm'],
            fixedExtension: true,
            dts: false,
            platform: 'browser',
            plugins: [solid({ solid: { generate: 'dom', hydratable: true } })],
            inputOptions: {
                resolve: {
                    conditionNames: ['solid', 'browser', 'import', 'default'],
                },
            },
            deps: {
                neverBundle: ['solid-js', 'solid-js/web'],
                alwaysBundle: [/^@solar-icons\/solid/],
            },
            clean: true,
            logLevel: 'error',
        })

        const ssrRunner = path.join(tmpDir, 'run-hydrate-ssr.mjs')
        fs.writeFileSync(
            ssrRunner,
            `
import fs from 'node:fs'
import { renderHydratable } from './out-hy-ssr/ssr.mjs'
fs.writeFileSync('./hy-payload.json', JSON.stringify(renderHydratable()))
process.stdout.write('OK')
`
        )
        expect(runNodeInDir(tmpDir, ssrRunner)).toBe('OK')

        const clientRunner = path.join(tmpDir, 'run-hydrate-client.mjs')
        fs.writeFileSync(
            clientRunner,
            `
import fs from 'node:fs'
import { JSDOM } from 'jsdom'
const { script, html } = JSON.parse(fs.readFileSync('./hy-payload.json', 'utf8'))
const scriptBody = script.match(/<script[^>]*>([\\s\\S]*?)<\\/script>/)[1]

const dom = new JSDOM('<!doctype html><html><body><div id="app"></div></body></html>')
globalThis.window = dom.window
globalThis.document = dom.window.document
globalThis.Node = dom.window.Node
globalThis.Element = dom.window.Element
globalThis.HTMLElement = dom.window.HTMLElement
globalThis.SVGElement = dom.window.SVGElement

new Function(scriptBody)()
const app = document.getElementById('app')
app.innerHTML = html

const { runHydrate } = await import('./out-hy-client/client.mjs')
if (runHydrate(app) !== 'OK') throw new Error('Hydration check failed')
process.stdout.write('OK')
`
        )
        expect(runNodeInDir(tmpDir, clientRunner, ['--conditions=browser'])).toBe('OK')
    }, 30_000)

    it('typechecks all public exports and DynamicIcon types under Bundler and NodeNext with skipLibCheck=false', () => {
        const tsFile = path.join(tmpDir, 'src/types-check.tsx')
        fs.writeFileSync(
            tsFile,
            `
import {
    ArrowUpLinearIcon,
    IconBase,
    SolarProvider,
    useSolar,
    type Icon,
    type IconProps,
    type SolarProviderProps,
} from '@solar-icons/solid'
import {
    IconBase as LibIconBase,
    SolarProvider as LibProvider,
    type DynamicIconProps,
} from '@solar-icons/solid/lib'
import IconBaseSubpath from '@solar-icons/solid/lib/IconBase'
import { SolarProvider as ProviderSubpath } from '@solar-icons/solid/lib/SolarProvider'
import { DynamicIcon, type DynamicIconProps as DynProps } from '@solar-icons/solid/lib/dynamic-icon'
import { IconStyle } from '@solar-icons/solid/lib/types'
import { ArrowUpIcon as LinearArrowUp } from '@solar-icons/solid/linear'
import { ArrowUpIcon as LinearSubpath } from '@solar-icons/solid/linear/arrow-up'
import { ArrowUpIcon as DuotoneSubpath } from '@solar-icons/solid/bold-duotone/arrow-up'
import { ArrowUpIcon as DynamicBarrel } from '@solar-icons/solid/dynamic'
import { ArrowUpIcon as DynamicSubpath } from '@solar-icons/solid/dynamic/arrow-up'

export function TypeFixture() {
    const iconProps: IconProps = { size: 24, color: 'red' }
    const dynProps: DynamicIconProps = { weight: IconStyle.BOLD, size: 20 }
    const dynProps2: DynProps = { weight: 'Outline' }
    const providerProps: SolarProviderProps = { color: 'blue', children: null }
    const iconFn: Icon = LinearSubpath
    const ctx = () => useSolar()
    const styles = {
        bold: LinearSubpath,
        'bold-duotone': DuotoneSubpath,
        broken: LinearSubpath,
        linear: LinearSubpath,
        'line-duotone': LinearSubpath,
        outline: LinearSubpath,
    }
    return (
        <SolarProvider {...providerProps}>
            <LibProvider color="green">
                <ProviderSubpath>
                    <ArrowUpLinearIcon {...iconProps} />
                    <LinearArrowUp />
                    <DuotoneSubpath secondaryColor="gold" />
                    <DynamicBarrel {...dynProps} />
                    <DynamicSubpath {...dynProps2} />
                    <IconBase iconName="custom" iconBody="<path />" />
                    <LibIconBase iconName="custom" iconBody="<path />" />
                    <IconBaseSubpath iconName="custom" iconBody="<path />" />
                    <DynamicIcon weight="BoldDuotone" styles={styles} />
                    {iconFn({})}
                    <span>{ctx().color()}</span>
                </ProviderSubpath>
            </LibProvider>
        </SolarProvider>
    )
}
`
        )

        const baseArgs = [
            '--noEmit',
            '--strict',
            '--jsx',
            'preserve',
            '--jsxImportSource',
            'solid-js',
            '--target',
            'ESNext',
            '--skipLibCheck',
            'false',
            tsFile,
        ]

        execFileSync(
            TSC_BIN,
            [...baseArgs, '--module', 'ESNext', '--moduleResolution', 'Bundler'],
            {
                cwd: tmpDir,
                stdio: 'pipe',
            }
        )

        execFileSync(
            TSC_BIN,
            [...baseArgs, '--module', 'NodeNext', '--moduleResolution', 'NodeNext'],
            {
                cwd: tmpDir,
                stdio: 'pipe',
            }
        )
    }, 30_000)

    it('tree-shakes barrel and dynamic imports without pulling unrelated icons or core metadata', async () => {
        const staticEntry = path.join(tmpDir, 'src/tree-static.tsx')
        const dynamicEntry = path.join(tmpDir, 'src/tree-dynamic.tsx')
        const staticOutDir = path.join(tmpDir, 'out-tree-static')
        const dynamicOutDir = path.join(tmpDir, 'out-tree-dynamic')

        fs.writeFileSync(
            staticEntry,
            `
import { ArrowUpIcon } from '@solar-icons/solid/linear'
export function TreeStatic() { return <ArrowUpIcon /> }
`
        )
        fs.writeFileSync(
            dynamicEntry,
            `
import { ArrowUpIcon } from '@solar-icons/solid/dynamic/arrow-up'
export function TreeDynamic() { return <ArrowUpIcon weight="Bold" /> }
`
        )

        const sharedOptions = {
            config: false as const,
            cwd: tmpDir,
            format: ['esm'] as ['esm'],
            fixedExtension: true,
            dts: false,
            minify: false,
            treeshake: true,
            platform: 'browser' as const,
            plugins: [solid({ solid: { generate: 'dom', hydratable: false } })],
            inputOptions: {
                resolve: {
                    conditionNames: ['solid', 'browser', 'import', 'default'],
                },
            },
            deps: {
                neverBundle: ['solid-js', 'solid-js/web'],
                alwaysBundle: [/^@solar-icons\/solid/],
            },
            clean: true,
            logLevel: 'error' as const,
        }

        await tsdownBuild({
            ...sharedOptions,
            entry: { static: staticEntry },
            outDir: staticOutDir,
        })

        await tsdownBuild({
            ...sharedOptions,
            entry: { dynamic: dynamicEntry },
            outDir: dynamicOutDir,
        })

        const staticBundle = fs.readFileSync(path.join(staticOutDir, 'static.mjs'), 'utf8')
        const dynamicBundle = fs.readFileSync(path.join(dynamicOutDir, 'dynamic.mjs'), 'utf8')

        expect(staticBundle).toContain('arrow-up-linear')
        expect(staticBundle).not.toContain('arrow-down-linear')
        expect(staticBundle).not.toContain('SolarProvider')
        expect(staticBundle.length).toBeLessThan(8_000)

        expect(dynamicBundle).toContain('arrow-up-bold')
        expect(dynamicBundle).not.toContain('arrow-down')
        expect(dynamicBundle).not.toContain('"arrows"')
        expect(dynamicBundle).not.toContain('categories')
        expect(dynamicBundle.length).toBeLessThan(12_000)
    }, 30_000)
})
