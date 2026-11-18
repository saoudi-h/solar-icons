import { execFileSync } from 'node:child_process'
import fs from 'node:fs'
import os from 'node:os'
import path from 'node:path'

import { build as tsdownBuild } from 'tsdown'
import solid from 'unplugin-solid/rolldown'
import { afterAll, beforeAll, describe, expect, it } from 'vitest'

/**
 * Packs the package with `pnpm pack`, unpacks the tarball into an empty project and
 * consumes it the way an application would: plain Node, a bundler with and without the
 * `solid` condition, jsdom, hydration and `tsc`. Solid itself is the real `solid-js` and
 * `@solidjs/web` of this package's dev dependencies, linked in without network access.
 *
 * Run after `build`: it packs whatever is in `dist`.
 */
const PKG_ROOT = path.resolve(import.meta.dirname, '../..')
const TSC_BIN = path.join(PKG_ROOT, 'node_modules/.bin/tsc')
const PNPM_BIN = process.platform === 'win32' ? 'pnpm.cmd' : 'pnpm'
const NAME = '@solar-icons/solid-v2'

function runNode(cwd: string, script: string, nodeArgs: string[] = []): string {
    return execFileSync(process.execPath, [...nodeArgs, script], {
        cwd,
        encoding: 'utf8',
        stdio: ['ignore', 'pipe', 'pipe'],
    })
}

/** The jsdom globals a client build of Solid needs when it runs in Node. */
const JSDOM_PRELUDE = `
import { JSDOM } from 'jsdom'
const dom = new JSDOM('<!doctype html><html><body></body></html>')
Object.assign(globalThis, {
    window: dom.window,
    document: dom.window.document,
    Node: dom.window.Node,
    Element: dom.window.Element,
    HTMLElement: dom.window.HTMLElement,
    SVGElement: dom.window.SVGElement,
})
`

describe('Packed tarball consumer verification (dist/)', () => {
    let tmpDir = ''
    const file = (...parts: string[]) => path.join(tmpDir, ...parts)

    beforeAll(() => {
        tmpDir = fs.mkdtempSync(path.join(os.tmpdir(), 'solar-solid-v2-consumer-'))
        fs.mkdirSync(file('src'), { recursive: true })
        fs.mkdirSync(file('node_modules/@solar-icons/solid-v2'), { recursive: true })
        fs.writeFileSync(
            file('package.json'),
            JSON.stringify({
                name: 'solid2-consumer-test',
                version: '1.0.0',
                private: true,
                type: 'module',
            })
        )

        const packOut = execFileSync(PNPM_BIN, ['pack', '--pack-destination', tmpDir], {
            cwd: PKG_ROOT,
            encoding: 'utf8',
        })
        const tarball = packOut
            .trim()
            .split(/\r?\n/)
            .map(line => line.trim())
            .filter(Boolean)
            .at(-1)!
        execFileSync(
            'tar',
            [
                '-xzf',
                path.isAbsolute(tarball) ? tarball : file(tarball),
                '-C',
                file('node_modules/@solar-icons/solid-v2'),
                '--strip-components=1',
            ],
            { stdio: 'pipe' }
        )

        for (const dependency of ['solid-js', '@solidjs/web', 'jsdom']) {
            fs.mkdirSync(path.dirname(file('node_modules', dependency)), { recursive: true })
            fs.symlinkSync(
                path.join(PKG_ROOT, 'node_modules', dependency),
                file('node_modules', dependency),
                'dir'
            )
        }
    }, 120_000)

    afterAll(() => {
        if (process.env.KEEP_CONSUMER_DIR) console.info('consumer kept at', tmpDir)
        else if (tmpDir && fs.existsSync(tmpDir))
            fs.rmSync(tmpDir, { recursive: true, force: true })
    })

    it('contains no source, no tests and no workspace leftovers', () => {
        const unpacked = file('node_modules/@solar-icons/solid-v2')
        expect(fs.readdirSync(unpacked).sort()).toEqual([
            'LICENSE',
            'LICENSE-THIRD-PARTY',
            'README.md',
            'dist',
            'package.json',
        ])
        expect(fs.readdirSync(path.join(unpacked, 'dist')).sort()).toEqual([
            'icons',
            'index.d.mts',
            'index.mjs',
            'lib',
            'source',
            'ssr',
        ])
        const manifest = JSON.parse(fs.readFileSync(path.join(unpacked, 'package.json'), 'utf8'))
        expect(JSON.stringify(manifest)).not.toContain('workspace:')
    })

    it('resolves every public subpath and renders SSR in plain Node, without a bundler', () => {
        const script = file('node-ssr.mjs')
        fs.writeFileSync(
            script,
            `
import assert from 'node:assert/strict'
import { createComponent } from 'solid-js'
import { escape, renderToString, ssr } from '@solidjs/web'

const subpaths = [
    '${NAME}',
    '${NAME}/lib',
    '${NAME}/lib/IconBase',
    '${NAME}/lib/SolarProvider',
    '${NAME}/lib/dynamic-icon',
    '${NAME}/lib/types',
    '${NAME}/dynamic',
    '${NAME}/dynamic/arrow-up',
    '${NAME}/dynamic/chat-square-2',
    '${NAME}/bold',
    '${NAME}/bold/arrow-up',
    '${NAME}/bold/chat-square-2',
    '${NAME}/bold-duotone',
    '${NAME}/bold-duotone/arrow-up',
    '${NAME}/broken',
    '${NAME}/broken/arrow-up',
    '${NAME}/line-duotone',
    '${NAME}/line-duotone/arrow-up',
    '${NAME}/linear',
    '${NAME}/linear/arrow-up',
    '${NAME}/outline',
    '${NAME}/outline/arrow-up',
]
for (const specifier of subpaths) {
    const mod = await import(specifier)
    assert.ok(mod && typeof mod === 'object', 'Failed to import ' + specifier)
}

const { ArrowUpLinearIcon, SolarProvider, useSolar } = await import('${NAME}')
const { DynamicIcon } = await import('${NAME}/lib/dynamic-icon')
const { IconStyle } = await import('${NAME}/lib/types')
const { ArrowUpIcon: ArrowUpDynamic } = await import('${NAME}/dynamic/arrow-up')
const { ArrowUpIcon: ArrowUpBoldDuotone } = await import('${NAME}/bold-duotone/arrow-up')
// A deprecated alias is a re-export only module: its deep import path must exist too.
const { ChatSquare2Icon } = await import('${NAME}/bold/chat-square-2')
const { ChartSquare2Icon } = await import('${NAME}/bold/chart-square-2')

assert.equal(typeof DynamicIcon, 'function')
assert.equal(IconStyle.LINEAR, 'Linear')
assert.equal(ChatSquare2Icon, ChartSquare2Icon)

function ContextProbe() {
    const solar = useSolar()
    return ssr(['<span data-color="', '"></span>'], escape(solar.color()))
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

assert.ok(html.includes('--solar-color:rebeccapurple'), 'provider color')
assert.ok(html.includes('--solar-size:32px'), 'provider size')
assert.ok(html.includes('--solar-secondary-color:gold'), 'provider secondary color')
assert.ok(html.includes('--solar-secondary-opacity:0.4'), 'provider secondary opacity')
assert.ok(html.includes('data-color="rebeccapurple"'), 'useSolar during SSR')
assert.ok(html.includes('solar-arrow-up-linear'))
assert.ok(html.includes('<title'))
assert.ok(html.includes('solar-arrow-up-bold-duotone'))
assert.ok(html.includes('solar-arrow-up-outline'))
assert.ok(!html.includes('weight='), 'DynamicIcon leaked the weight attribute')
assert.ok(!html.includes('styles='), 'DynamicIcon leaked the styles attribute')
assert.equal(html.match(/<svg/g).length, 3)
process.stdout.write('OK')
`
        )
        expect(runNode(tmpDir, script)).toBe('OK')
    }, 60_000)

    it('renders in Node + jsdom with the browser condition, and stays reactive', () => {
        // This is how test runners such as Vitest (jsdom) and server-side tooling that
        // fakes a DOM load Solid: `@solidjs/web` picks its DOM build because of the
        // `browser` condition, so the icons have to pick theirs from the same condition.
        const script = file('jsdom-dom.mjs')
        fs.writeFileSync(
            script,
            `${JSDOM_PRELUDE}
import assert from 'node:assert/strict'
const { createComponent, createSignal, flush } = await import('solid-js')
const { isServer, render } = await import('@solidjs/web')
const { ArrowUpLinearIcon, SolarProvider, useSolar } = await import('${NAME}')
const { ArrowUpIcon: ArrowUpDuotone } = await import('${NAME}/bold-duotone/arrow-up')
const { ArrowUpIcon: ArrowUpDynamic } = await import('${NAME}/dynamic/arrow-up')

assert.equal(isServer, false, 'expected the DOM build of @solidjs/web')

const root = document.createElement('div')
document.body.appendChild(root)
const [color, setColor] = createSignal('blue')
const [weight, setWeight] = createSignal('Linear')
let setProviderColor
let ref
let clicks = 0

function Controls() {
    setProviderColor = useSolar().setColor
    return createComponent(ArrowUpLinearIcon, {
        'aria-label': 'Go up',
        'data-testid': 'static',
        ref: el => (ref = el),
        onClick: () => clicks++,
    })
}

const dispose = render(
    () =>
        createComponent(SolarProvider, {
            get color() { return color() },
            size: 28,
            get children() {
                return [
                    createComponent(Controls, {}),
                    createComponent(ArrowUpDuotone, { isolated: true, 'data-testid': 'isolated' }),
                    createComponent(ArrowUpDynamic, {
                        get weight() { return weight() },
                        'data-testid': 'dynamic',
                    }),
                ]
            },
        }),
    root
)

const wrapper = root.firstElementChild
const query = id => root.querySelector('[data-testid="' + id + '"]')
const staticSvg = query('static')

assert.ok(staticSvg instanceof dom.window.SVGElement, 'svg element')
assert.equal(root.querySelectorAll('svg').length, 3)
assert.equal(wrapper.style.getPropertyValue('--solar-color'), 'blue')
assert.equal(wrapper.style.getPropertyValue('--solar-size'), '28px')
assert.equal(staticSvg.getAttribute('aria-label'), 'Go up')
assert.equal(staticSvg.hasAttribute('aria-hidden'), false)
assert.equal(query('isolated').getAttribute('width'), '24px')
assert.ok(query('dynamic').getAttribute('class').includes('solar-arrow-up-linear'))
assert.equal(query('dynamic').hasAttribute('weight'), false)
assert.equal(query('dynamic').hasAttribute('styles'), false)
assert.equal(ref, staticSvg, 'ref receives the <svg>')
staticSvg.dispatchEvent(new dom.window.MouseEvent('click', { bubbles: true }))
assert.equal(clicks, 1, 'onClick')

setColor('green')
flush()
assert.equal(wrapper.style.getPropertyValue('--solar-color'), 'green', 'provider prop update')
setProviderColor('purple')
flush()
assert.equal(wrapper.style.getPropertyValue('--solar-color'), 'purple', 'useSolar setter')

setWeight('Bold')
flush()
assert.ok(query('dynamic').getAttribute('class').includes('solar-arrow-up-bold'), 'Bold')
assert.equal(query('dynamic').hasAttribute('styles'), false)
setWeight('Outline')
flush()
assert.ok(query('dynamic').getAttribute('class').includes('solar-arrow-up-outline'), 'Outline')

dispose()
assert.equal(root.innerHTML, '', 'dispose clears the DOM')
process.stdout.write('OK')
`
        )
        expect(runNode(tmpDir, script, ['--conditions=browser'])).toBe('OK')
    }, 60_000)

    it('compiles and runs SSR from the packed dist using the solid JSX condition', async () => {
        const entry = file('src/ssr-entry.tsx')
        fs.writeFileSync(
            entry,
            `
import { generateHydrationScript, renderToString } from '@solidjs/web'
import { SolarProvider, useSolar } from '${NAME}/lib'
import { ArrowUpIcon } from '${NAME}/linear/arrow-up'
import { ArrowUpIcon as ArrowUpDuotone } from '${NAME}/bold-duotone/arrow-up'
import { ArrowUpIcon as ArrowUpDynamic } from '${NAME}/dynamic/arrow-up'

function Probe() {
    const solar = useSolar()
    return <span data-probe={solar.color()} />
}

export function renderPage() {
    const html = renderToString(() => (
        <SolarProvider color="blue">
            <Probe />
            <ArrowUpIcon alt="Up" class={['a', { b: true, c: false }]} style={{ opacity: '0.5' }} />
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
            outDir: file('out-ssr'),
            format: ['esm'],
            fixedExtension: true,
            dts: false,
            platform: 'node',
            plugins: [solid({ solid: { generate: 'ssr', hydratable: true } })],
            inputOptions: { resolve: { conditionNames: ['solid', 'node', 'import', 'default'] } },
            deps: {
                neverBundle: ['solid-js', '@solidjs/web'],
                alwaysBundle: [/^@solar-icons\/solid-v2/],
            },
            clean: true,
            logLevel: 'error',
        })

        const runner = file('run-ssr-solid.mjs')
        fs.writeFileSync(
            runner,
            `
import assert from 'node:assert/strict'
import { renderPage } from './out-ssr/ssr.mjs'
const { html, script } = renderPage()
assert.ok(script.includes('_$HY'), 'hydration script')
assert.ok(html.includes('_hk='), 'hydration keys')
assert.ok(html.includes('--solar-color:blue'))
assert.ok(html.includes('data-probe="blue"'))
assert.ok(html.includes('solar-arrow-up-linear a b'), 'class array')
assert.ok(html.includes('opacity:0.5'), 'style object')
assert.ok(html.includes('solar-arrow-up-bold-duotone'))
assert.ok(!html.includes('weight='))
assert.ok(!html.includes('styles='))
process.stdout.write('OK')
`
        )
        expect(runNode(tmpDir, runner)).toBe('OK')
    }, 60_000)

    it('renders in the DOM under both the solid (JSX) and the browser (precompiled) conditions', async () => {
        const entry = file('src/dom-entry.tsx')
        fs.writeFileSync(
            entry,
            `
import { createSignal, flush } from 'solid-js'
import { render } from '@solidjs/web'
import { SolarProvider, useSolar } from '${NAME}/lib'
import { ArrowUpIcon } from '${NAME}/linear/arrow-up'
import { ArrowUpIcon as ArrowUpDuotone } from '${NAME}/bold-duotone/arrow-up'
import { ArrowUpIcon as ArrowUpDynamic } from '${NAME}/dynamic/arrow-up'

export function runDomChecks(root: HTMLElement) {
    const [color, setColor] = createSignal('blue')
    const [weight, setWeight] = createSignal<'Linear' | 'Bold' | 'Outline'>('Linear')
    let setProviderColor!: (value: string) => void

    function Controls() {
        setProviderColor = useSolar().setColor
        return <ArrowUpIcon aria-label="Go up" data-testid="static" />
    }

    const dispose = render(
        () => (
            <SolarProvider color={color()} size={28}>
                <Controls />
                <ArrowUpDuotone isolated data-testid="isolated" />
                <ArrowUpDynamic weight={weight()} data-testid="dynamic" />
            </SolarProvider>
        ),
        root
    )

    const wrapper = root.firstElementChild as HTMLElement
    const query = (id: string) => root.querySelector('[data-testid="' + id + '"]')!

    if (wrapper.style.getPropertyValue('--solar-color') !== 'blue') throw new Error('initial color')
    if (wrapper.style.getPropertyValue('--solar-size') !== '28px') throw new Error('initial size')
    if (query('static').getAttribute('aria-label') !== 'Go up') throw new Error('aria-label')
    if (query('static').hasAttribute('aria-hidden')) throw new Error('unexpected aria-hidden')
    if (query('isolated').getAttribute('width') !== '24px') throw new Error('isolated width')
    if (!query('dynamic').getAttribute('class')?.includes('solar-arrow-up-linear')) throw new Error('initial weight')
    if (query('dynamic').hasAttribute('weight') || query('dynamic').hasAttribute('styles')) {
        throw new Error('leaked weight/styles attributes')
    }

    setColor('green')
    flush()
    if (wrapper.style.getPropertyValue('--solar-color') !== 'green') throw new Error('prop update')
    setProviderColor('purple')
    flush()
    if (wrapper.style.getPropertyValue('--solar-color') !== 'purple') throw new Error('useSolar setter')

    setWeight('Bold')
    flush()
    if (!query('dynamic').getAttribute('class')?.includes('solar-arrow-up-bold')) throw new Error('Bold switch')
    setWeight('Outline')
    flush()
    if (!query('dynamic').getAttribute('class')?.includes('solar-arrow-up-outline')) throw new Error('Outline switch')

    dispose()
    return 'OK'
}
`
        )

        const bundle = (name: string, conditionNames: string[]) =>
            tsdownBuild({
                config: false,
                cwd: tmpDir,
                entry: { [name]: entry },
                outDir: file('out-' + name),
                format: ['esm'],
                fixedExtension: true,
                dts: false,
                platform: 'browser',
                plugins: [solid({ solid: { generate: 'dom', hydratable: false } })],
                inputOptions: { resolve: { conditionNames } },
                deps: {
                    alwaysBundle: ['solid-js', '@solidjs/web', /^@solar-icons\/solid-v2/],
                },
                clean: true,
                logLevel: 'error',
            })

        // With the `solid` condition the bundler compiles dist/source/**/*.jsx itself.
        await bundle('dom-solid', ['solid', 'browser', 'import', 'default'])
        // Without it the bundler takes the precompiled DOM build.
        await bundle('dom-browser', ['browser', 'import', 'default'])

        const runner = file('run-dom.mjs')
        fs.writeFileSync(
            runner,
            `${JSDOM_PRELUDE}
for (const name of ['dom-solid', 'dom-browser']) {
    const { runDomChecks } = await import('./out-' + name + '/' + name + '.mjs')
    const root = document.createElement('div')
    document.body.appendChild(root)
    if (runDomChecks(root) !== 'OK') throw new Error(name + ' failed')
}
process.stdout.write('OK')
`
        )
        // Solid stays external in these bundles: the DOM build of `@solidjs/web` is picked
        // by the `browser` condition, as in a real browser.
        expect(runNode(tmpDir, runner, ['--conditions=browser'])).toBe('OK')
    }, 60_000)

    it('hydrates server markup without replacing the SVGs and keeps reactivity afterwards', async () => {
        const ssrEntry = file('src/hydrate-ssr.tsx')
        const clientEntry = file('src/hydrate-client.tsx')
        fs.writeFileSync(
            ssrEntry,
            `
import { generateHydrationScript, renderToString } from '@solidjs/web'
import { SolarProvider } from '${NAME}/lib'
import { ArrowUpIcon } from '${NAME}/linear/arrow-up'
import { ArrowUpIcon as ArrowUpDuotone } from '${NAME}/bold-duotone/arrow-up'
import { ArrowUpIcon as ArrowUpDynamic } from '${NAME}/dynamic/arrow-up'

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
import { createSignal, flush } from 'solid-js'
import { hydrate } from '@solidjs/web'
import { SolarProvider } from '${NAME}/lib'
import { ArrowUpIcon } from '${NAME}/linear/arrow-up'
import { ArrowUpIcon as ArrowUpDuotone } from '${NAME}/bold-duotone/arrow-up'
import { ArrowUpIcon as ArrowUpDynamic } from '${NAME}/dynamic/arrow-up'

export function runHydrate(container: HTMLElement) {
    const before = Array.from(container.querySelectorAll('svg'))
    if (before.length !== 3) throw new Error('Missing server SVGs before hydration')

    const [color, setColor] = createSignal('blue')
    const [weight, setWeight] = createSignal<'Linear' | 'Bold'>('Linear')

    const dispose = hydrate(
        () => (
            <SolarProvider color={color()}>
                <ArrowUpIcon alt="Up" />
                <ArrowUpDuotone />
                <ArrowUpDynamic weight={weight()} />
            </SolarProvider>
        ),
        container
    )

    const after = Array.from(container.querySelectorAll('svg'))
    if (after.length !== 3) throw new Error('Expected 3 SVGs after hydration, got ' + after.length)
    after.forEach((svg, index) => {
        if (svg !== before[index]) throw new Error('Hydration replaced SVG ' + index)
    })

    setColor('orange')
    flush()
    const wrapper = container.firstElementChild as HTMLElement
    if (wrapper.style.getPropertyValue('--solar-color') !== 'orange') throw new Error('color update')

    setWeight('Bold')
    flush()
    const dynamic = container.querySelectorAll('svg')[2]
    if (!dynamic.getAttribute('class')?.includes('solar-arrow-up-bold')) throw new Error('weight update')

    dispose()
    return 'OK'
}
`
        )

        await tsdownBuild({
            config: false,
            cwd: tmpDir,
            entry: { ssr: ssrEntry },
            outDir: file('out-hy-ssr'),
            format: ['esm'],
            fixedExtension: true,
            dts: false,
            platform: 'node',
            plugins: [solid({ solid: { generate: 'ssr', hydratable: true } })],
            inputOptions: { resolve: { conditionNames: ['solid', 'node', 'import', 'default'] } },
            deps: {
                neverBundle: ['solid-js', '@solidjs/web'],
                alwaysBundle: [/^@solar-icons\/solid-v2/],
            },
            clean: true,
            logLevel: 'error',
        })
        await tsdownBuild({
            config: false,
            cwd: tmpDir,
            entry: { client: clientEntry },
            outDir: file('out-hy-client'),
            format: ['esm'],
            fixedExtension: true,
            dts: false,
            platform: 'browser',
            plugins: [solid({ solid: { generate: 'dom', hydratable: true } })],
            inputOptions: {
                resolve: { conditionNames: ['solid', 'browser', 'import', 'default'] },
            },
            deps: {
                neverBundle: ['solid-js', '@solidjs/web'],
                alwaysBundle: [/^@solar-icons\/solid-v2/],
            },
            clean: true,
            logLevel: 'error',
        })

        const ssrRunner = file('run-hydrate-ssr.mjs')
        fs.writeFileSync(
            ssrRunner,
            `
import fs from 'node:fs'
import { renderHydratable } from './out-hy-ssr/ssr.mjs'
fs.writeFileSync('./hy-payload.json', JSON.stringify(renderHydratable()))
process.stdout.write('OK')
`
        )
        expect(runNode(tmpDir, ssrRunner)).toBe('OK')

        const clientRunner = file('run-hydrate-client.mjs')
        fs.writeFileSync(
            clientRunner,
            `
import fs from 'node:fs'
${JSDOM_PRELUDE}
const { script, html } = JSON.parse(fs.readFileSync('./hy-payload.json', 'utf8'))
new Function(script.match(/<script[^>]*>([\\s\\S]*?)<\\/script>/)[1])()
const app = document.createElement('div')
document.body.appendChild(app)
app.innerHTML = html

const { runHydrate } = await import('./out-hy-client/client.mjs')
if (runHydrate(app) !== 'OK') throw new Error('Hydration check failed')
process.stdout.write('OK')
`
        )
        expect(runNode(tmpDir, clientRunner, ['--conditions=browser'])).toBe('OK')
    }, 60_000)

    it('typechecks the public exports under Bundler and NodeNext with skipLibCheck disabled', () => {
        fs.writeFileSync(
            file('src/types-check.tsx'),
            `
import {
    ArrowUpLinearIcon,
    IconBase,
    SolarProvider,
    useSolar,
    type Icon,
    type IconProps,
    type SolarProviderProps,
} from '${NAME}'
import {
    IconBase as LibIconBase,
    SolarProvider as LibProvider,
    type DynamicIconProps,
} from '${NAME}/lib'
import IconBaseSubpath from '${NAME}/lib/IconBase'
import { SolarProvider as ProviderSubpath } from '${NAME}/lib/SolarProvider'
import { DynamicIcon, type DynamicIconProps as DynProps } from '${NAME}/lib/dynamic-icon'
import { IconStyle } from '${NAME}/lib/types'
import { ArrowUpIcon as LinearArrowUp } from '${NAME}/linear'
import { ArrowUpIcon as LinearSubpath } from '${NAME}/linear/arrow-up'
import { ArrowUpIcon as DuotoneSubpath } from '${NAME}/bold-duotone/arrow-up'
import { ChatSquare2Icon } from '${NAME}/bold/chat-square-2'
import { ArrowUpIcon as DynamicBarrel } from '${NAME}/dynamic'
import { ArrowUpIcon as DynamicSubpath } from '${NAME}/dynamic/arrow-up'

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
    let svg: SVGSVGElement | undefined
    return (
        <SolarProvider {...providerProps}>
            <LibProvider color="green">
                <ProviderSubpath>
                    <ArrowUpLinearIcon
                        {...iconProps}
                        ref={el => (svg = el)}
                        onClick={event => event.currentTarget.blur()}
                        class={['a', { b: true }]}
                        style={{ 'font-size': '12px' }}
                    />
                    <LinearArrowUp />
                    <ChatSquare2Icon />
                    <DuotoneSubpath secondaryColor="gold" />
                    <DynamicBarrel {...dynProps} />
                    <DynamicSubpath {...dynProps2} />
                    <IconBase iconName="custom" iconBody="<path />" />
                    <LibIconBase iconName="custom" iconBody="<path />" />
                    <IconBaseSubpath iconName="custom" iconBody="<path />" />
                    <DynamicIcon weight="BoldDuotone" styles={styles} />
                    {iconFn({})}
                    <span>{ctx().color()}</span>
                    <span>{svg?.tagName}</span>
                </ProviderSubpath>
            </LibProvider>
        </SolarProvider>
    )
}
`
        )
        fs.writeFileSync(
            file('tsconfig.json'),
            JSON.stringify({
                compilerOptions: {
                    noEmit: true,
                    strict: true,
                    jsx: 'preserve',
                    jsxImportSource: '@solidjs/web',
                    target: 'ESNext',
                    skipLibCheck: false,
                    // `@solidjs/web` imports `csstype` without declaring it. Under pnpm's strict
                    // layout that import cannot be resolved from the linked package, so it is
                    // mapped here. A flat npm install resolves it with no help.
                    paths: { csstype: [path.join(PKG_ROOT, 'node_modules/csstype/index.d.ts')] },
                },
                files: ['src/types-check.tsx'],
            })
        )

        // `@solidjs/web@2.0.0` imports `heldRead` from `solid-js/internal`, which `solid-js`
        // does not declare: that error shows up as soon as `skipLibCheck` is off and is not ours.
        // Everything reported against this package, the fixture or its declarations must stay empty.
        const UPSTREAM = /node_modules\/(@solidjs\/web|solid-js)\//
        const diagnostics = (...args: string[]) => {
            try {
                execFileSync(TSC_BIN, ['-p', file('tsconfig.json'), ...args], {
                    cwd: tmpDir,
                    encoding: 'utf8',
                    stdio: 'pipe',
                })
                return []
            } catch (error) {
                const { stdout } = error as { stdout?: string }
                return String(stdout ?? error)
                    .split(/\r?\n/)
                    .filter(line => /error TS\d+/.test(line) && !UPSTREAM.test(line))
            }
        }

        expect(diagnostics('--module', 'ESNext', '--moduleResolution', 'Bundler')).toEqual([])
        expect(diagnostics('--module', 'NodeNext', '--moduleResolution', 'NodeNext')).toEqual([])
    }, 60_000)

    it('tree-shakes barrel and dynamic imports without unrelated icons or core metadata', async () => {
        const staticEntry = file('src/tree-static.tsx')
        const dynamicEntry = file('src/tree-dynamic.tsx')
        fs.writeFileSync(
            staticEntry,
            `
import { ArrowUpIcon } from '${NAME}/linear'
export function TreeStatic() { return <ArrowUpIcon /> }
`
        )
        fs.writeFileSync(
            dynamicEntry,
            `
import { ArrowUpIcon } from '${NAME}/dynamic/arrow-up'
export function TreeDynamic() { return <ArrowUpIcon weight="Bold" /> }
`
        )

        const shared = {
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
                resolve: { conditionNames: ['solid', 'browser', 'import', 'default'] },
            },
            deps: {
                neverBundle: ['solid-js', '@solidjs/web'],
                alwaysBundle: [/^@solar-icons\/solid-v2/],
            },
            clean: true,
            logLevel: 'error' as const,
        }
        await tsdownBuild({
            ...shared,
            entry: { static: staticEntry },
            outDir: file('out-tree-static'),
        })
        await tsdownBuild({
            ...shared,
            entry: { dynamic: dynamicEntry },
            outDir: file('out-tree-dynamic'),
        })

        const staticBundle = fs.readFileSync(file('out-tree-static/static.mjs'), 'utf8')
        const dynamicBundle = fs.readFileSync(file('out-tree-dynamic/dynamic.mjs'), 'utf8')

        expect(staticBundle).toContain('arrow-up-linear')
        expect(staticBundle).not.toContain('arrow-down-linear')
        expect(staticBundle).not.toContain('SolarProvider')
        expect(staticBundle.length).toBeLessThan(10_000)

        expect(dynamicBundle).toContain('arrow-up-bold')
        expect(dynamicBundle).not.toContain('arrow-down')
        expect(dynamicBundle).not.toContain('categories')
        expect(dynamicBundle.length).toBeLessThan(16_000)
    }, 60_000)
})
