// ─── Renames (from issue saoudi-h/solar-icons#493) ─────────────────────────
// Keys and values are kebab-case canonical icon names. The plugin does a
// case-insensitive substring search of each `from` key inside the last
// segment of every component's name, so compound names (e.g.
// "Minimalistic Magnifer" -> "Minimalistic Magnifier") are caught too.
//
// Open issues / decisions deferred to the maintainer:
//   - `trellis`: issue also proposes `vanity-table`, `dressing-table`.
//   - `accumulator`: issue also proposes `battery`.
//   - `wad-of-money`: issue also proposes `banknotes-pack`.
//   - `bell-bing`: issue also proposes `bell-ringing`, `bell-active`.

const RENAMES = {
  'plain': 'plane',
  'plain-2': 'plane-2',
  'plain-3': 'plane-3',
  'file-favourite': 'file-favorite',
  'folder-favourite-star': 'folder-favorite-star',
  'folder-favourite-bookmark': 'folder-favorite-bookmark',
  'gallery-favourite': 'gallery-favorite',
  'map-point-favourite': 'map-point-favorite',
  'magic-stick': 'magic-wand',
  'magic-stick-2': 'magic-wand-2',
  'magic-stick-3': 'magic-wand-3',
  'weigher': 'scale',
  'sort-by-alphabet': 'sort-alphabetically',
  'wad-of-money': 'money-roll',
  'globus': 'globe',
  'trellis': 'vanity',
  'accumulator': 'car-battery',
  'bell-bing': 'bell-ring',
};

// ─── Helpers ──────────────────────────────────────────────────────────────

const escapeRegExp = (s) => s.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')

/**
 * Replace every case-insensitive occurrence of `from` in `text` with `to`,
 * preserving the casing of the original match:
 *   "Magnifer"  ->  "Magnifier"   (title case preserved)
 *   "MAGNIFER"  ->  "MAGNIFIER"   (uppercase preserved)
 *   "magnifer"  ->  "magnifier"   (lowercase preserved)
 *   "MiXeD"     ->  "NeWwOrD"     (best-effort: title case)
 */
const replaceCased = (text, from, to) => {
  const regex = new RegExp(escapeRegExp(from), 'gi')
  return text.replace(regex, (match) => {
    if (match === match.toUpperCase()) return to.toUpperCase()
    if (match[0] === match[0].toUpperCase()) {
      return to.charAt(0).toUpperCase() + to.slice(1).toLowerCase()
    }
    return to.toLowerCase()
  })
}

/**
 * Walk the document. For every COMPONENT whose last name segment contains
 * a `from` key from RENAMES (case-insensitive), build a proposed rename
 * where that substring is replaced with the corresponding `to` value.
 *
 * Deduplication: a given node is matched at most once (the first
 * `from`-key hit wins), so a component with two typos in its name is
 * renamed in one pass; the user can re-run the plugin for the second.
 *
 * Returns a list of { id, oldName, newName, matchedBy }.
 */
const findRenames = () => {
  const out = []
  const seen = new Set()
  const components = figma.root.findAllWithCriteria({ types: ['COMPONENT'] })
  for (const node of components) {
    if (seen.has(node.id)) continue
    const parts = node.name.split('/').map((p) => p.trim())
    if (parts.length < 1) continue
    const iconSegment = parts[parts.length - 1]
    const iconLower = iconSegment.toLowerCase()

    for (const [fromKebab, toKebab] of Object.entries(RENAMES)) {
      const fromLower = fromKebab.toLowerCase()
      if (!iconLower.includes(fromLower)) continue
      if (iconLower === toKebab.toLowerCase()) continue

      seen.add(node.id)
      const newIconSegment = replaceCased(iconSegment, fromKebab, toKebab)
      const newName = [...parts.slice(0, -1), newIconSegment].join(' / ')
      out.push({
        id: node.id,
        oldName: node.name,
        newName,
        matchedBy: fromKebab,
      })
      break
    }
  }
  return out
}

// ─── Main ─────────────────────────────────────────────────────────────────

figma.showUI(__html__, { width: 820, height: 620 })

const renames = findRenames()
figma.ui.postMessage({ type: 'preview', renames })

figma.ui.onmessage = async (msg) => {
  if (!msg || typeof msg.type !== 'string') return

  if (msg.type === 'apply') {
    const items = Array.isArray(msg.items) ? msg.items : []
    figma.ui.postMessage({ type: 'progress', done: 0, total: items.length })
    for (let i = 0; i < items.length; i++) {
      const r = items[i]
      const node = await figma.getNodeByIdAsync(r.id)
      if (!node) {
        figma.ui.postMessage({
          type: 'progress',
          done: i + 1,
          total: items.length,
          error: 'Component not found: ' + r.id,
        })
        continue
      }
      try {
        node.name = r.newName
      } catch (err) {
        const message = err && err.message ? err.message : String(err)
        figma.ui.postMessage({
          type: 'progress',
          done: i + 1,
          total: items.length,
          error: 'Rename failed for ' + r.id + ': ' + message,
        })
        continue
      }
      figma.ui.postMessage({ type: 'progress', done: i + 1, total: items.length })
    }
    figma.ui.postMessage({ type: 'done', total: items.length })
  } else if (msg.type === 'cancel') {
    figma.closePlugin()
  }
}
