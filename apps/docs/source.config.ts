import { remarkSteps } from 'fumadocs-core/mdx-plugins'
import { metaSchema, pageSchema } from 'fumadocs-core/source/schema'
import { defineCollections, defineConfig, defineDocs } from 'fumadocs-mdx/config'
import lastModified from 'fumadocs-mdx/plugins/last-modified'
import { z } from 'zod'

// You can customise Zod schemas for frontmatter and `meta.json` here
// see https://fumadocs.vercel.app/docs/mdx/collections#define-docs
export const docs = defineDocs({
    docs: {
        schema: pageSchema.extend({
            preview: z.string().optional(),
            index: z.boolean().default(false),
            /**
             * API routes only
             */
            method: z.string().optional(),
        }),
        postprocess: {
            includeProcessedMarkdown: true,
            extractLinkReferences: true,
            valueToExport: ['elementIds'],
        },
    },
    meta: {
        schema: metaSchema,
    },
})

export const blog = defineCollections({
    dir: 'content/blog',
    type: 'doc',
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

export default defineConfig({
    plugins: [lastModified()],
    mdxOptions: {
        remarkPlugins: [remarkSteps],
        remarkNpmOptions: {
            persist: {
                id: 'package-manager',
            },
        },
    },
})
