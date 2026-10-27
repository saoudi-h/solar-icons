import { expect, test } from '@playwright/test'

test('Blazor snippets follow the selected icon and style in the existing explorer', async ({
    page,
    context,
}) => {
    await context.grantPermissions(['clipboard-read', 'clipboard-write'])
    await page.goto('/icons?icon=home&style=linear')
    await page.getByRole('button', { name: 'Blazor', exact: true }).click()
    await expect(
        page.locator('pre').filter({ hasText: '<HomeLinearIcon Size="24" />' })
    ).toBeVisible()
    for (const weight of ['Bold', 'Broken', 'LineDuotone', 'Outline', 'Linear', 'BoldDuotone']) {
        await page.getByRole('radio', { name: weight, exact: true }).click()
        await expect(
            page.locator('pre').filter({ hasText: `<Home${weight}Icon Size="24" />` })
        ).toBeVisible()
        await expect(
            page
                .locator('pre')
                .filter({ hasText: `<HomeIcon Weight="IconWeight.${weight}" Size="24" />` })
        ).toBeVisible()
    }
    await page.getByRole('button', { name: 'Copy Text', exact: true }).first().click()
    await expect
        .poll(async () =>
            (await page.evaluate(() => navigator.clipboard.readText())).replace(/\r\n/g, '\n')
        )
        .toBe('@using SolarIcons.Blazor\n\n<HomeBoldDuotoneIcon Size="24" />')
    await page.getByRole('link', { name: 'Get started with Blazor' }).click()
    await expect(page).toHaveURL(/\/docs\/v2\/packages\/blazor/)
    await expect(page.getByRole('heading', { name: 'Blazor', exact: true })).toBeVisible()
    await expect(page.getByRole('heading', { name: 'SolarProvider', level: 2 })).toBeVisible()
})

test('Blazor snippets remain accessible on a narrow screen', async ({ page }) => {
    await page.setViewportSize({ width: 390, height: 844 })
    await page.goto('/icons?icon=arrow-up&style=outline')
    await page.getByRole('button', { name: 'Blazor', exact: true }).click()
    await expect(
        page.locator('pre').filter({ hasText: '<ArrowUpOutlineIcon Size="24" />' })
    ).toBeVisible()
    await expect(page.getByRole('link', { name: 'Get started with Blazor' })).toBeVisible()
})
