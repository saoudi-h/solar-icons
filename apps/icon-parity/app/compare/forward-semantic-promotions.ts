/**
 * Semantic binary adjudication for the Solar -> Lucide forward map.
 *
 * The production sheets keep their original audit labels. `variant` means
 * that the previous reviewer already found the same symbol, but rejected it
 * because the drawing was not close enough. In the forward binary map those
 * rows are MATCH unless their primary object/state is listed in the explicit
 * semantic exclusion set below: a replacement needs to preserve meaning, not
 * the exact outline.
 *
 * `related` rows are promoted only when the primary symbol remains usable as
 * a replacement. The list is explicit so every exception can be audited and
 * challenged without changing the historical production sheets.
 */

export const SEMANTIC_RELATED_MATCH_IDS = new Set([
    // Same primary symbol despite silhouette, enclosure, or count changes.
    'S0059',
    'S0065', 'S0066', 'S0067', 'S0068', 'S0069',
    'S0103', 'S0138', 'S0142', 'S0143',
    'S0163', 'S0164', 'S0197', 'S0203',
    'S0253', 'S0281', 'S0285', 'S0289', 'S0321', 'S0324', 'S0325', 'S0328',
    'S0331', 'S0354', 'S0364', 'S0365', 'S0369', 'S0370', 'S0371',
    'S0373', 'S0374', 'S0376', 'S0378', 'S0380', 'S0388', 'S0396',
    // Sheets 05–08 are deliberately left for a separate second-pass review.
    'S0801', 'S0806', 'S0807', 'S0808',
    'S0820', 'S0830', 'S0831', 'S0832', 'S0833', 'S0834', 'S0835', 'S0837', 'S0839',
    'S0862', 'S0869', 'S0870', 'S0871', 'S0872', 'S0879', 'S0880', 'S0881', 'S0884', 'S0885',
    'S0893', 'S0902', 'S0939', 'S0991',
    'S1011', 'S1012', 'S1013', 'S1014', 'S1015', 'S1016', 'S1023', 'S1024',
    'S1034', 'S1035', 'S1037', 'S1038', 'S1039', 'S1040', 'S1051', 'S1052', 'S1053',
    'S1055', 'S1081', 'S1120', 'S1121', 'S1161', 'S1166', 'S1167', 'S1186',
    'S1199', 'S1200', 'S1210', 'S1211', 'S1214', 'S1233',
])

/** Variant labels that still change the primary object or semantic state. */
export const SEMANTIC_VARIANT_NO_MATCH_IDS = new Set([
    'S0114', // bodysuit/torso garment is not interchangeable with a shirt.
    'S0312', // first-place cup loses the essential first-place qualifier.
    'S0394', // corrupted file is not the same state as a warning file.
    'S0906', // server-plus-route is not a plain server.
    'S1101', // text selection includes a text target; a bare selection box is different.
    'S1106', // crossed/underlined text state is not plain underline.
])

/**
 * References recovered during the candidate-recall pass. These rows had no
 * production reference, so they cannot be represented by a promotion set
 * alone. The direction is intentionally Solar → Lucide: a Lucide brand mark
 * may match a Solar generic symbol when the rendered symbol is the same;
 * the reverse direction will apply a stricter brand-identity rule.
 */
export const FORWARD_REFERENCE_OVERRIDES: Record<string, { reference: string; referenceId: string; note: string }> = {
    S0081: { reference: 'dribbble', referenceId: 'L0582', note: 'Same basketball symbol; Lucide names the brand mark, but the rendered Solar symbol is interchangeable in this direction.' },
    S0042: { reference: 'archive', referenceId: 'L0056', note: 'Minimal archive keeps the same archive object; the minimal enclosure is stylistic.' },
    S0079: { reference: 'banknote', referenceId: 'L0139', note: 'Same banknote object; the internal bill layout is a drawing variant.' },
    S0111: { reference: 'bluetooth', referenceId: 'L0194', note: 'Same Bluetooth symbol; the circular enclosure is a Solar style variant.' },
    S0112: { reference: 'bluetooth', referenceId: 'L0194', note: 'Same Bluetooth symbol; the square enclosure is a Solar style variant.' },
    S0113: { reference: 'bluetooth-searching', referenceId: 'L0197', note: 'Same Bluetooth searching/wave state; the radio-wave treatment differs.' },
    S0118: { reference: 'bolt', referenceId: 'L0199', note: 'Same lightning-bolt symbol; the circular enclosure is decorative.' },
    S0120: { reference: 'bomb', referenceId: 'L0200', note: 'Same bomb object; the emoji treatment is stylistic.' },
    S0133: { reference: 'bookmark', referenceId: 'L0229', note: 'Same bookmark object; the circular enclosure is decorative.' },
    S0134: { reference: 'bookmark', referenceId: 'L0229', note: 'Same opened bookmark object; Lucide uses the standard bookmark silhouette.' },
    S0135: { reference: 'bookmark', referenceId: 'L0229', note: 'Same bookmark object; the square enclosure is decorative.' },
    S0136: { reference: 'bookmark', referenceId: 'L0229', note: 'Same bookmark object; the minimal square treatment is stylistic.' },
    S0504: { reference: 'signal-high', referenceId: 'L1445', note: 'Same high-signal/quality indicator; Lucide uses the canonical signal-strength drawing.' },
    S0159: { reference: 'phone-missed', referenceId: 'L1232', note: 'Same cancelled/missed phone-call state; the handset and X treatment differ.' },
    S0160: { reference: 'phone-missed', referenceId: 'L1232', note: 'Same cancelled/missed phone-call state; the rounded handset treatment differs.' },
    S0170: { reference: 'switch-camera', referenceId: 'L1602', note: 'Same camera-switch/rotate action; Lucide uses the canonical switch-camera glyph.' },
    S0179: { reference: 'wallet-cards', referenceId: 'L1776', note: 'Same cardholder/wallet-with-card object; Lucide names the wallet-card construction.' },
}
