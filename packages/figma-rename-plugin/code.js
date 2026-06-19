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
  // "horizontall" (the 2-l typo) MUST come before "horizonta" in the map.
  // The kebab form "horizontall" contains the substring "horizonta", so
  // if "horizonta" matched first it would replace the 9-char prefix with
  // the 10-char "horizontal" and leave the trailing l in place, producing
  // "horizontalll" (3 l's). With "horizontall" listed first the longer
  // match wins, the 11-char typo is replaced by the 10-char correct
  // form, and the extra l is removed.
  'horizontall': 'horizontal',
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
 * Apply the rename map to a single text segment (a category name or an
 * icon name). Returns { newKebab, via } or null if no rename matched.
 * The match is kebab-cased substring; the replace is done in the kebab
 * form and the caller is responsible for converting back to Figma form
 * with the right separator (comma for category multi-names, space for
 * the icon name).
 */
const applyRenameToText = (text) => {
  const textKebab = toKebab(text)
  if (!textKebab) return null
  for (const [fromKebab, toKebab] of Object.entries(RENAMES)) {
    if (!textKebab.includes(fromKebab)) continue
    if (textKebab === toKebab) continue
    const newKebab = textKebab.replace(
      new RegExp(escapeRegExp(fromKebab), 'g'),
      toKebab
    )
    if (newKebab === textKebab) continue
    return { newKebab, via: fromKebab }
  }
  return null
}

/**
 * Apply renames to a category segment. Categories can be multi-name
 * (e.g. "Messages, Conversation") separated by `,`. Each name is
 * processed independently so the original casing of unaffected names
 * is preserved (e.g. "UI, Essentional" -> "UI, Essential", not
 * "Ui, Essential" or "UI, essential").
 */
const applyRenameToCategorySegment = (segment) => {
  const names = segment.split(/,\s*/)
  const vias = []
  const newNames = names.map((name) => {
    const result = applyRenameToText(name)
    if (result) {
      vias.push(result.via)
      return toFigmaName(result.newKebab)
    }
    return name
  })
  if (vias.length === 0) return null
  return { newSegment: newNames.join(', '), vias }
}

/**
 * Apply renames to the icon segment (the last part of the name, with
 * any middle parts joined by a space).
 */
const applyRenameToIconSegment = (segment) => {
  const result = applyRenameToText(segment)
  if (!result) return null
  return { newSegment: toFigmaName(result.newKebab), via: result.via }
}

/**
 * Walk the document. For every COMPONENT whose category segment (2nd
 * part) or icon segment (last part) contains a rename key, build a
 * proposed rename. The two segments are processed independently: a
 * component with typos in both the category and the icon name gets
 * both fixed in one pass.
 *
 * Both segments are normalized to kebab-case for matching, so
 * hyphen/space/underscore variations are handled. Compound names
 * (e.g. "Minimalistic Magnifer" in the icon segment) are caught
 * because the kebab form includes the `from` key as a substring.
 *
 * Deduplication: a given node is matched at most once.
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

    const newParts = parts.slice()
    const allVias = []

    const catResult = applyRenameToCategorySegment(parts[1])
    if (catResult) {
      newParts[1] = catResult.newSegment
      for (const v of catResult.vias) allVias.push(v)
    }

    const iconSegment = parts.slice(2).join(' ').trim()
    if (iconSegment) {
      const iconResult = applyRenameToIconSegment(iconSegment)
      if (iconResult) {
        newParts.splice(2, parts.length - 2, iconResult.newSegment)
        allVias.push(iconResult.via)
      }
    }

    if (allVias.length > 0) {
      seen.add(node.id)
      out.push({
        id: node.id,
        oldName: node.name,
        newName: newParts.join(' / '),
        matchedBy: allVias.join(', '),
      })
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
