// ─── Renames ───────────────────────────────────────────────────────────────
// Keys and values are kebab-case canonical icon names. The plugin converts
// each component's last name segment to kebab-case and checks for inclusion
// of each `from` key, so compound names (e.g. "Minimalistic Magnifer" ->
// "Minimalistic Magnifier") are caught too.
//
// Two sources:
//
//   1. Issue saoudi-h/solar-icons#493 — the V3 source-of-truth fix.
//      Open decisions deferred to the maintainer:
//        - `trellis`: issue also proposes `vanity-table`, `dressing-table`.
//        - `accumulator`: issue also proposes `battery`.
//        - `wad-of-money`: issue also proposes `banknotes-pack`.
//        - `bell-bing`: issue also proposes `bell-ringing`, `bell-active`.
//
//   2. ICON_RENAMES in packages/core/src/utils.ts — the V2 backward-compat
//      shim. Most of these were already corrected in the Figma file in
//      earlier passes; they are listed here for completeness so the
//      plugin catches any future re-introduction. The "Horizonta" entry
//      from the original (with a `(?![l])` negative lookahead) is
//      represented as a plain `horizonta -> horizontal` here; the
//      "already renamed" check (iconKebab === toKebab) prevents a
//      "Horizontal" component from being re-flagged.

const RENAMES = {
  // From issue #493
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
  // From ICON_RENAMES (V2 backward-compat)
  'magnifer': 'magnifier',
  'infinity': 'infinite',
  'condicioner': 'conditioner',
  'siderbar': 'sidebar',
  'plaaylist': 'playlist',
  'pallete': 'palette',
  'tuneing': 'tuning',
  'horizonta': 'horizontal',
  'minimlistic': 'minimalistic',
  'spedometer': 'speedometer',
  'happly': 'happy',
  'clound': 'cloud',
  'recive': 'receive',
  // From V3 follow-up after the rename plugin was first deployed.
  'essentional': 'essential',
}

// ─── Helpers ──────────────────────────────────────────────────────────────

const escapeRegExp = (s) => s.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')

/**
 * Convert a Figma icon-name segment to its kebab-case form.
 * This is the canonical form for matching against the RENAMES keys.
 *   "Plain"                  -> "plain"
 *   "Plain 2"                -> "plain-2"
 *   "Minimalistic Magnifer"  -> "minimalistic-magnifer"
 *   "Wad Of Money"           -> "wad-of-money"
 *   "BellBing"               -> "bell-bing"
 *   "BELL_BING"              -> "bell-bing"
 */
const toKebab = (s) =>
  s
    .replace(/([a-z0-9])([A-Z])/g, '$1-$2')
    .replace(/[\s_]+/g, '-')
    .replace(/[^a-z0-9-]/gi, '')
    .toLowerCase()

/**
 * Convert a kebab-case string to the Figma form: each word capitalized,
 * separated by a single space. Matches the existing
 * `generate-svgs.ts` parseIconName convention.
 *   "plane-2"          -> "Plane 2"
 *   "money-roll"       -> "Money Roll"
 *   "minimalistic-magnifier" -> "Minimalistic Magnifier"
 */
const toFigmaName = (kebab) =>
  kebab
    .split('-')
    .filter((w) => w.length > 0)
    .map((w) => w.charAt(0).toUpperCase() + w.slice(1).toLowerCase())
    .join(' ')

/**
 * Walk the document. For every COMPONENT whose last name segment, in
 * kebab-case, contains a `from` key from RENAMES as a substring, build
 * a proposed rename. Both the segment and the from-key are normalized to
 * kebab-case for matching, so hyphen/space/underscore variations are
 * handled. Compound names (e.g. "Minimalistic Magnifer") are caught
 * because the kebab form "minimalistic-magnifer" includes "magnifer".
 *
 * The rename is computed in the kebab form (replacing `from` with `to`
 * via plain string replace) and then converted back to the Figma form.
 * This loses the original case (e.g. "BELL BING" -> "Bell Ring"), but
 * the existing file uses title case for icon names so this is the
 * correct output. Components already in the target form are skipped.
 *
 * Deduplication: a given node is matched at most once (the first
 * `from`-key hit wins).
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
    if (parts.length < 3) continue
    const iconSegment = parts[parts.length - 1]
    const iconKebab = toKebab(iconSegment)
    if (!iconKebab) continue

    for (const [fromKebab, toKebab] of Object.entries(RENAMES)) {
      if (!iconKebab.includes(fromKebab)) continue
      if (iconKebab === toKebab) continue

      seen.add(node.id)
      const newIconKebab = iconKebab.replace(
        new RegExp(escapeRegExp(fromKebab), 'g'),
        toKebab
      )
      const newIconSegment = toFigmaName(newIconKebab)
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
