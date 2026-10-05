#!/usr/bin/env node
/**
 * Generates Flutter icon widgets from packages/core/svgs.
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
const iconsDir = path.join(packageRoot, 'lib/icons')
const barrelPath = path.join(packageRoot, 'lib/icons.dart')

const STYLES = [
    ['Bold', 'bold'],
    ['BoldDuotone', 'boldDuotone'],
    ['Broken', 'broken'],
    ['Linear', 'linear'],
    ['LineDuotone', 'lineDuotone'],
    ['Outline', 'outline'],
]

const RESERVED = new Set(['SolarIcon', 'SolarIconData', 'SolarIconStyle', 'SolarTheme'])

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
                icons.get(name).styles.set(styleDir, normalize(raw))
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

function renderIcon(icon, aliases) {
    const className = `${pascal(icon.name)}Icon`
    if (RESERVED.has(className)) {
        throw new Error(`Generated class ${className} collides with the public API`)
    }

    const payloads = STYLES.map(([styleDir, field]) => {
        const parsed = icon.styles.get(styleDir)
        if (!parsed) {
            throw new Error(`Icon "${icon.name}" is missing the ${styleDir} style`)
        }
        const accent = parsed.accent ? `\n    accent: ${dartRaw(parsed.accent)},` : ''
        return `  static const ${field} = SolarIconData(
    name: '${icon.name}',
    style: SolarIconStyle.${field},
    body: ${dartRaw(parsed.body)},${accent}
  );`
    }).join('\n\n')

    const typedefs = (aliases.get(icon.name) ?? [])
        .map(alias => {
            const aliasClass = `${pascal(alias.name)}Icon`
            if (RESERVED.has(aliasClass) || aliasClass === className) {
                throw new Error(`Alias ${aliasClass} collides with ${className}`)
            }
            const since = alias.deprecatedSince ? ` Deprecated since ${alias.deprecatedSince}.` : ''
            const message = `${alias.reason}${since} Use ${className} instead.`
            return `@Deprecated(${dartString(message)})\ntypedef ${aliasClass} = ${className};`
        })
        .join('\n\n')

    return `// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The \`${icon.name}\` icon.
class ${className} extends StatelessWidget {
  /// Creates the \`${icon.name}\` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const ${className}({
    super.key,
    this.style = SolarIconStyle.linear,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw.
  final SolarIconStyle style;

  /// Width and height.
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

  /// When true, ignores [SolarTheme] and [IconTheme].
  final bool isolated;

${payloads}

  SolarIconData get _data => switch (style) {
    SolarIconStyle.bold => bold,
    SolarIconStyle.boldDuotone => boldDuotone,
    SolarIconStyle.broken => broken,
    SolarIconStyle.linear => linear,
    SolarIconStyle.lineDuotone => lineDuotone,
    SolarIconStyle.outline => outline,
  };

  @override
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
  }
}
${typedefs ? `\n${typedefs}\n` : ''}`
}

function renderBarrel(names) {
    const exports = names
        .map(name => `export 'icons/${snake(name)}.dart';`)
        .join('\n')
    return `// Generated from packages/core/svgs. Do not edit.
// Logical icons: ${names.length}

export 'solar_icons.dart';
${exports}
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

    fs.rmSync(iconsDir, { recursive: true, force: true })
    fs.mkdirSync(iconsDir, { recursive: true })

    const seenClasses = new Set()
    for (const name of names) {
        const className = `${pascal(name)}Icon`
        if (seenClasses.has(className)) throw new Error(`Duplicate class ${className}`)
        seenClasses.add(className)
        const content = renderIcon(icons.get(name), aliases)
        fs.writeFileSync(path.join(iconsDir, `${snake(name)}.dart`), content)
    }

    for (const aliasList of aliases.values()) {
        for (const alias of aliasList) {
            const aliasClass = `${pascal(alias.name)}Icon`
            if (seenClasses.has(aliasClass)) {
                throw new Error(`Deprecated alias ${aliasClass} matches another icon`)
            }
            seenClasses.add(aliasClass)
        }
    }

    fs.writeFileSync(barrelPath, renderBarrel(names))
    const formatted = spawnSync('dart', ['format', iconsDir, barrelPath], {
        stdio: 'inherit',
    })
    if (formatted.status !== 0) {
        throw new Error('dart format failed')
    }
    console.log(`Generated ${names.length} icons in ${iconsDir}`)
}

main()
