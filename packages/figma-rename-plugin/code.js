// ─── Renames (from issue saoudi-h/solar-icons#493) ─────────────────────────
// Keys and values are kebab-case canonical icon names. The plugin converts
// each side to the Figma form (PascalCase words separated by spaces) when
// matching components and building the proposed new name.
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

/**
 * Convert a Figma icon-name segment to its kebab-case form for matching
 * against the rename map.
 *   "Plain"                  -> "plain"
 *   "Plain 2"                -> "plain-2"
 *   "Minimalistic Magnifer"  -> "minimalistic-magnifer"
 *   "Wad Of Money"           -> "wad-of-money"
 */
const toKebab = (s) =>
  s
    .replace(/([a-z0-9])([A-Z])/g, '$1-$2')
    .replace(/[\s_]+/g, '-')
    .toLowerCase();

/**
 * Convert a kebab-case string to the Figma form: each word capitalized,
 * separated by a single space. Matches the existing
 * `generate-svgs.ts` parseIconName convention.
 *   "plane-2"          -> "Plane 2"
 *   "money-roll"       -> "Money Roll"
 *   "car-battery"      -> "Car Battery"
 */
const toFigmaName = (kebab) =>
  kebab
    .split('-')
    .map((w) => (w.length === 0 ? '' : w.charAt(0).toUpperCase() + w.slice(1).toLowerCase()))
    .filter((w) => w.length > 0)
    .join(' ');

/**
 * Walk the document, find every COMPONENT whose name follows the
 * `Style / Category / IconName` convention and whose IconName segment, in
 * kebab-case, matches a `from` key in RENAMES.
 *
 * Returns a list of { id, oldName, newName } ready for the preview UI and
 * the apply step.
 */
const findRenames = () => {
  const out = [];
  const components = figma.root.findAllWithCriteria({ types: ['COMPONENT'] });
  for (const node of components) {
    const parts = node.name.split('/').map((p) => p.trim());
    if (parts.length < 3) continue;
    const iconSegment = parts[parts.length - 1];
    const iconKebab = toKebab(iconSegment);
    const newKebab = RENAMES[iconKebab];
    if (newKebab === undefined) continue;
    const newIconSegment = toFigmaName(newKebab);
    const newName = [...parts.slice(0, -1), newIconSegment].join(' / ');
    out.push({ id: node.id, oldName: node.name, newName });
  }
  return out;
};

// ─── Main ─────────────────────────────────────────────────────────────────

figma.showUI(__html__, { width: 560, height: 520 });

const renames = findRenames();
figma.ui.postMessage({ type: 'preview', renames });

figma.ui.onmessage = async (msg) => {
  if (!msg || typeof msg.type !== 'string') return;

  if (msg.type === 'apply') {
    figma.ui.postMessage({ type: 'progress', done: 0, total: renames.length });
    for (let i = 0; i < renames.length; i++) {
      const r = renames[i];
      const node = await figma.getNodeByIdAsync(r.id);
      if (!node) {
        figma.ui.postMessage({
          type: 'progress',
          done: i + 1,
          total: renames.length,
          error: 'Component not found: ' + r.id,
        });
        continue;
      }
      try {
        node.name = r.newName;
      } catch (err) {
        const message = err && err.message ? err.message : String(err);
        figma.ui.postMessage({
          type: 'progress',
          done: i + 1,
          total: renames.length,
          error: 'Rename failed for ' + r.id + ': ' + message,
        });
        continue;
      }
      figma.ui.postMessage({ type: 'progress', done: i + 1, total: renames.length });
    }
    figma.ui.postMessage({ type: 'done', total: renames.length });
  } else if (msg.type === 'cancel') {
    figma.closePlugin();
  }
};
