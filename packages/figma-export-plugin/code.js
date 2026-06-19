// ─── Helpers ──────────────────────────────────────────────────────────────

/**
 * Convert a Figma icon-name segment to its kebab-case form. Matches the
 * `toKebabCase` helper in packages/core/src/utils.ts.
 *   "Arrow Down"          -> "arrow-down"
 *   "Wad Of Money"        -> "wad-of-money"
 */
const toKebabCase = (str) =>
  str
    .replace(/([a-z])([A-Z])/g, '$1-$2')
    .replace(/[\s,]+/g, '-')
    .replace(/[^a-z0-9-]/gi, '')
    .toLowerCase()

/**
 * Map a Figma style name to its canonical form (no spaces). The Figma
 * file has a mix of "LineDuotone" and "Line Duotone" (and "BoldDuotone"
 * vs "Bold Duotone"); this normalizes both to the canonical PascalCase
 * one-word form used by `packages/core/src/scripts/generate-svgs.ts`.
 */
const STYLE_CANONICAL = {
  'Bold': 'Bold',
  'Bold Duotone': 'BoldDuotone',
  'BoldDuotone': 'BoldDuotone',
  'Broken': 'Broken',
  'Linear': 'Linear',
  'Line Duotone': 'LineDuotone',
  'LineDuotone': 'LineDuotone',
  'Outline': 'Outline',
}

/**
 * Build the on-disk path for an icon: `svgs/{category}/{style}/{icon}.svg`.
 * Parses the Figma component name (format: `Style / Category / IconName`).
 * - Style: canonicalized via STYLE_CANONICAL.
 * - Category: when the Figma name carries several categories separated by
 *   `,` or `&` (e.g. "UI, Essentional"), the SHORTEST one is picked as
 *   the directory name. The others are kept as keywords in `metadata.json`
 *   by the downstream `generate-svgs.ts` script. This matches the existing
 *   `parseIconName` behaviour in packages/core/src/scripts/generate-svgs.ts
 *   which sorts category parts by length and picks the first. Picking the
 *   shortest keeps the package's category names stable across Figma edits.
 * - Icon name: kebab-cased.
 * Returns null if the name does not follow the convention.
 */
const iconPath = (name) => {
  const parts = name.split('/').map((p) => p.trim())
  if (parts.length < 3) return null
  const [rawStyle, categoriesRaw, ...rest] = parts
  const style = STYLE_CANONICAL[rawStyle] || rawStyle
  const categoryParts = categoriesRaw
    .split(/[,&]+/)
    .map((p) => p.trim())
    .filter((p) => p.length > 0)
  const firstCategory = (categoryParts.sort((a, b) => a.length - b.length)[0] || '').trim()
  const iconName = rest.join(' ').trim()
  if (!style || !firstCategory || !iconName) return null
  const categoryKebab = toKebabCase(firstCategory)
  const iconKebab = toKebabCase(iconName)
  if (!categoryKebab || !iconKebab) return null
  return `svgs/${categoryKebab}/${style}/${iconKebab}.svg`
}

// ─── Main ─────────────────────────────────────────────────────────────────

const BATCH_SIZE = 50

figma.showUI(__html__, { width: 480, height: 280 })

const run = async () => {
  const components = figma.root.findAllWithCriteria({ types: ['COMPONENT'] })
  const total = components.length
  figma.ui.postMessage({ type: 'start', total })

  let batch = []
  let exported = 0
  let failed = 0
  let skipped = 0

  for (const node of components) {
    const path = iconPath(node.name)
    if (path === null) {
      skipped++
      exported++
      continue
    }
    try {
      const bytes = await node.exportAsync({ format: 'SVG' })
      batch.push({ path, bytes })
    } catch (err) {
      failed++
    }
    exported++

    if (batch.length >= BATCH_SIZE) {
      figma.ui.postMessage({ type: 'batch', files: batch })
      batch = []
      figma.ui.postMessage({
        type: 'progress',
        done: exported,
        total,
        failed,
        skipped,
      })
    }
  }

  if (batch.length > 0) {
    figma.ui.postMessage({ type: 'batch', files: batch })
  }

  figma.ui.postMessage({
    type: 'done',
    done: exported,
    total,
    failed,
    skipped,
  })
}

run().catch((err) => {
  figma.ui.postMessage({
    type: 'error',
    message: err && err.message ? err.message : String(err),
  })
})
