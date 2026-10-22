import type { source as docsSource } from '~/lib/source'

type Page = ReturnType<typeof docsSource.getPages>[number]

/**
 * Markdown version of a page. The current app serves it from
 * `/docs/<path>.mdx` through a rewrite; here it is prerendered to the exact
 * same URLs as static files.
 */
export async function getLLMText(page: Page) {
    const processed = await page.data.getText('processed')

    return `# ${page.data.title} (${page.url})

${processed}`
}
