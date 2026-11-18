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

test('the Solid package card defaults to Solid 2 and switches cleanly to Solid 1', async ({
    page,
}) => {
    await page.goto('/')

    const packagesSection = page.locator('#available-packages')
    const versionsGroup = packagesSection.getByRole('group', { name: 'Solid package versions' })
    const solidCard = packagesSection.locator('[data-slot="card"]', {
        has: page.getByRole('group', { name: 'Solid package versions' }),
    })

    const solid2Button = versionsGroup.getByRole('button', { name: 'Solid 2', exact: true })
    const solid1Button = versionsGroup.getByRole('button', { name: 'Solid 1', exact: true })

    await expect(solid2Button).toHaveAttribute('aria-pressed', 'true')
    await expect(solid1Button).toHaveAttribute('aria-pressed', 'false')
    await expect(solidCard).toContainText('@solar-icons/solid-v2')
    await expect(solidCard).toContainText('new')
    await expect(solidCard.getByRole('group', { name: 'Solid (Solid 2) links' })).toBeVisible()

    // Wait for hydration before asserting click state on the prerendered card toggle.
    await expect(async () => {
        await solid1Button.click()
        await expect(solid1Button).toHaveAttribute('aria-pressed', 'true', { timeout: 1_000 })
    }).toPass({ timeout: 15_000 })
    await expect(solid2Button).toHaveAttribute('aria-pressed', 'false')
    await expect(solidCard).toContainText('@solar-icons/solid')
    await expect(solidCard).not.toContainText('@solar-icons/solid-v2')
    await expect(solidCard.getByRole('group', { name: 'Solid (Solid 1) links' })).toBeVisible()

    await expect(page.getByRole('link', { name: 'Solid 2' }).first()).toHaveAttribute(
        'href',
        '/docs/v2/packages/solid'
    )
    await expect(page.getByRole('link', { name: 'Solid 1' }).first()).toHaveAttribute(
        'href',
        '/docs/v2/packages/solid'
    )
})
