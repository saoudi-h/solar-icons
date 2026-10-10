#!/usr/bin/env node
/**
 * Generates example/lib/icon_registry.dart from the committed lib/icons/*.dart:
 * a kebab-case name -> constructor tear-off map covering the whole catalogue.
 * Dev-only (example app); rerun after regenerating the icon widgets.
 */
import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'

const here = path.dirname(fileURLToPath(import.meta.url))
const packageRoot = path.resolve(here, '..')
const iconsDir = path.join(packageRoot, 'lib/icons')
const outPath = path.join(packageRoot, 'example/lib/icon_registry.dart')

const entries = []
for (const file of fs.readdirSync(iconsDir).sort()) {
    if (!file.endsWith('.dart')) continue
    const src = fs.readFileSync(path.join(iconsDir, file), 'utf8')
    const match = src.match(/class (\w+) extends StatelessWidget/)
    if (!match) throw new Error(`no widget class in ${file}`)
    entries.push({ kebab: file.slice(0, -'.dart'.length).replaceAll('_', '-'), cls: match[1] })
}

const map = entries.map(e => `  '${e.kebab}': ${e.cls}.new,`).join('\n')

const out = `// Generated from lib/icons by tool/generate_gallery_registry.mjs. Do not edit.
import 'package:flutter/widgets.dart';

import 'package:solar_icons/icons.dart';
import 'package:solar_icons/solar_icons.dart';

/// Every catalogue icon by kebab-case name.
typedef IconBuilder =
    StatelessWidget Function({
      Key? key,
      SolarIconStyle style,
      double? size,
      Color? color,
      double? strokeWidth,
      Color? secondaryColor,
      double? secondaryOpacity,
      String? semanticLabel,
      bool isolated,
    });

/// ${entries.length} icons.
const Map<String, IconBuilder> kSolarRegistry = {
${map}
};
`
fs.writeFileSync(outPath, out)
console.log(`Registry: ${entries.length} icons in ${outPath}`)
