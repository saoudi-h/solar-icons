import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import { describe, expect, it } from 'vitest'

const DIST = path.resolve(fileURLToPath(import.meta.url), '../../dist')
const icons = JSON.parse(fs.readFileSync(path.join(DIST, 'icons.json'), 'utf-8')) as Record<
    string,
    string
>

describe('@solar-icons/static build output', () => {
    it('emits the full icon string map', () => {
        expect(Object.keys(icons).length).toBeGreaterThan(7000)
    })

    it('exposes per-style individual SVG files', () => {
        const file = path.join(DIST, 'icons/linear/login.svg')
        expect(fs.existsSync(file)).toBe(true)
        expect(fs.readFileSync(file, 'utf-8')).toContain('<svg')
    })

    it('bakes duotone CSS vars into duotone icons', () => {
        const duotoneEntry = Object.entries(icons).find(
            ([k, v]) => k.endsWith('-line-duotone') && v.includes('--solar-secondary-color')
        )
        expect(duotoneEntry).toBeDefined()
        expect(duotoneEntry![1]).toContain('--solar-secondary-color')
        expect(duotoneEntry![1]).toContain('--solar-secondary-opacity')
    })

    it('does not add duotone vars to non-duotone icons', () => {
        const linearSvg = icons['login-linear']
        expect(linearSvg).toBeDefined()
        expect(linearSvg).not.toContain('--solar-secondary-color')
    })

    it('produces an SVG sprite with one symbol per icon', () => {
        const sprite = fs.readFileSync(path.join(DIST, 'sprite.svg'), 'utf-8')
        const symbols = sprite.match(/<symbol/g) ?? []
        expect(symbols.length).toBe(Object.keys(icons).length)
        expect(sprite).toContain('id="login-linear"')
    })

    it('keeps currentColor so icons inherit text color', () => {
        expect(icons['login-linear']).toContain('currentColor')
    })

    it('SVG wrapper carries stroke-width=1.5 for correct default rendering', () => {
        expect(icons['login-linear']).toContain('stroke-width="1.5"')
        expect(icons['login-bold']).toContain('stroke-width="1.5"') // harmless on fill-based
    })

    it('per-icon ESM module is importable and returns an SVG string', async () => {
        const mod = await import(`../dist/icons/linear/login.mjs`)
        const svg: string = mod.LoginLinearIcon
        expect(svg).toContain('<svg')
        expect(svg).toContain('login')
        expect(svg).not.toContain('LoginLinearIcon') // variable name is mangled by tsdown minify
    })

    it('barrel .d.mts declares every icon with Icon suffix', () => {
        const dts = fs.readFileSync(path.join(DIST, 'index.d.mts'), 'utf-8')
        expect(dts).toContain('import { AccessibilityBoldIcon }')
        expect(dts).toContain('import { LoginLinearIcon }')
        expect(dts).toContain('import { HomeBoldIcon }')
        expect(dts).toContain('export')
        expect(dts).toContain('AccessibilityBoldIcon')
    })

    it('per-icon .d.mts declares PascalCase name with Icon suffix', () => {
        const dts = fs.readFileSync(path.join(DIST, 'icons/linear/login.d.mts'), 'utf-8')
        expect(dts).toContain('LoginLinearIcon')
        expect(dts).toContain('export { LoginLinearIcon }')
    })

    it('ships metadata.json (source of truth for external consumers)', () => {
        const meta = JSON.parse(fs.readFileSync(path.join(DIST, 'metadata.json'), 'utf-8'))
        expect(meta.categories).toBeDefined()
        expect(meta.categories.arrows).toBeDefined()
        expect(meta.categories.arrows.tags).toContain('arrows')
        expect(Array.isArray(meta.categories.arrows.icons)).toBe(true)
    })

    it('ships metadata-descriptions.json for programmatic queries', () => {
        const desc = JSON.parse(
            fs.readFileSync(path.join(DIST, 'metadata-descriptions.json'), 'utf-8')
        )
        expect(Array.isArray(desc)).toBe(true)
        expect(desc.length).toBeGreaterThan(1000)
        expect(desc[0]).toHaveProperty('name')
        expect(desc[0]).toHaveProperty('category')
        expect(desc[0]).toHaveProperty('tags')
    })
})
