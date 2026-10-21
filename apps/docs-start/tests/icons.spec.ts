import { expect, test } from '@playwright/test'

test('shared icon URL preserves the old query names and accepted values', async ({ page }) => {
    await page.goto(
        '/icons?icon=home&view=grouped&search=home&style=linear&category=ui&origin=extended'
    )

    await expect(page.getByRole('heading', { name: 'Icon explorer' })).toBeVisible()
    await expect(page.getByRole('searchbox', { name: 'Search icons' })).toHaveValue('home')
    await expect(page.getByRole('button', { name: 'grouped' })).toHaveAttribute(
        'aria-pressed',
        'true'
    )
    await expect(page.getByRole('button', { name: 'Linear' })).toHaveAttribute(
        'aria-pressed',
        'true'
    )
    await expect(page.getByRole('button', { name: 'Extended only' })).toHaveAttribute(
        'aria-pressed',
        'true'
    )
    await expect(page.getByRole('heading', { name: 'home' })).toBeVisible()

    const address = new URL(page.url())
    expect(address.searchParams.get('icon')).toBe('home')
    expect(address.searchParams.get('view')).toBe('grouped')
    expect(address.searchParams.get('search')).toBe('home')
    expect(address.searchParams.get('style')).toBe('linear')
    expect(address.searchParams.get('category')).toBe('ui')
    expect(address.searchParams.get('origin')).toBe('extended')

    await page.reload()
    await expect(page.getByRole('searchbox', { name: 'Search icons' })).toHaveValue('home')
    await expect(page.getByRole('heading', { name: 'home' })).toBeVisible()
})

test('category links hydrate into grouped view and browser history restores filters', async ({ page }) => {
    await page.goto('/icons?category=ui')
    await expect(page.getByRole('button', { name: 'grouped' })).toHaveAttribute(
        'aria-pressed',
        'true'
    )
    await expect(page.locator('[data-category="ui"]')).toBeVisible()
    await expect.poll(() => new URL(page.url()).searchParams.get('view')).toBe('grouped')

    await page.getByRole('button', { name: 'Linear' }).click()
    await page.getByRole('button', { name: 'flat' }).click()
    await expect.poll(() => new URL(page.url()).searchParams.get('view')).toBe('flat')

    await page.goBack()
    await expect(page.getByRole('button', { name: 'grouped' })).toHaveAttribute(
        'aria-pressed',
        'true'
    )
    await page.goBack()
    await expect(page.getByRole('button', { name: 'Bold Duotone' })).toHaveAttribute(
        'aria-pressed',
        'true'
    )
    await page.goForward()
    await expect(page.getByRole('button', { name: 'Linear' })).toHaveAttribute(
        'aria-pressed',
        'true'
    )
})

test('a selected icon can be copied as SVG', async ({ page, context }) => {
    await context.grantPermissions(['clipboard-read', 'clipboard-write'])
    await page.goto('/icons')
    await page.getByRole('searchbox', { name: 'Search icons' }).fill('home')
    await page.getByRole('button', { name: 'Select home icon' }).click()
    await page.getByRole('button', { name: 'Copy SVG' }).click()
    await expect(page.getByRole('status')).toHaveText('SVG copied')
    await expect.poll(async () => page.evaluate(() => navigator.clipboard.readText())).toContain('<svg')
})
