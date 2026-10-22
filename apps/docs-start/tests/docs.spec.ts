import { expect, test } from '@playwright/test'

test('a docs page renders its content, its table of contents and its sidebar', async ({ page }) => {
    await page.goto('/docs/v2/packages/react')

    await expect(page.getByRole('heading', { name: 'React', level: 1 })).toBeVisible()
    await expect(page.getByText('Import patterns', { exact: true }).first()).toBeVisible()
    await expect(page.getByRole('button', { name: 'Copy Markdown' })).toBeVisible()
    await expect(page.locator('#nd-sidebar')).toBeVisible()

    const canonical = await page.locator('link[rel="canonical"]').getAttribute('href')
    expect(canonical).toBe('https://solar-icons.dev/docs/v2/packages/react')
})

test('the v1 documentation keeps its banner and the link to v2', async ({ page }) => {
    await page.goto('/docs/v1/getting-started/installation')

    await expect(page.getByText('You are viewing the v1 documentation')).toBeVisible()
    await expect(page.getByRole('link', { name: 'Explore v2' })).toBeVisible()
})

test('the search dialog finds a page from the static index', async ({ page }) => {
    await page.goto('/docs/v2')

    await page.getByRole('button', { name: /Search Ctrl K/ }).click()
    await page.getByRole('combobox', { name: 'Search' }).fill('React Native')

    const result = page.getByRole('option', { name: /Docs V2 Packages React Native/ }).first()
    await expect(result).toBeVisible()
    await result.click()
    await expect(page).toHaveURL(/\/docs\/v2\/packages\/react-native$/)
})

test('the static files are served with the expected content type', async ({ request }) => {
    const markdown = await request.get('/docs/v2/packages/react.mdx')
    expect(markdown.status()).toBe(200)
    expect(markdown.headers()['content-type']).toContain('text/markdown')
    expect(await markdown.text()).toContain('# React (/docs/v2/packages/react)')

    const llms = await request.get('/llms.txt')
    expect(llms.status()).toBe(200)
    expect(llms.headers()['content-type']).toContain('text/plain')
    expect(await llms.text()).toContain('/docs/v2/packages/react')

    const sitemap = await request.get('/sitemap.xml')
    expect(sitemap.status()).toBe(200)
    expect(sitemap.headers()['content-type']).toContain('application/xml')
    expect(await sitemap.text()).toContain('https://solar-icons.dev/docs/v2/packages/react')

    const search = await request.get('/api/search')
    expect(search.status()).toBe(200)
    expect(search.headers()['content-type']).toContain('application/json')
    expect(await search.text()).toContain('page_id')

    const rss = await request.get('/blog/rss.xml')
    expect(rss.status()).toBe(200)
    expect(rss.headers()['content-type']).toContain('application/rss+xml')
})

test('the docs index redirects to the v2 documentation', async ({ request }) => {
    const response = await request.get('/docs', { maxRedirects: 0 })

    expect(response.status()).toBe(307)
    expect(response.headers()['location']).toBe('/docs/v2')
})

test('the blog lists its articles and opens one', async ({ page }) => {
    await page.goto('/blog')

    await expect(page.getByRole('heading', { name: 'Blog', level: 1 })).toBeVisible()
    await page
        .getByRole('link', { name: /How to Build a Consistent Icon System/ })
        .first()
        .click()

    await expect(
        page.getByRole('heading', { name: /How to Build a Consistent Icon System/ })
    ).toBeVisible()
})
