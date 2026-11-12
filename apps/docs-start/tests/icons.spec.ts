import { expect, test } from '@playwright/test'

test('shared icon URL preserves the old query names and accepted values', async ({ page }) => {
    const errors: string[] = []
    page.on('pageerror', error => errors.push(error.message))
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
    expect(errors).toEqual([])
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
    await expect(
        page.getByRole('grid', { name: 'Icons', exact: true }).getByRole('button').first()
    ).toBeEnabled()
    await page.getByRole('searchbox').fill('home')
    await page.getByRole('button', { name: 'home', exact: true }).click()
    await page.getByRole('button', { name: 'Copy SVG' }).click()
    await expect(page.getByText('SVG copied to clipboard')).toBeVisible()
    await expect
        .poll(async () => page.evaluate(() => navigator.clipboard.readText()))
        .toContain('<svg')
})

test('the detail panel shows the six styles of the selected icon', async ({ page }) => {
    await page.goto('/icons?icon=home')

    const variants = page.getByRole('button', { name: / variant$/ })
    await expect(variants).toHaveCount(6)
    for (const variant of await variants.all()) {
        await expect(variant.locator('svg')).toBeVisible()
    }
    await expect(page.getByRole('button', { name: 'Bold Duotone variant' })).toHaveAttribute(
        'aria-pressed',
        'true'
    )

    await page.getByRole('button', { name: 'Linear variant' }).click()
    await expect.poll(() => new URL(page.url()).searchParams.get('style')).toBe('linear')
    await expect(page.getByRole('heading', { name: 'home-linear' })).toBeVisible()
})

test('an icon whose name ends with a style name opens as itself', async ({ page }) => {
    await page.goto('/icons?search=text-bold')
    await page.getByRole('gridcell', { name: 'text-bold', exact: true }).click()

    await expect(page.getByRole('heading', { name: 'text-bold-bold-duotone' })).toBeVisible()
    const address = new URL(page.url())
    expect(address.searchParams.get('icon')).toBe('text-bold')
    expect(address.searchParams.get('style')).toBe(null)
})

test('Escape closes the detail panel, but not while typing in the search field', async ({
    page,
}) => {
    await page.goto('/icons?icon=home')
    const heading = page.getByRole('heading', { name: 'home-bold-duotone' })
    await expect(heading).toBeVisible()

    await page.getByRole('searchbox').fill('home')
    await page.keyboard.press('Escape')
    await expect(heading).toBeVisible()

    await expect(page.getByRole('button', { name: 'Bold variant', exact: true })).toBeEnabled()
    await page.getByRole('button', { name: 'Bold variant', exact: true }).focus()
    await page.keyboard.press('Escape')
    await expect(heading).toBeHidden()
    expect(new URL(page.url()).searchParams.get('icon')).toBe(null)
})

test('SVG and PNG exports work without an external icon CDN', async ({ page, context }) => {
    await context.grantPermissions(['clipboard-read', 'clipboard-write'])
    await page.addInitScript(() => localStorage.setItem('theme', 'dark'))
    await page.route('https://cdn.jsdelivr.net/**', route => route.abort())
    const sourceRequest = page.waitForResponse(response =>
        response.url().includes('/data/icon-svgs/home.')
    )
    await page.goto('/icons?icon=home&style=line-duotone')
    const source = await sourceRequest
    expect(source.ok()).toBeTruthy()
    const styles = await source.json()
    expect(Object.keys(styles)).toHaveLength(6)
    await page.getByRole('button', { name: 'Copy SVG', exact: true }).click()
    await expect
        .poll(() => page.evaluate(() => navigator.clipboard.readText()))
        .toBe(styles['line-duotone'])
    const svgDownload = page.waitForEvent('download')
    await page.getByRole('button', { name: 'Get SVG', exact: true }).click()
    expect((await svgDownload).suggestedFilename()).toBe('home-line-duotone.svg')
    const pngDownload = page.waitForEvent('download')
    await page.getByRole('button', { name: 'Get PNG', exact: true }).click()
    expect((await pngDownload).suggestedFilename()).toBe('home-line-duotone.png')
    await page.getByRole('button', { name: 'Copy PNG', exact: true }).click()
    await expect(page.getByText('PNG copied to clipboard')).toBeVisible()
    const hasAccentPixels = await page.evaluate(async () => {
        const items = await navigator.clipboard.read()
        const blob = await items[0]!.getType('image/png')
        const image = await createImageBitmap(blob)
        const canvas = document.createElement('canvas')
        canvas.width = image.width
        canvas.height = image.height
        const context = canvas.getContext('2d')!
        context.drawImage(image, 0, 0)
        const pixels = context.getImageData(0, 0, image.width, image.height).data
        for (let index = 0; index < pixels.length; index += 4) {
            if (
                Math.abs(pixels[index]! - 96) <= 2 &&
                Math.abs(pixels[index + 1]! - 165) <= 2 &&
                Math.abs(pixels[index + 2]! - 250) <= 2 &&
                Math.abs(pixels[index + 3]! - 128) <= 2
            )
                return true
        }
        return false
    })
    expect(hasAccentPixels).toBeTruthy()
})

test('a failed SVG request can be retried', async ({ page }) => {
    let requests = 0
    await page.route('**/data/icon-svgs/**', route => {
        requests += 1
        return requests <= 2
            ? route.fulfill({ status: 503, body: 'Unavailable' })
            : route.continue()
    })
    await page.goto('/icons?icon=home')
    await expect.poll(() => requests).toBe(1) // prefetch
    await page.getByRole('button', { name: 'Get SVG', exact: true }).click()
    await expect(page.getByText('Failed to download SVG')).toBeVisible()
    const download = page.waitForEvent('download')
    await page.getByRole('button', { name: 'Get SVG', exact: true }).click()
    expect((await download).suggestedFilename()).toBe('home-bold-duotone.svg')
})

test('both views remain virtualized and reset cleanly after scrolling and searching', async ({
    page,
}) => {
    await page.goto('/icons')
    const grid = page.getByRole('grid', { name: 'Icons', exact: true })
    for (const view of ['Flat', 'Grouped']) {
        await page.getByRole('radio', { name: view, exact: true }).click()
        await expect(grid.getByRole('button').first()).toBeEnabled()
        // Far fewer cells than the 1,500 icons of the catalogue.
        expect(await grid.getByRole('button').count()).toBeLessThan(300)
        await grid.evaluate(el => {
            el.scrollTop = el.scrollHeight
        })
        await page.getByRole('searchbox').fill('text-bold')
        await expect(page.getByRole('button', { name: 'text-bold', exact: true })).toBeVisible()
        await page.getByRole('button', { name: 'Reset filters', exact: true }).click()
        await expect(page.getByRole('searchbox')).toHaveValue('')
        await expect.poll(() => grid.evaluate(el => el.scrollTop)).toBe(0)
        await expect(grid.getByRole('button').first()).toBeEnabled()
    }
    const category = page
        .getByRole('navigation', { name: 'Categories', exact: true })
        .getByRole('button', { name: /^weather/i })
    await category.click()
    await expect.poll(() => grid.evaluate(el => el.scrollTop)).toBeGreaterThan(1000)
    await grid.evaluate(el => {
        el.scrollTop = 0
    })
    await category.click()
    await expect.poll(() => grid.evaluate(el => el.scrollTop)).toBeGreaterThan(1000)
})

test('package tabs support arrow keys and Escape restores focus to the grid', async ({ page }) => {
    await page.goto('/icons?icon=home&search=home')
    const react = page.getByRole('tab', { name: 'React', exact: true })
    await expect(react).toBeEnabled()
    await expect(page.getByRole('tab')).toHaveCount(13)
    await react.focus()
    await page.keyboard.press('ArrowRight')
    const reactNative = page.getByRole('tab', { name: 'React Native', exact: true })
    await expect(reactNative).toBeFocused()
    await expect(reactNative).toHaveAttribute('aria-selected', 'true')
    await expect(page.getByRole('tabpanel')).toContainText('@solar-icons/react-native')
    await page.keyboard.press('ArrowLeft')
    await expect(react).toBeFocused()
    await page.keyboard.press('Escape')
    await expect(page.getByRole('region', { name: 'Icon details', exact: true })).toBeHidden()
    await expect
        .poll(() =>
            page
                .getByRole('grid', { name: 'Icons', exact: true })
                .evaluate(
                    el => el === document.activeElement || el.contains(document.activeElement)
                )
        )
        .toBe(true)
})

test('mobile detail content scrolls and filter Escape preserves the selection', async ({
    page,
}) => {
    await page.setViewportSize({ width: 390, height: 844 })
    await page.goto('/icons?icon=home')
    const panel = page.locator('[data-detail-scroll]')
    await expect(panel).toBeVisible()
    await panel.evaluate(el => {
        el.scrollTop = el.scrollHeight
    })
    await expect.poll(() => panel.evaluate(el => el.scrollTop)).toBeGreaterThan(0)
    await page.getByRole('button', { name: 'Broken variant', exact: true }).click()
    await expect(page.getByRole('heading', { name: 'home-broken', exact: true })).toBeVisible()
    await page.getByRole('button', { name: 'Filters and appearance', exact: true }).click()
    await expect(page.getByRole('dialog')).toBeVisible()
    await page.keyboard.press('Escape')
    await expect(page.getByRole('dialog')).toBeHidden()
    await expect(page.getByRole('heading', { name: 'home-broken', exact: true })).toBeVisible()
    expect(
        await page.evaluate(() => document.documentElement.scrollWidth <= innerWidth)
    ).toBeTruthy()
})

test('initial previews are rendered in HTML without waiting for icon modules', async ({
    request,
}) => {
    const response = await request.get('/icons')
    expect(response.ok()).toBeTruthy()
    const html = await response.text()
    expect(html).toContain('solar-chat-round-money-bold-duotone')
    expect(html).toContain('solar-letter-unread-bold-duotone')
    expect(html).not.toContain('size-16 rounded-lg bg-default-200/50')
})

test('failed preview data can be retried without losing the panel', async ({ page }) => {
    let attempts = 0
    await page.route('**/data/icon-previews/broken-ui-0.*.json', route => {
        attempts += 1
        return attempts === 1
            ? route.fulfill({ status: 503, body: 'Unavailable' })
            : route.continue()
    })
    const errors: string[] = []
    page.on('pageerror', error => errors.push(error.message))
    await page.goto('/icons?icon=home')
    const broken = page.getByRole('button', { name: 'Broken variant', exact: true })
    await expect(broken).toContainText('Retry')
    await expect(
        page.getByRole('button', { name: 'Bold variant', exact: true }).locator('svg')
    ).toBeVisible()
    await broken.click()
    await expect(broken.locator('svg')).toBeVisible()
    await expect(broken).toHaveAttribute('aria-pressed', 'true')
    await expect(page.getByRole('heading', { name: 'Tags', exact: true })).toBeVisible()
    expect(errors).toEqual([])
})

test('a shared grouped icon link scrolls after query hydration', async ({ page }) => {
    const errors: string[] = []
    page.on('pageerror', error => errors.push(error.message))
    await page.goto('/icons?icon=home&view=grouped')
    await expect(
        page.getByRole('heading', { name: 'home-bold-duotone', exact: true })
    ).toBeVisible()
    const grid = page.getByRole('grid', { name: 'Icons', exact: true })
    await expect.poll(() => grid.evaluate(el => el.scrollTop)).toBeGreaterThan(1000)
    await expect(page.locator('[data-cat-section="ui"]')).toBeVisible()
    expect(errors).toEqual([])
})

test('categories and their counts are visible before JavaScript starts', async ({
    browser,
    request,
}) => {
    const response = await request.get('/data/icons.json')
    const icons = (await response.json()) as { category: string }[]
    const counts = new Map<string, number>()
    for (const icon of icons) counts.set(icon.category, (counts.get(icon.category) ?? 0) + 1)
    const context = await browser.newContext({
        javaScriptEnabled: false,
        viewport: { width: 1440, height: 900 },
    })
    try {
        const page = await context.newPage()
        await page.goto('/icons')
        const sidebar = page.locator('aside[aria-label="Categories navigation"]')
        await expect(sidebar).toBeVisible()
        const categories = sidebar.locator('button:not([aria-pressed])')
        await expect(categories).toHaveCount(counts.size)
        const sidebarBox = await sidebar.boundingBox()
        const gridBox = await page.locator('[data-icon-scroller]').boundingBox()
        expect(sidebarBox!.height).toBe(gridBox!.height)
        for (const [category, count] of counts) {
            const label = category.replaceAll('-', ' ')
            await expect(
                sidebar.locator('button').filter({ hasText: new RegExp(`^${label}\\s*${count}$`) })
            ).toHaveCount(1)
        }
        await expect(page.locator(`[aria-label="${icons.length} icons"]`).first()).toBeVisible()
    } finally {
        await context.close()
    }
})

test('the details open beside the grid without taking any of its rows', async ({ page }) => {
    await page.goto('/icons')
    const grid = page.getByRole('grid', { name: 'Icons', exact: true })
    await expect(grid.getByRole('button').first()).toBeEnabled()
    const before = await grid.boundingBox()

    await grid.getByRole('button').first().click()
    const details = page.getByRole('region', { name: 'Icon details', exact: true })
    await expect(details).toBeVisible()
    await expect.poll(async () => (await grid.boundingBox())!.width).toBeLessThan(before!.width)
    const after = await grid.boundingBox()
    const detailsBox = await details.boundingBox()
    expect(after!.height).toBe(before!.height)
    expect(detailsBox!.x).toBeGreaterThanOrEqual(after!.x + after!.width)
    expect(detailsBox!.height).toBe(after!.height)
})

test('the toolbar stays on one row and icon names are an option', async ({ page }) => {
    for (const width of [1440, 1280, 1024, 768]) {
        await page.setViewportSize({ width, height: 900 })
        await page.goto('/icons')
        const search = page.getByRole('searchbox')
        await expect(search).toBeEnabled()
        const searchBox = await search.boundingBox()
        const reset = await page
            .getByRole('button', { name: 'Reset filters', exact: true })
            .boundingBox()
        expect(Math.abs(searchBox!.y - reset!.y)).toBeLessThan(2)
        expect(searchBox!.width).toBeGreaterThan(160)
    }

    await page.setViewportSize({ width: 1440, height: 900 })
    const first = page.getByRole('grid', { name: 'Icons', exact: true }).getByRole('button').first()
    const name = await first.getAttribute('aria-label')
    const compact = await first.boundingBox()
    await page.getByRole('button', { name: 'Show icon names', exact: true }).click()
    await expect.poll(() => new URL(page.url()).searchParams.get('names')).toBe('on')
    await expect(first.getByText(name!, { exact: true })).toBeVisible()
    await expect
        .poll(async () => (await first.boundingBox())!.height)
        .toBeGreaterThan(compact!.height)
})

test('icon name tooltips stay inside the grid at its edges', async ({ page }) => {
    await page.goto('/icons')
    const grid = page.getByRole('grid', { name: 'Icons', exact: true })
    const cells = grid.getByRole('button')
    await expect(cells.first()).toBeEnabled()

    await grid.evaluate(el => {
        el.scrollTop = el.scrollHeight
    })

    // Wait for the virtualizer to render the bottom row before sampling it.
    await expect
        .poll(async () => {
            const gridBox = await grid.boundingBox()
            const lastBox = await cells.last().boundingBox()
            if (!gridBox || !lastBox) return false
            return lastBox.y + lastBox.height <= gridBox.y + gridBox.height + 1
        })
        .toBe(true)

    // The row closest to the bottom edge is the one where a tooltip below the
    // icon used to be cut in half by the scroller's overflow.
    const boxes = await cells.evaluateAll(nodes =>
        nodes.map(node => {
            const rect = node.getBoundingClientRect()
            return { label: node.getAttribute('aria-label')!, top: rect.top }
        })
    )
    const lastRowTop = Math.max(...boxes.map(box => box.top))
    const lastRow = boxes.filter(box => box.top === lastRowTop)
    expect(lastRow.length).toBeGreaterThan(1)

    const viewport = page.viewportSize()!
    for (const cell of [lastRow[0]!, lastRow[lastRow.length - 1]!]) {
        await page.getByRole('button', { name: cell.label, exact: true }).hover()
        const tooltip = page.locator('[data-icon-name-tooltip]')
        await expect(tooltip).toBeVisible()
        const tooltipBox = (await tooltip.boundingBox())!
        expect(tooltipBox.y).toBeGreaterThanOrEqual(0)
        expect(tooltipBox.y + tooltipBox.height).toBeLessThanOrEqual(viewport.height)
        expect(tooltipBox.x).toBeGreaterThanOrEqual(0)
        expect(tooltipBox.x + tooltipBox.width).toBeLessThanOrEqual(viewport.width)
        // The old in-cell tooltip was clipped by the scroller's overflow, so
        // its intersection ratio was below 1 even while its box was on screen.
        const fullyVisible = await tooltip.evaluate(
            element =>
                new Promise<boolean>(resolve => {
                    const observer = new IntersectionObserver(entries => {
                        observer.disconnect()
                        resolve((entries[0]?.intersectionRatio ?? 0) >= 1)
                    })
                    observer.observe(element)
                })
        )
        expect(fullyVisible).toBe(true)
    }
})

test('the chosen package is kept from one icon to the next', async ({ page }) => {
    await page.goto('/icons?icon=home')
    await page.getByRole('tab', { name: 'Vue', exact: true }).click()
    await expect(page.getByRole('tabpanel')).toContainText('@solar-icons/vue')

    await page.goto('/icons?icon=heart')
    await expect(page.getByRole('tab', { name: 'Vue', exact: true })).toHaveAttribute(
        'aria-selected',
        'true'
    )
    await expect(page.getByRole('tabpanel')).toContainText('HeartIcon')
})
