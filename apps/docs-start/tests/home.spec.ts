import { expect, test } from '@playwright/test'

test('the home page shows the statistics fetched at build time', async ({ page }) => {
    await page.goto('/')

    await expect(page.getByRole('heading', { level: 1 }).first()).toContainText('Solar Icons for')
    await expect(page.getByText('Weekly Downloads')).toBeVisible()
    await expect(page.getByText('Total Icons')).toBeVisible()
    await expect(page.getByRole('link', { name: /Solar Icons on GitHub/ })).toBeVisible()

    // The values are baked into the HTML, the browser never asks for them.
    const requests: string[] = []
    page.on('request', request => requests.push(request.url()))
    await page.reload()
    expect(requests.filter(url => url.includes('api.github.com')).length).toBe(0)
    expect(requests.filter(url => url.includes('api.npmjs.org')).length).toBe(0)
})
