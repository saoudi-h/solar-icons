import { expect, test } from '@playwright/test'

import { projectLinks } from '../src/lib/project-links'

for (const width of [1440, 390]) {
    test(`Figma resources and icon requests are reachable at ${width}px`, async ({ page }) => {
        await page.setViewportSize({ width, height: 900 })
        await page.goto('/')

        const library = page.getByRole('link', { name: 'Open library', exact: true })
        await library.scrollIntoViewIfNeeded()
        await expect(library).toBeVisible()
        await expect(library).toHaveAttribute('href', projectLinks.figmaLibrary)
        await expect(page.getByRole('link', { name: 'Get plugin', exact: true })).toHaveAttribute(
            'href',
            projectLinks.figmaPlugin
        )

        const community = page.locator('section').filter({
            has: page.getByRole('heading', { name: /Built for developers/ }),
        })
        const request = community.getByRole('link', { name: /Missing an icon\? Request it/ })
        await request.scrollIntoViewIfNeeded()
        await expect(request).toBeVisible()
        await expect(request).toHaveAttribute('href', projectLinks.requestIcon)
        const stats = page.getByText('Weekly npm downloads').locator('xpath=../../..')
        expect(await stats.evaluate(element => element.scrollWidth <= element.clientWidth)).toBe(
            true
        )
        await expect(
            page.locator('footer').getByRole('link', { name: 'Figma library' })
        ).toHaveAttribute('href', projectLinks.figmaLibrary)

        expect(await page.evaluate(() => document.documentElement.scrollWidth)).toBeLessThanOrEqual(
            width
        )

        await page.evaluate(() => window.scrollTo(0, 0))
        if (width < 768) {
            const open = page.getByRole('button', { name: 'Open navigation' })
            await expect(async () => {
                if (await open.isVisible()) await open.click()
                await expect(page.getByRole('dialog')).toBeVisible({ timeout: 1000 })
            }).toPass()
        }
        const navigation = page.getByRole('navigation', { name: 'Primary navigation' })
        await navigation.getByRole('link', { name: 'Figma', exact: true }).click()
        await expect(page.getByRole('heading', { name: 'Figma Library', level: 1 })).toBeVisible()
        await expect(
            page.getByRole('link', { name: 'Open the Figma library', exact: true })
        ).toHaveAttribute('href', projectLinks.figmaLibrary)
    })
}

test('requests and contribution docs remain available as pages and readable Markdown', async ({
    page,
    request,
}) => {
    await page.goto('/docs/v2/community/request-an-icon')
    await expect(page.getByRole('heading', { name: 'Request an icon', level: 1 })).toBeVisible()
    await expect(page.getByRole('link', { name: 'Request an icon on GitHub' })).toHaveAttribute(
        'href',
        projectLinks.requestIcon
    )

    await page.goto('/docs/v2/community/contributing')
    await expect(
        page.getByRole('heading', { name: 'Contribute code or documentation', level: 2 })
    ).toBeVisible()
    await expect(page.getByRole('heading', { name: 'Contribute an icon', level: 2 })).toBeVisible()

    const library = await request.get('/docs/v2/figma-library.mdx')
    expect(library.status()).toBe(200)
    const markdown = await library.text()
    expect(markdown).toContain(projectLinks.figmaLibrary)
    expect(markdown).toContain('icon/stroke-width')
    expect(markdown).not.toContain('projectLinks.')
    expect(markdown).not.toMatch(/light\/dark|theme helper|workspace-theme/i)

    const iconRequest = await request.get('/docs/v2/community/request-an-icon.mdx')
    expect(await iconRequest.text()).toContain(projectLinks.requestIcon)

    const llms = await request.get('/llms.txt')
    const index = await llms.text()
    expect(index).toContain('/docs/v2/figma-library')
    expect(index).toContain('/docs/v2/community/request-an-icon')
})

for (const view of ['', '&view=grouped']) {
    test(`an unsuccessful icon search offers a request and recovers${view}`, async ({ page }) => {
        await page.goto(`/icons?search=zzzxxyy-no-such-icon${view}`)
        await expect(page.getByRole('heading', { name: 'No icons found' })).toBeVisible()
        await expect(
            page.getByRole('link', { name: 'Request an icon', exact: true })
        ).toHaveAttribute('href', projectLinks.requestIcon)

        await page.getByRole('searchbox').fill('home')
        await expect(page.getByRole('heading', { name: 'No icons found' })).toBeHidden()
        await expect(page.getByRole('gridcell').first()).toBeVisible()
    })
}
