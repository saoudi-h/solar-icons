import { expect, test } from '@playwright/test'

for (const [route, runtime] of [
    ['server', 'Server'],
    ['wasm', 'WebAssembly'],
] as const) {
    test(`moved playground supports ${runtime} interactions`, async ({ page }) => {
        await page.goto(`http://127.0.0.1:5202/${route}`)
        await expect(page.locator('[data-runtime]')).toHaveText(
            new RegExp(`${runtime}\\s*·\\s*interactive`),
            { timeout: 60_000 }
        )
        await page.getByRole('button', { name: 'Next style', exact: false }).click()
        await expect(page.getByRole('combobox', { name: 'Style', exact: true })).toHaveValue(
            'Broken'
        )
        await page.getByRole('textbox', { name: 'Search icons' }).fill('ticket-star')
        await expect(page.locator('.icon-grid article')).toHaveCount(1)
        await expect(page.locator('.icon-grid article')).toContainText('ticket-star')
    })
}
