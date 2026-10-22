import { expect, test } from '@playwright/test'

test('the home page shows the statistics fetched at build time', async ({ page }) => {
    await page.goto('/')

    await expect(page.getByRole('heading', { name: /Solar Icons for/ })).toBeVisible()
    await expect(page.getByText('GitHub stars')).toBeVisible()
    await expect(page.getByText('Weekly downloads')).toBeVisible()

    // The values are baked into the HTML, the browser never asks for them.
    const requests: string[] = []
    page.on('request', request => requests.push(request.url()))
    await page.reload()
    expect(requests.filter(url => url.includes('api.github.com')).length).toBe(0)
    expect(requests.filter(url => url.includes('api.npmjs.org')).length).toBe(0)
})
