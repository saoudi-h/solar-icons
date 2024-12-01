import { loader } from 'fumadocs-core/source'
import { createMDXSource } from 'fumadocs-mdx'
import { meta, docs } from '@/.source'

export const source: ReturnType<typeof loader> = loader({
    baseUrl: '/docs',
    source: createMDXSource(docs, meta),
})
