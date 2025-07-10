import { docs } from '@/.source'
import { loader } from 'fumadocs-core/source'
import { SSR as icons } from '@solar-icons/react'
import { renderSolarIcon } from './solar'

// See https://fumadocs.vercel.app/docs/headless/source-api for more info
export const source = loader({
    // it assigns a URL to your pages
    baseUrl: '/docs',
    source: docs.toFumadocsSource(),
    icon(icon) {
        if (!icon) {
            // You may set a default icon
            return
        }

        if (icon in icons)
            return renderSolarIcon(icon, { className: 'size-8', weight: 'BoldDuotone' })
    },
})
