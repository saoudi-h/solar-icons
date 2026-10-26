import { expect, test } from '@playwright/test'

test('the hero wheel shows 34 icons and loads the next category on demand', async ({ page }) => {
    const heroRequests: string[] = []
    page.on('request', request => {
        if (request.url().includes('/data/hero/')) heroRequests.push(request.url())
    })

    await page.goto('/')
    const icons = page.locator('[data-hero-rotation-wheel] svg.solar')
    await expect.poll(() => icons.count()).toBe(34)

    const category = page.getByRole('button', { name: /Change icon category/ })
    await expect(category).toHaveAttribute('aria-label', /Devices/)
    // The wheel is server rendered, so the first click can land before the
    // page is interactive.
    await expect(async () => {
        await category.click()
        await expect(category).not.toHaveAttribute('aria-label', /Devices/, { timeout: 500 })
    }).toPass()
    await expect.poll(() => icons.count()).toBe(34)

    // The first paint ships with the page, and nothing but the hero data
    // folder is requested for the other categories and styles.
    expect(heroRequests.length).toBeGreaterThan(0)
    expect(
        heroRequests.every(url => /\/data\/hero\/[\w-]+\/\w+\.[0-9a-f]{10}\.json$/.test(url))
    ).toBe(true)
})
