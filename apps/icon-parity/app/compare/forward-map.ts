import {
    FORWARD_REFERENCE_OVERRIDES,
    SEMANTIC_RELATED_MATCH_IDS,
    SEMANTIC_VARIANT_NO_MATCH_IDS,
} from './forward-semantic-promotions'
import sheet01 from './lucide-production/sheet-01.json'
import sheet02 from './lucide-production/sheet-02.json'
import sheet03 from './lucide-production/sheet-03.json'
import sheet04 from './lucide-production/sheet-04.json'
import sheet05 from './lucide-production/sheet-05.json'
import sheet06 from './lucide-production/sheet-06.json'
import sheet07 from './lucide-production/sheet-07.json'
import sheet08 from './lucide-production/sheet-08.json'
import sheet09 from './lucide-production/sheet-09.json'
import sheet10 from './lucide-production/sheet-10.json'
import sheet11 from './lucide-production/sheet-11.json'
import sheet12 from './lucide-production/sheet-12.json'
import sheet13 from './lucide-production/sheet-13.json'

export type ForwardDecision = 'match' | 'no-match'

export interface ForwardMapEntry {
    solar: string
    solarId: string
    reference: string | null
    referenceId: string | null
    decision: ForwardDecision
    auditDecision: 'equivalent' | 'variant' | 'related' | 'no-match'
    note: string
}

const sheets = [
    sheet01,
    sheet02,
    sheet03,
    sheet04,
    sheet05,
    sheet06,
    sheet07,
    sheet08,
    sheet09,
    sheet10,
    sheet11,
    sheet12,
    sheet13,
] as const

export const FORWARD_MAP: ForwardMapEntry[] = sheets.flatMap(sheet =>
    sheet.entries.map(entry => {
        const override = FORWARD_REFERENCE_OVERRIDES[entry.solarId]
        return {
            solar: entry.solar,
            solarId: entry.solarId,
            reference: override?.reference ?? entry.reference,
            referenceId: override?.referenceId ?? entry.referenceId,
            decision:
                override ||
                entry.decision === 'equivalent' ||
                (entry.decision === 'variant' &&
                    !SEMANTIC_VARIANT_NO_MATCH_IDS.has(entry.solarId)) ||
                SEMANTIC_RELATED_MATCH_IDS.has(entry.solarId)
                    ? 'match'
                    : 'no-match',
            auditDecision: entry.decision as ForwardMapEntry['auditDecision'],
            note: override?.note ?? entry.note,
        }
    })
)

export const FORWARD_BY_SOLAR = new Map(FORWARD_MAP.map(entry => [entry.solar, entry]))

export const FORWARD_COUNTS = FORWARD_MAP.reduce(
    (counts, entry) => {
        counts[entry.decision] += 1
        return counts
    },
    { match: 0, 'no-match': 0 } as Record<ForwardDecision, number>
)
