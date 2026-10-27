import crypto from 'node:crypto'
import fs from 'node:fs'
import fsp from 'node:fs/promises'
import path from 'node:path'
import { performance } from 'node:perf_hooks'
import { fileURLToPath } from 'node:url'

import {
    parseSvgs,
    WEIGHTS,
    WEIGHT_MAP,
    applyDuotoneStyle,
    buildDeprecatedAliasMap,
    buildAliasMap,
    toPascalCase,
    type IconDescription,
} from '@solar-icons/core'

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
const core = path.resolve(root, '../core')
const output = path.join(root, 'src/SolarIcons.Blazor/Generated')
const started = performance.now()
const args = process.argv.slice(2)
if (args.some(arg => !['--check', '--all'].includes(arg)))
    throw new Error('Only --check and --all are supported')
const check = args.includes('--check')
const { icons, groups } = await parseSvgs({ svgsDir: path.join(core, 'svgs'), preview: false })
const selected = [...groups].sort((a, b) => (a.name < b.name ? -1 : a.name > b.name ? 1 : 0))
const descriptions = JSON.parse(
    fs.readFileSync(path.join(core, 'src/metadata-descriptions.json'), 'utf8')
) as IconDescription[]
const deprecated = buildDeprecatedAliasMap(descriptions),
    aliases = buildAliasMap(descriptions)
const files = new Map<string, string>()
const types = new Map<string, string>()
const header = '// Generated from the Solar Icons core catalogue. Do not edit.\n'
const bodyManifest: Array<{ name: string; weight: string; type: string; body: string }> = []
function add(name: string, contents: string) {
    if (!/^[A-Za-z_][A-Za-z0-9_]*$/.test(name)) throw new Error(`Invalid C# identifier: ${name}`)
    const key = name.toLowerCase()
    if (types.has(key)) throw new Error(`Conflicting C# type or file path: ${name}`)
    types.set(key, name)
    files.set(name + '.g.cs', header + 'namespace SolarIcons.Blazor;\n\n' + contents + '\n')
}
const cs = (value: string): string =>
    JSON.stringify(value).replaceAll('\\u2028', '\\u2028').replaceAll('\\u2029', '\\u2029')
for (const group of selected) {
    for (const weight of WEIGHTS) {
        const icon = group.styles[weight]
        // Checkouts with CRLF line endings must generate the same output as LF ones.
        const body = (
            (applyDuotoneStyle(icon.duotoneAccentInner, 'html') ?? '') + icon.inner
        ).replace(/\r\n?/g, '\n')
        const type = group.pascalName + weight + 'Icon'
        add(
            type,
            `public class ${type} : SolarIconBase\n{\n    internal static string Payload { get; } = System.Text.Encoding.UTF8.GetString(${cs(body)}u8);\n    protected override string IconName => ${cs(group.name)};\n    protected override string StyleKey => ${cs(WEIGHT_MAP[weight])};\n    protected override string GetSvgBody() => Payload;\n}`
        )
        bodyManifest.push({ name: group.name, weight, type, body })
    }
    const type = group.pascalName + 'Icon'
    const cases = WEIGHTS.map(
        weight => `        IconWeight.${weight} => ${group.pascalName}${weight}Icon.Payload,`
    ).join('\n')
    add(
        type,
        `public class ${type} : SolarDynamicIconBase\n{\n    protected override string IconName => ${cs(group.name)};\n    protected override string GetSvgBody() => Weight switch\n    {\n${cases}\n        _ => throw new System.ArgumentOutOfRangeException(nameof(Weight))\n    };\n}`
    )
    const allAliases: Array<{ name: string; message?: string }> = [
        ...(deprecated.get(group.name) ?? []).map(alias => ({
            name: toPascalCase(alias.name),
            message: alias.reason + ' Use ' + group.pascalName + 'Icon instead.',
        })),
        ...(aliases.get(group.name) ?? []).map(name => ({ name })),
    ]
    for (const alias of allAliases)
        for (const suffix of ['', ...WEIGHTS]) {
            const target = group.pascalName + suffix + 'Icon',
                aliasType = alias.name + suffix + 'Icon'
            add(
                aliasType,
                `${alias.message ? '[System.Obsolete(' + cs(alias.message) + ')]\n' : ''}public sealed class ${aliasType} : ${target} { }`
            )
        }
}
function hashFiles(entries: ReadonlyMap<string, string>): string {
    const hash = crypto.createHash('sha256')
    for (const [name, content] of [...entries].sort(([a], [b]) => (a < b ? -1 : a > b ? 1 : 0)))
        hash.update(name + '\n' + content)
    return hash.digest('hex')
}

const playgroundFiles = new Map<string, string>([
    [
        'GalleryRegistry.g.cs',
        header +
            'namespace SolarIcons.Playground.Client;\n\ninternal static class GalleryRegistry\n{\n    public static readonly (string Name, System.Type Type)[] Icons =\n    [\n' +
            selected
                .map(
                    group =>
                        `        (${cs(group.name)}, typeof(SolarIcons.Blazor.${group.pascalName}Icon)),`
                )
                .join('\n') +
            '\n    ];\n}\n',
    ],
])

interface TrimCase {
    id: string
    mode: 'empty' | 'static' | 'dynamic'
    iconNames: string[]
    componentTypes: string[]
}
const home = selected.find(group => group.name === 'home')
if (!home) throw new Error('Missing representative Home icon')
const ordered = [home, ...selected.filter(group => group !== home)]
const cases: TrimCase[] = []
const probeFiles = new Map<string, string>()
for (const mode of ['empty', 'static', 'dynamic'] as const) {
    for (const count of mode === 'empty' ? [0] : [1, 50, selected.length]) {
        const subset = ordered.slice(0, count)
        const id =
            mode === 'empty'
                ? 'EMPTY'
                : `${mode.toUpperCase()}_${count === selected.length ? 'ALL' : count}`
        const componentTypes = subset.flatMap(group =>
            mode === 'static'
                ? [group.pascalName + 'LinearIcon']
                : [
                      group.pascalName + 'Icon',
                      ...WEIGHTS.map(weight => group.pascalName + weight + 'Icon'),
                  ]
        )
        cases.push({ id, mode, iconNames: subset.map(group => group.name), componentTypes })
        const calls = subset
            .map((group, index) => {
                const sequence = 100 + index * 3
                return (
                    `        builder.OpenComponent<SolarIcons.Blazor.${group.pascalName}${mode === 'static' ? 'Linear' : ''}Icon>(${sequence});\n` +
                    (mode === 'dynamic'
                        ? `        builder.AddAttribute(${sequence + 1}, "Weight", weight);\n`
                        : '') +
                    '        builder.CloseComponent();'
                )
            })
            .join('\n')
        const control =
            mode === 'dynamic'
                ? `
    private SolarIcons.Blazor.IconWeight weight = SolarIcons.Blazor.IconWeight.Linear;
    private void Cycle() => weight = (SolarIcons.Blazor.IconWeight)(((int)weight + 1) % 6);
    private void RenderControls(Microsoft.AspNetCore.Components.Rendering.RenderTreeBuilder builder)
    {
        builder.OpenElement(10, "button");
        builder.AddAttribute(11, "id", "cycle");
        builder.AddAttribute(12, "onclick", Microsoft.AspNetCore.Components.EventCallback.Factory.Create(this, Cycle));
        builder.AddContent(13, "Next style");
        builder.CloseElement();
    }
`
                : '\n    private void RenderControls(Microsoft.AspNetCore.Components.Rendering.RenderTreeBuilder builder) { }\n'
        probeFiles.set(
            id + '.g.cs',
            header +
                `namespace TrimProbe;\n\npublic sealed partial class ProbeRoot\n{${control}\n    private void RenderIcons(Microsoft.AspNetCore.Components.Rendering.RenderTreeBuilder builder)\n    {\n${calls}\n    }\n}\n`
        )
    }
}
const manifest = {
    logicalIcons: selected.length,
    svgPayloads: bodyManifest.length,
    componentTypes: types.size,
    styles: WEIGHTS,
    sourceIcons: icons.length,
    generatedHash: hashFiles(files),
    playgroundHash: hashFiles(playgroundFiles),
    probeHash: hashFiles(probeFiles),
}
const manifestPath = path.join(root, 'catalogue-manifest.json')
const manifestText = JSON.stringify(manifest, null, 2) + '\n'
files.set('manifest.json', manifestText)

async function syncGenerated(
    directory: string,
    entries: ReadonlyMap<string, string>
): Promise<void> {
    // Each caller supplies a fixed generator-owned directory, never a user-selected path.
    if (path.basename(directory) !== 'Generated') throw new Error('Unexpected generated directory')
    if (check) {
        const existing = fs.readdirSync(directory).sort()
        if (JSON.stringify(existing) !== JSON.stringify([...entries.keys()].sort()))
            throw new Error(`Generated filenames drifted in ${directory}`)
        const expected = [...entries]
        for (let offset = 0; offset < expected.length; offset += 64) {
            await Promise.all(
                expected.slice(offset, offset + 64).map(async ([name, content]) => {
                    if ((await fsp.readFile(path.join(directory, name), 'utf8')) !== content)
                        throw new Error(`Generated output drifted: ${name}`)
                })
            )
        }
        return
    }
    fs.mkdirSync(directory, { recursive: true })
    for (const name of fs.readdirSync(directory))
        if (!entries.has(name)) fs.unlinkSync(path.join(directory, name))
    for (const [name, content] of entries) fs.writeFileSync(path.join(directory, name), content)
}
if (
    check &&
    (!fs.existsSync(manifestPath) || fs.readFileSync(manifestPath, 'utf8') !== manifestText)
)
    throw new Error('Catalogue manifest drifted; regenerate and include catalogue-manifest.json')
await syncGenerated(output, files)
await syncGenerated(
    path.resolve(root, '../../apps/blazor-app/SolarIcons.Playground.Client/Generated'),
    playgroundFiles
)
await syncGenerated(path.join(root, 'probes/TrimProbe/Generated'), probeFiles)
if (!check) {
    fs.writeFileSync(manifestPath, manifestText)
    fs.mkdirSync(path.join(root, 'artifacts/packages'), { recursive: true })
    fs.writeFileSync(
        path.join(root, 'artifacts/catalogue-fixture.json'),
        JSON.stringify(bodyManifest)
    )
    fs.writeFileSync(
        path.join(root, 'artifacts/trim-cases.json'),
        JSON.stringify(cases, null, 2) + '\n'
    )
}
console.log(
    JSON.stringify(
        { ...manifest, check, durationMs: Math.round(performance.now() - started) },
        null,
        2
    )
)
