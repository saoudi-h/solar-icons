import { expect, test } from '@playwright/test'

const consumers = ['net8.0/STATIC_1', 'net8.0/DYNAMIC_1', 'net10.0/STATIC_1', 'net10.0/DYNAMIC_1']

for (const [index, consumer] of consumers.entries()) {
    test(`${consumer} runs from the trimmed NuGet consumer`, async ({ page }) => {
        await page.goto(`http://127.0.0.1:${5198 + index}`)
        await expect(page.locator('#runtime')).toHaveText('WebAssembly', { timeout: 60_000 })
        const svg = page.locator('svg.solar')
        await expect(svg).toHaveCount(1)
        await expect(svg).toHaveAttribute('viewBox', '0 0 24 24')
        if (consumer.includes('DYNAMIC')) {
            const initial = await svg.innerHTML()
            const seen = new Set([initial])
            for (let step = 0; step < 6; step++) {
                const previous = await svg.innerHTML()
                await page.getByRole('button', { name: 'Next style', exact: true }).click()
                await expect.poll(() => svg.innerHTML()).not.toBe(previous)
                seen.add(await svg.innerHTML())
            }
            expect(seen.size).toBe(6)
            expect(await svg.innerHTML()).toBe(initial)
        } else {
            await expect(svg).toHaveClass('solar solar-home-linear')
        }
    })
}
