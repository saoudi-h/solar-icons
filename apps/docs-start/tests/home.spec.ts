import { expect, test } from '@playwright/test'

test('the home page reads live stats once and caches them in the browser', async ({ page }) => {
    let statsRequests = 0
    await page.route('**/api/site-stats', async route => {
        statsRequests += 1
        await route.fulfill({
            status: 200,
            contentType: 'application/json',
            headers: { 'cache-control': 'no-store' },
            body: JSON.stringify({
                stars: 321,
                weeklyDownloads: 54_321,
                fetchedAt: new Date().toISOString(),
            }),
        })
    })

    const requests: string[] = []
    page.on('request', request => requests.push(request.url()))

    await page.goto('/')

    await expect(page.getByRole('heading', { level: 1 }).first()).toContainText('Solar Icons for')
    await expect(page.getByText('Weekly npm downloads')).toBeVisible()
    await expect(page.getByText('Total Icons')).toBeVisible()
    const downloadsCounter = page
        .getByText('Weekly npm downloads')
        .locator('..')
        .locator('number-flow-react')
    await expect.poll(() => downloadsCounter.ariaSnapshot()).toMatch(/5\s+4\s*,\s*3\s+2\s+1/)
    await expect(
        page.getByRole('link', { name: 'Solar Icons on GitHub, 321 stars' }).first()
    ).toBeVisible()

    await page.reload()
    await expect(
        page.getByRole('link', { name: 'Solar Icons on GitHub, 321 stars' }).first()
    ).toBeVisible()
    await expect.poll(() => downloadsCounter.ariaSnapshot()).toMatch(/5\s+4\s*,\s*3\s+2\s+1/)

    // The counter is shared by the header and the community section, and the
    // browser cache prevents a second request on the next page view.
    expect(statsRequests).toBe(1)
    expect(requests.filter(url => url.includes('api.github.com'))).toHaveLength(0)
    expect(requests.filter(url => url.includes('api.npmjs.org'))).toHaveLength(0)
})
