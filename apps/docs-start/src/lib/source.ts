import { loader } from 'fumadocs-core/source'
import { defineCollections, defineDocs } from 'fumadocs-mdx/macro'
import { pageSchema } from 'fumadocs-core/source/schema'

import {
    type IconifyFrameworkIcon,
    iconifyIcons,
    renderIconify,
    renderRawIconify,
} from './resolve-icon-utils'
import { z } from 'zod'

/**
 * The collections read the MDX files of `apps/docs`, shared with the Next
 * app. `async: true` keeps the frontmatter in the client bundle and splits
 * every page body into its own chunk, loaded on demand.
 */
const docs = defineDocs({
    dir: '../docs/content/docs',
    docs: {
        async: true,
        postprocess: {
            includeProcessedMarkdown: true,
            extractLinkReferences: true,
            valueToExport: ['elementIds'],
        },
    },
})

const blog = defineCollections({
    type: 'doc',
    dir: '../docs/content/blog',
    async: true,
    schema: pageSchema.extend({
        author: z.string(),
        date: z.coerce.date(),
        tags: z.array(z.string()).optional(),
        image: z.string().optional(),
        featured: z.boolean().default(false),
        status: z.enum(['draft', 'published']).default('published'),
    }),
    postprocess: {
        includeProcessedMarkdown: true,
        extractLinkReferences: true,
    },
})

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
    source: blog.toFumadocsSource(),
})
