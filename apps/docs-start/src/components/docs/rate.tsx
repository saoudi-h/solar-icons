'use client'

import { Rate } from '@/components/ui-blocks/rate'

/**
 * The guide feedback widget.
 *
 * The Next app stores the feedback in a GitHub discussion through a server
 * action. The static build has no server, so the feedback goes to the
 * endpoint of the Worker, which writes the same discussions. The endpoint
 * answers on the same address as the site, and its address can be changed
 * when the site and the Worker are served from two different places.
 */
export function DocsRate() {
    return (
        <Rate
            onRateAction={async (url, feedback) => {
                const endpoint = import.meta.env.VITE_FEEDBACK_ENDPOINT ?? '/api/feedback'
                if (!endpoint) {
                    throw new Error('The feedback endpoint is not configured for this build.')
                }

                const response = await fetch(endpoint, {
                    method: 'POST',
                    headers: { 'content-type': 'application/json' },
                    body: JSON.stringify({
                        url,
                        opinion: feedback.opinion,
                        message: feedback.message,
                    }),
                })
                if (!response.ok) {
                    throw new Error(`The feedback was refused (${response.status}).`)
                }

                const result = (await response.json()) as { githubUrl?: string }
                if (!result.githubUrl) {
                    throw new Error('The feedback endpoint returned no discussion.')
                }

                return { githubUrl: result.githubUrl }
            }}
        />
    )
}
