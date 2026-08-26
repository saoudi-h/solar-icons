import { loader } from 'fumadocs-core/source'
import { toFumadocsSource } from 'fumadocs-mdx/runtime/server'
import { blog, docs } from 'fumadocs-mdx:collections/server'

import type { IconifyFrameworkIcon } from './resolveIconUtils'
import { iconifyIcons, renderIconify, renderSolarIcon } from './resolveIconUtils'

export const source = loader({
    baseUrl: '/docs',
    source: docs.toFumadocsSource(),
    icon(icon) {
        if (icon) {
            if (iconifyIcons.includes(icon)) {
                return renderIconify(icon as IconifyFrameworkIcon)
            }

            return renderSolarIcon(icon, { className: 'size-8', weight: 'BoldDuotone' })
        }

        return renderSolarIcon('AltArrowRight', { className: 'size-8', weight: 'BoldDuotone' })
    },
})

export const blogSource = loader({
    baseUrl: '/blog',
    source: toFumadocsSource(blog, []),
})
