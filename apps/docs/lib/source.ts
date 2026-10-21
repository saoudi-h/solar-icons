import { loader } from 'fumadocs-core/source'
import { toFumadocsSource } from 'fumadocs-mdx/runtime/server'
import { blog, docs } from 'fumadocs-mdx:collections/server'

import type { IconifyFrameworkIcon } from './resolveIconUtils'
import { iconifyIcons, renderIconify, renderRawIconify } from './resolveIconUtils'

export const source = loader({
    baseUrl: '/docs',
    source: docs.toFumadocsSource(),
    icon(icon) {
        if (icon) {
            if (iconifyIcons.includes(icon)) {
                return renderIconify(icon as IconifyFrameworkIcon)
            }

            return renderRawIconify(icon, { className: 'size-8' })
        }

        return renderRawIconify('solar:alt-arrow-right-bold-duotone', { className: 'size-8' })
    },
})

export const blogSource = loader({
    baseUrl: '/blog',
    source: toFumadocsSource(blog, []),
})
