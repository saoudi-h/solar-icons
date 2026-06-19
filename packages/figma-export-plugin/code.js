// ─── Helpers ──────────────────────────────────────────────────────────────

/**
 * Convert a Figma icon-name segment to its kebab-case form. Matches the
 * `toKebabCase` helper in packages/core/src/utils.ts.
 *   "Arrow Down"          -> "arrow-down"
 *   "Wad Of Money"        -> "wad-of-money"
 *   "Arrows,Action"       -> "arrows-action"
 */
const toKebabCase = (str) =>
  str
    .replace(/([a-z])([A-Z])/g, '$1-$2')
    .replace(/[\s,]+/g, '-')
    .replace(/[^a-z0-9-]/gi, '')
    .toLowerCase()

/**
 * Build the on-disk path for an icon: `svgs/{category}/{style}/{icon}.svg`.
 * Parses the Figma component name (format: `Style / Category / IconName`).
 * Returns null if the name does not follow the convention.
 */
const iconPath = (name) => {
  const parts = name.split('/').map((p) => p.trim())
  if (parts.length < 3) return null
  const [style, category, ...rest] = parts
  const iconName = rest.join(' ').trim()
  if (!style || !category || !iconName) return null
  const categoryKebab = toKebabCase(category)
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
