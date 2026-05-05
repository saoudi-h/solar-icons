import { defineConfig, defineDocs } from 'fumadocs-mdx/config'
import lastModified from 'fumadocs-mdx/plugins/last-modified'
import { z } from 'zod';
import { metaSchema, pageSchema } from 'fumadocs-core/source/schema';

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

export default defineConfig({
    plugins: [lastModified()],
});