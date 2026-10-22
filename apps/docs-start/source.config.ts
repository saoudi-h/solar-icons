import { remarkSteps } from 'fumadocs-core/mdx-plugins'
import { defineConfig } from 'fumadocs-mdx/config'
import lastModified from 'fumadocs-mdx/plugins/last-modified'

/**
 * Global options shared by every collection of this app. The collections
 * themselves are declared with the macro API in `src/lib/source.ts`.
 */
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
