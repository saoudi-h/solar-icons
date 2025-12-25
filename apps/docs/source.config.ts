import { defineConfig, defineDocs, frontmatterSchema, metaSchema } from 'fumadocs-mdx/config'
import lastModified from 'fumadocs-mdx/plugins/last-modified'

// You can customise Zod schemas for frontmatter and `meta.json` here
// see https://fumadocs.vercel.app/docs/mdx/collections#define-docs
export const docs = defineDocs({
    docs: {
        schema: frontmatterSchema,
    },
    meta: {
        schema: metaSchema,
    },
})

export default defineConfig({
    plugins: [lastModified()],
});