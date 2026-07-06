import { type FileObject, printErrors, scanURLs, validateFiles } from 'next-validate-link'
import { source } from '../lib/source'

async function checkLinks() {
    const pages = source.getPages()
    const populated = await Promise.all(
        pages.map(async page => ({
            value: { slug: page.slugs },
            hashes: await getHeadings(page),
        }))
    )
    const scanned = await scanURLs({
        // pick a preset for your React framework
        preset: 'next',
        populate: {
            'docs/[[...slug]]': populated,
        },
    })

    printErrors(
        await validateFiles(await getFiles(), {
            scanned,
            // check `href` attributes in different MDX components
            markdown: {
                components: {
                    Card: { attributes: ['href'] },
                },
            },
            // check relative paths
            checkRelativePaths: 'as-url',
        }),
        true
    )
}

async function getHeadings(page: (typeof source)['$inferPage']): Promise<string[]> {
    const { data } = page
    if (data.toc && Array.isArray(data.toc) && data.toc.length > 0) {
        return data.toc.map((item: any) => item.url.slice(1))
    }
    // Fallback: extract heading IDs from raw MDX content
    if (typeof data.getText === 'function') {
        try {
            const raw = await data.getText('raw') as string
            if (raw) return extractHeadingIds(raw)
        } catch {
            // ignore
        }
    }
    return []
}

function extractHeadingIds(mdx: string): string[] {
    const ids: string[] = []
    const headingRegex = /^#{1,6}\s+(.+)$/gm
    let match: RegExpExecArray | null
    while ((match = headingRegex.exec(mdx)) !== null) {
        const text = match[1].trim()
        // Strip inline formatting (bold, italic, code, links)
        const plain = text.replace(/[*_`~]|\[([^\]]*)\]\([^)]+\)/g, '$1')
        // Generate GitHub-style heading ID
        const id = plain
            .toLowerCase()
            .replace(/[^\w\s-]/g, '')   // remove special chars
            .replace(/\s+/g, '-')        // spaces to hyphens
            .replace(/-+/g, '-')         // collapse hyphens
            .replace(/^-+|-+$/g, '')     // trim leading/trailing hyphens
        if (id) ids.push(id)
    }
    return ids
}

function getFiles() {
    const promises = source.getPages().map(
        async (page): Promise<FileObject> => ({
            path: page.absolutePath,
            content: await page.data.getText('raw'),
            url: page.url,
            data: page.data,
        })
    )

    return Promise.all(promises)
}

void checkLinks()
