/**
 * Human-reviewed reverse coverage refinements.
 *
 * The forward map stays binary: every Solar icon is either MATCH or NO MATCH
 * against its Lucide reference. Reverse coverage needs one extra distinction:
 * a Lucide icon may have a useful Solar fallback without having a precise
 * Solar equivalent. Keep those fallbacks explicit and auditable instead of
 * inferring them from names or from a many-to-one collision.
 */

export interface ReverseCoverageOverride {
    /** Preferred Solar replacement when a precise semantic match exists. */
    preferredSolarId?: string
    /** Reverse-only exact candidates found during the second audit. */
    exactSolarIds?: string[]
    /** Usable, but less precise, replacements for contexts that tolerate loss of state. */
    fallbackSolarIds: string[]
    note: string
}

/**
 * Deliberate reverse-direction judgements. Add entries only after visual and
 * semantic inspection; this is not a lexical fallback table.
 */
export const REVERSE_COVERAGE_OVERRIDES: Record<string, ReverseCoverageOverride> = {
    // Second-pass recalls: the Solar icon is the same object/action even
    // though the Lucide catalogue uses a different modifier or suffix.
    L0289: {
        exactSolarIds: ['S0154'],
        fallbackSolarIds: [],
        note: 'Solar calendar-add preserves the calendar-plus action; Lucide calendar-plus-2 is a catalogue variant.',
    },
    L1033: {
        exactSolarIds: ['S0623'],
        fallbackSolarIds: [],
        note: 'Solar map-point-add preserves the map-pin-plus action represented by Lucide map-pin-plus-inside.',
    },
    L1407: {
        exactSolarIds: ['S0910'],
        fallbackSolarIds: [],
        note: 'Solar settings preserves the generic settings control represented by Lucide settings-2.',
    },
    L1745: {
        exactSolarIds: ['S0925'],
        fallbackSolarIds: [],
        note: 'Solar shield-user preserves the user-shield concept represented by Lucide user-shield.',
    },
    L0477: {
        fallbackSolarIds: ['S0273'],
        note: 'Solar cloud-sun-2 is a fallback for Lucide cloud-sun-rain when the rain state is not used by the consuming UI.',
    },
    L0751: {
        fallbackSolarIds: ['S0426'],
        note: 'Solar folder-open is a fallback for Lucide folder-open-dot when the dot marker is contextual.',
    },
    L0740: {
        fallbackSolarIds: ['S0419'],
        note: 'Solar folder is a fallback for Lucide folder-dot when the dot marker is contextual.',
    },
    L0777: {
        fallbackSolarIds: ['S0442'],
        note: 'Solar gallery is a fallback for Lucide gallery-horizontal-end when the edge marker is contextual.',
    },
    L0778: {
        fallbackSolarIds: ['S0442'],
        note: 'Solar gallery is a fallback for Lucide gallery-thumbnails when the thumbnail layout is contextual.',
    },
    L0780: {
        fallbackSolarIds: ['S0442'],
        note: 'Solar gallery is a fallback for Lucide gallery-vertical-end when the edge marker is contextual.',
    },
    L0979: {
        fallbackSolarIds: ['S0403'],
        note: 'Solar filter is a fallback for Lucide list-filter-plus when the add modifier is contextual.',
    },
    // Lucide exposes three luminosity states. Solar has two sun drawings:
    // sun-2 is the closest visual/semantic replacement for generic sun,
    // while sun is the safer lower-intensity fallback for medium/dim contexts.
    L1592: {
        preferredSolarId: 'S1066',
        fallbackSolarIds: ['S1065'],
        note: 'Solar sun-2 is the closest replacement for Lucide sun. Solar sun remains a usable lower-intensity fallback, but should not be treated as the preferred mapping.',
    },
    L1593: {
        fallbackSolarIds: ['S1065'],
        note: 'Solar has no dedicated dim state. Solar sun is a context-dependent fallback for simple theme toggles, not for a UI that communicates three luminosity levels.',
    },
    L1594: {
        fallbackSolarIds: ['S1065'],
        note: 'Solar sun is the closest lower-intensity fallback for Lucide sun-medium; no Solar icon preserves an explicit medium state.',
    },
}

/**
 * A small conflict guard for the previous reverse packet. These rows were
 * marked equivalent by lexical/visual reverse review, but the forward audit
 * proves that Lucide's control is text alignment while Solar's control aligns
 * objects. They must remain gaps until a dedicated visual adjudication resolves
 * the directional ambiguity.
 */
export const REVERSE_REVIEW_NO_MATCH_IDS = new Set([
    'L0016',
    'L0030',
    'L0031',
    // The reverse packet grouped `exit`, `closet-2`, and `garage` under
    // `door-open`; only `exit` is even directionally related, and it already
    // has a more precise `log-out` forward reference. Keep this collision out
    // of exact reverse coverage until a dedicated visual decision selects one.
    'L0577',
])

// Families where Solar has the base object but not Lucide's additional state.
// These are fallbacks only: the modifier can be meaningful in a specialised UI.
for (const lucideId of [
    'L0439', 'L0440', 'L0441', 'L0442', 'L0443', 'L0444', 'L0445', 'L0446', 'L0447',
    'L0448', 'L0449', 'L0450', 'L0451', 'L0452', 'L0453', 'L0454', 'L0455', 'L0456',
    'L0457', 'L0458',
]) {
    REVERSE_COVERAGE_OVERRIDES[lucideId] ??= {
        fallbackSolarIds: ['S0252'],
        note: 'Solar clock-circle is a fallback when Lucide’s clock position or modifier is contextual; it is not a replacement for a UI that communicates that exact state.',
    }
}

for (const lucideId of [
    'L0276', 'L0277', 'L0278', 'L0279', 'L0280', 'L0281', 'L0283', 'L0284',
    'L0285', 'L0286', 'L0287', 'L0290', 'L0292', 'L0293', 'L0294',
]) {
    REVERSE_COVERAGE_OVERRIDES[lucideId] ??= {
        fallbackSolarIds: ['S0153'],
        note: 'Solar calendar is a fallback when Lucide’s calendar modifier is contextual; use a dedicated Solar state when the action or status is part of the UI meaning.',
    }
}
