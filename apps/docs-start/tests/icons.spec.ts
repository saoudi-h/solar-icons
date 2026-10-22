import { expect, test } from '@playwright/test'

test('shared icon URL preserves the old query names and accepted values', async ({ page }) => {
    await page.goto(
        '/icons?icon=home&view=grouped&search=home&style=linear&category=ui&origin=extended'
    )

    await expect(page.getByRole('searchbox')).toHaveValue('home')
    await expect(page.getByRole('radio', { name: 'Grouped' })).toHaveAttribute(
        'aria-checked',
        'true'
    )
    await expect(page.getByRole('radio', { name: 'Linear' })).toHaveAttribute(
        'aria-checked',
        'true'
    )
    await expect(page.getByRole('button', { name: 'Extended' })).toHaveAttribute(
        'aria-pressed',
        'true'
    )
    await expect(page.getByRole('heading', { name: 'home-linear' })).toBeVisible()

    const address = new URL(page.url())
    expect(address.searchParams.get('icon')).toBe('home')
    expect(address.searchParams.get('view')).toBe('grouped')
    expect(address.searchParams.get('search')).toBe('home')
    expect(address.searchParams.get('style')).toBe('linear')
    expect(address.searchParams.get('category')).toBe('ui')
    expect(address.searchParams.get('origin')).toBe('extended')

    await page.reload()
    await expect(page.getByRole('searchbox')).toHaveValue('home')
    await expect(page.getByRole('heading', { name: 'home-linear' })).toBeVisible()
})

test('category links hydrate into grouped view and the filters stay in the URL', async ({
    page,
}) => {
    await page.goto('/icons?category=ui')
    await expect(page.getByRole('radio', { name: 'Grouped' })).toHaveAttribute(
        'aria-checked',
        'true'
    )
    await expect(page.getByRole('button', { name: /^ui/ })).toBeVisible()
    await expect.poll(() => new URL(page.url()).searchParams.get('view')).toBe('grouped')

    await page.getByRole('radio', { name: 'Linear' }).click()
    await expect.poll(() => new URL(page.url()).searchParams.get('style')).toBe('linear')
    await expect(page.getByRole('radio', { name: 'Linear' })).toHaveAttribute(
        'aria-checked',
        'true'
    )

    await page.getByRole('radio', { name: 'Flat' }).click()
    await expect.poll(() => new URL(page.url()).searchParams.get('view')).toBe(null)
    await expect(page.getByRole('radio', { name: 'Flat' })).toHaveAttribute('aria-checked', 'true')
})

test('a selected icon can be copied as SVG', async ({ page, context }) => {
    await context.grantPermissions(['clipboard-read', 'clipboard-write'])
    await page.goto('/icons')
    await page.getByRole('searchbox').fill('home')
    await page.getByRole('gridcell').first().click()
    await page.getByRole('button', { name: 'Copy SVG' }).click()
    await expect(page.getByText('SVG copied to clipboard')).toBeVisible()
    await expect
        .poll(async () => page.evaluate(() => navigator.clipboard.readText()))
        .toContain('<svg')
})
