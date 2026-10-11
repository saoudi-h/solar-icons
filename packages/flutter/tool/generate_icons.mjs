#!/usr/bin/env node
/**
 * Generates Flutter icon widgets from packages/core/svgs.
 *
 * Two complementary surfaces, mirroring the React package:
 *
 * - Static widgets (`lib/<style>/<icon>.dart`, e.g. `HomeLinearIcon` in
 *   `lib/linear/home.dart`): one style embedded. Import by style path or
 *   by style-suffixed name from a style barrel (`lib/linear.dart`) or the
 *   root. This is the default: no unused SVG ships with the widget.
 * - Dynamic widgets (`lib/dynamic/<icon>.dart`, e.g. `HomeIcon` with a
 *   `style` parameter): all six styles embedded, switching at runtime.
 *   Opt in when the style is only known at runtime.
 *
 * Normalization matches `normalizeBody` in packages/core/src/parser.ts.
 * This script reads the SVGs directly so the Flutter package can be
 * generated without installing the pnpm workspace.
 */
import { spawnSync } from 'node:child_process'
import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

const here = path.dirname(fileURLToPath(import.meta.url))
const packageRoot = path.resolve(here, '..')
const repoRoot = path.resolve(packageRoot, '../..')
const svgsDir = path.join(repoRoot, 'packages/core/svgs')
const descriptionsPath = path.join(repoRoot, 'packages/core/src/metadata-descriptions.json')
const dynamicDir = path.join(packageRoot, 'lib/dynamic')
const libDir = path.join(packageRoot, 'lib')

// [core style dir, SolarIconStyle field, output dir, class suffix]
const STYLES = [
    ['Bold', 'bold', 'bold', 'Bold'],
    ['BoldDuotone', 'boldDuotone', 'bold_duotone', 'BoldDuotone'],
    ['Broken', 'broken', 'broken', 'Broken'],
    ['Linear', 'linear', 'linear', 'Linear'],
    ['LineDuotone', 'lineDuotone', 'line_duotone', 'LineDuotone'],
    ['Outline', 'outline', 'outline', 'Outline'],
]

const RESERVED = new Set(['SolarIcon', 'SolarIconData', 'SolarIconStyle', 'SolarProvider'])

const xmlDecl = () => /^[\s\S]*?<\?xml[\s\S]*?>\s*/
const svgOpen = () => /<svg[^>]*>/
const svgClose = () => /<\/svg>/g
const emptyRect = () => /<rect\s+width="24[\d,.]+"\s+height="24[\d,.]+"\s+fill="none"[^>]*\/>\s*/g
const title = () => /<title[\s\S]*?<\/title>\s*/g
const defaultStrokeWidth = () => /\s+stroke-width=["']1\.5["']/g
const hexColor = () => /"#[0-9a-f]{6}"/gi
const duotoneAccent = () =>
    /(?:<g[^>]*\sopacity="0\.5"[^>]*>[\s\S]*?<\/g>|<\w[^>]*\sopacity="0\.5"[^>]*\/>)\s*/g

function normalize(raw) {
    let body = raw
        .replace(xmlDecl(), '')
        .replace(svgOpen(), '')
        .replace(svgClose(), '')
        .replace(emptyRect(), '')
        .replace(title(), '')
        .replace(defaultStrokeWidth(), '')
        .trim()

    let accent = null
    const accentRegex = duotoneAccent()
    const matches = body.match(accentRegex)
    if (matches && matches.length > 0) {
        accent = matches.join('\n').trim()
        body = body.replace(duotoneAccent(), '').trim()
    }

    body = body.replace(hexColor(), '"currentColor"')
    if (accent) accent = accent.replace(hexColor(), '"currentColor"')
    return { body, accent }
}

function pascal(kebab) {
    const name = kebab
        .split('-')
        .filter(Boolean)
        .map(part => part.charAt(0).toUpperCase() + part.slice(1))
        .join('')
    if (!name || !/^[A-Za-z_]/.test(name)) {
        throw new Error(`Cannot build a Dart class name from "${kebab}"`)
    }
    return name
}

function snake(kebab) {
    return kebab.replaceAll('-', '_')
}

function dartRaw(value) {
    if (value.includes("'''")) {
        throw new Error('SVG contains a triple quote and cannot be embedded as a Dart raw string')
    }
    return `r'''${value}'''`
}

function dartString(value) {
    return `'${value
        .replaceAll('\\', '\\\\')
        .replaceAll("'", "\\'")
        .replaceAll('$', '\\$')
        .replaceAll('\r', '')
        .replaceAll('\n', ' ')}'`
}

function readCatalogue() {
    const icons = new Map()
    const categories = fs.readdirSync(svgsDir, { withFileTypes: true })
    for (const category of categories) {
        if (!category.isDirectory()) continue
        const categoryDir = path.join(svgsDir, category.name)
        for (const [styleDir] of STYLES) {
            const stylePath = path.join(categoryDir, styleDir)
            if (!fs.existsSync(stylePath)) continue
            for (const filename of fs.readdirSync(stylePath)) {
                if (!filename.endsWith('.svg')) continue
                const name = filename.slice(0, -'.svg'.length).replace(/[\s\-_]+$/g, '')
                const existing = icons.get(name)
                if (existing && existing.category !== category.name) {
                    throw new Error(
                        `Icon "${name}" exists in both ${existing.category} and ${category.name}`
                    )
                }
                if (!existing) {
                    icons.set(name, { name, category: category.name, styles: new Map() })
                }
                const raw = fs.readFileSync(path.join(stylePath, filename), 'utf8')
                icons.get(name).styles.set(styleDir, { raw, ...normalize(raw) })
            }
        }
    }
    return icons
}

function loadAliases() {
    const descriptions = JSON.parse(fs.readFileSync(descriptionsPath, 'utf8'))
    const aliases = new Map()
    for (const entry of descriptions) {
        if (entry.deprecatedAliases?.length) {
            aliases.set(entry.name, entry.deprecatedAliases)
        }
    }
    return aliases
}

function checkClass(seenClasses, className, what) {
    if (RESERVED.has(className)) {
        throw new Error(`Generated class ${className} collides with the public API (${what})`)
    }
    if (seenClasses.has(className)) {
        throw new Error(`Duplicate class ${className} (${what})`)
    }
    seenClasses.add(className)
}

function deprecationTypedefs(aliasList, canonicalClass, suffix) {
    return (aliasList ?? [])
        .map(alias => {
            const aliasClass = `${pascal(alias.name)}${suffix}Icon`
            const since = alias.deprecatedSince ? ` Deprecated since ${alias.deprecatedSince}.` : ''
            const message = `${alias.reason}${since} Use ${canonicalClass} instead.`
            return { aliasClass, rendered: `@Deprecated(${dartString(message)})\ntypedef ${aliasClass} = ${canonicalClass};` }
        })
}

function widgetParams(withStyle) {
    return `    super.key,${withStyle ? '\n    this.style,' : ''}
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,`
}

function widgetFields(withStyle) {
    return `${withStyle ? '  /// Style to draw. Falls back to [SolarProvider] (unless [isolated]), then [SolarIconStyle.linear].\n  final SolarIconStyle? style;\n\n' : ''}  /// Width and height.
  final double? size;

  /// Primary color.
  final Color? color;

  /// Stroke width for stroked styles.
  final double? strokeWidth;

  /// Accent color for duotone styles.
  final Color? secondaryColor;

  /// Accent opacity for duotone styles, from 0 to 1.
  final double? secondaryOpacity;

  /// Accessibility label.
  final String? semanticLabel;

  /// When true, ignores [SolarProvider] and [IconTheme].
  final bool isolated;`
}

const WIDGET_BUILD = `  @override
  Widget build(BuildContext context) {
    return SolarIcon(
      _data,
      size: size,
      color: color,
      strokeWidth: strokeWidth,
      secondaryColor: secondaryColor,
      secondaryOpacity: secondaryOpacity,
      semanticLabel: semanticLabel,
      isolated: isolated,
    );
  }`

const DYNAMIC_BUILD = `  @override
  Widget build(BuildContext context) {
    final SolarIconStyle fallback =
        isolated ? SolarIconStyle.linear : SolarProvider.maybeOf(context)?.style ?? SolarIconStyle.linear;
    final SolarIconData data = switch (style ?? fallback) {
      SolarIconStyle.bold => bold,
      SolarIconStyle.boldDuotone => boldDuotone,
      SolarIconStyle.broken => broken,
      SolarIconStyle.linear => linear,
      SolarIconStyle.lineDuotone => lineDuotone,
      SolarIconStyle.outline => outline,
    };
    return SolarIcon(
      data,
      size: size,
      color: color,
      strokeWidth: strokeWidth,
      secondaryColor: secondaryColor,
      secondaryOpacity: secondaryOpacity,
      semanticLabel: semanticLabel,
      isolated: isolated,
    );
  }`

/**
 * Base64 doc preview of a raw core SVG, mirroring `parseSvgs` in
 * packages/core/src/parser.ts: 20x20 with a white background `<rect>` so the
 * preview stays readable on dark IDE themes, then base64. Same line as the
 * React JSDoc (`![img](data:image/svg+xml;base64,...)`).
 * Doc comments never reach the compiled app: the Dart toolchain discards
 * them before tree-shaking, so previews cost source-download size only,
 * measured with `dart pub publish --dry-run`.
 */
function docPreview(raw) {
    const preview = raw.replace(
        /<svg[^>]*>/,
        '<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none"><rect width="24" height="24" fill="#FFF" />'
    )
    return `/// ![img](data:image/svg+xml;base64,${Buffer.from(preview).toString('base64')})`
}

function dataPayload(iconName, field, parsed) {
    const accent = parsed.accent ? `,\n    accent: ${dartRaw(parsed.accent)}` : ''
    return `SolarIconData(
    name: '${iconName}',
    style: SolarIconStyle.${field},
    body: ${dartRaw(parsed.body)}${accent},
  )`
}

function renderStatic(icon, styleDir, field, outDir, suffix, aliases) {
    const parsed = icon.styles.get(styleDir)
    if (!parsed) {
        throw new Error(`Icon "${icon.name}" is missing the ${styleDir} style`)
    }
    const className = `${pascal(icon.name)}${suffix}Icon`
    const typedefs = deprecationTypedefs(aliases.get(icon.name), className, suffix)

    return { className, typedefs, content: `// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

${docPreview(parsed.raw)}
class ${className} extends StatelessWidget {
  /// Creates the \`${icon.name}\` icon in the ${field} style.
  const ${className}({
${widgetParams(false)}
  });

${widgetFields(false)}

  /// Static payload for composition with [SolarIcon].
  static const data = ${dataPayload(icon.name, field, parsed)};

  SolarIconData get _data => data;

${WIDGET_BUILD}
}
${typedefs.length > 0 ? `\n${typedefs.map(t => t.rendered).join('\n\n')}\n` : ''}`} 
}

function renderDynamic(icon, aliases) {
    const className = `${pascal(icon.name)}Icon`
    const payloads = STYLES.map(([styleDir, field]) => {
        const parsed = icon.styles.get(styleDir)
        if (!parsed) {
            throw new Error(`Icon "${icon.name}" is missing the ${styleDir} style`)
        }
        return `  static const ${field} = ${dataPayload(icon.name, field, parsed)};`
    }).join('\n\n')

    const typedefs = deprecationTypedefs(aliases.get(icon.name), className, '')

    return { className, typedefs, content: `// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The \`${icon.name}\` icon in every style.
${STYLES.map(([styleDir]) => `${docPreview(icon.styles.get(styleDir).raw)} ${styleDir}`).join('\n')}
class ${className} extends StatelessWidget {
  /// Creates the \`${icon.name}\` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ${className}({
${widgetParams(true)}
  });

${widgetFields(true)}

${payloads}

${DYNAMIC_BUILD}
}
${typedefs.length > 0 ? `\n${typedefs.map(t => t.rendered).join('\n\n')}\n` : ''}`}
}

function renderStyleBarrel(outDir, names) {
    const exports = names
        .map(name => `export '${outDir}/${snake(name)}.dart';`)
        .join('\n')
    return `// Generated from packages/core/svgs. Do not edit.
// Logical icons: ${names.length}

${exports}
`
}

function renderRootBarrel(names) {
    return `// Generated from packages/core/svgs. Do not edit.
// Logical icons: ${names.length}

export 'src/solar_icon.dart';
export 'src/solar_icon_data.dart';
export 'src/solar_icon_style.dart';
export 'src/solar_provider.dart';
export 'bold.dart';
export 'bold_duotone.dart';
export 'broken.dart';
export 'dynamic.dart';
export 'line_duotone.dart';
export 'linear.dart';
export 'outline.dart';
`
}

function main() {
    if (!fs.existsSync(svgsDir)) {
        throw new Error(`SVG catalogue not found: ${svgsDir}`)
    }

    const icons = readCatalogue()
    const aliases = loadAliases()
    const names = [...icons.keys()].sort((a, b) => a.localeCompare(b))
    if (names.length === 0) throw new Error('No icons found')

    const seenClasses = new Set()
    const seenCanonical = new Set()

    // Static widgets, one style each.
    for (const [, , outDir] of STYLES) {
        const dir = path.join(libDir, outDir)
        fs.rmSync(dir, { recursive: true, force: true })
        fs.mkdirSync(dir, { recursive: true })
    }
    const staticOutputs = new Map()
    for (const [styleDir, field, outDir, suffix] of STYLES) {
        const rendered = []
        for (const name of names) {
            const { className, typedefs, content } = renderStatic(
                icons.get(name), styleDir, field, outDir, suffix, aliases
            )
            checkClass(seenClasses, className, `static ${name} ${field}`)
            seenCanonical.add(className)
            for (const t of typedefs) {
                checkClass(seenClasses, t.aliasClass, `static alias ${name} ${field}`)
            }
            fs.writeFileSync(path.join(libDir, outDir, `${snake(name)}.dart`), content)
            rendered.push(name)
        }
        staticOutputs.set(outDir, rendered)
    }

    // Dynamic widgets, all six styles each.
    fs.rmSync(dynamicDir, { recursive: true, force: true })
    fs.mkdirSync(dynamicDir, { recursive: true })
    for (const name of names) {
        const { className, typedefs, content } = renderDynamic(icons.get(name), aliases)
        checkClass(seenClasses, className, `dynamic ${name}`)
        seenCanonical.add(className)
        for (const t of typedefs) {
            checkClass(seenClasses, t.aliasClass, `dynamic alias ${name}`)
        }
        fs.writeFileSync(path.join(dynamicDir, `${snake(name)}.dart`), content)
    }

    // Cross-check: no deprecated alias may match another icon's canonical classes.
    for (const aliasList of aliases.values()) {
        for (const alias of aliasList) {
            for (const [, , , suffix] of [...STYLES, ['', '', '', '']]) {
                const aliasClass = `${pascal(alias.name)}${suffix}Icon`
                if (seenCanonical.has(aliasClass)) {
                    throw new Error(`Deprecated alias ${aliasClass} matches another icon`)
                }
            }
        }
    }

    const formatTargets = []
    for (const [outDir, rendered] of staticOutputs) {
        const barrelPath = path.join(libDir, `${outDir}.dart`)
        fs.writeFileSync(barrelPath, renderStyleBarrel(outDir, rendered))
        formatTargets.push(path.join(libDir, outDir), barrelPath)
    }
    const dynamicBarrelPath = path.join(libDir, 'dynamic.dart')
    fs.writeFileSync(dynamicBarrelPath, renderStyleBarrel('dynamic', names))
    formatTargets.push(dynamicDir, dynamicBarrelPath)
    fs.writeFileSync(path.join(libDir, 'flutter_solar_icons.dart'), renderRootBarrel(names))

    const formatted = spawnSync('dart', ['format', ...formatTargets], {
        stdio: 'inherit',
    })
    if (formatted.status !== 0) {
        throw new Error('dart format failed')
    }
    console.log(`Generated ${names.length} icons (static x6 + dynamic) in ${libDir}`)
}
main()
