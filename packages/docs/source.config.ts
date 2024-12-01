import { defineDocs, defineConfig } from 'fumadocs-mdx/config'

export const { docs, meta }: { docs: any; meta: any } = defineDocs({
    dir: 'content/docs',
})

export default defineConfig()
