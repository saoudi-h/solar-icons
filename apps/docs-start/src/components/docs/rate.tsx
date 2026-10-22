'use client'

import { Rate } from '@/components/ui-blocks/rate'

/**
 * The guide feedback widget.
 *
 * The Next app stores the feedback in a GitHub discussion through a server
 * action. The static build has no server, so the widget renders with the
 * same markup and the submission stays unavailable until the feedback
 * endpoint of the feedback Worker is in place.
 */
export function DocsRate() {
    return (
        <Rate
            onRateAction={async () => {
                throw new Error('The feedback endpoint is not configured for this build.')
            }}
        />
    )
}
