import { existsSync, readFileSync } from 'node:fs'
import { dirname, resolve } from 'node:path'
import { fileURLToPath } from 'node:url'

import { describe, expect, it } from 'vitest'

import {
    importSnippet,
    rootImportSnippet,
    perFileComponentName,
    rootComponentName,
} from '../src/catalog.js'

const repoRoot = resolve(dirname(fileURLToPath(import.meta.url)), '../../..')
function repoPath(p: string): string {
    return resolve(repoRoot, p)
}

describe('import snippets are verified against packages', () => {
    it('react per-file is generic name with style in path, not both', () => {
        const snippet = importSnippet('arrow-up', 'linear', 'react')
        expect(snippet).toBe('import { ArrowUpIcon } from "@solar-icons/react/linear/arrow-up";')
        // old buggy form was ArrowUpLinearIcon from linear/arrow-up (both) — must not happen
        expect(snippet).not.toContain('ArrowUpLinearIcon')
        expect(snippet).toContain('ArrowUpIcon')
        // verify file exists and exports generic name
        expect(existsSync(repoPath('packages/react/src/icons/linear/arrow-up.tsx'))).toBe(true)
        const src = readFileSync(repoPath('packages/react/src/icons/linear/arrow-up.tsx'), 'utf8')
        // per-file files export generic Icon
        expect(src).toMatch(/export const ArrowUpIcon/)
    })

    it('react root import is style in name, path is package root', () => {
        const snippet = rootImportSnippet('arrow-up', 'bold', 'react')
        expect(snippet).toBe('import { ArrowUpBoldIcon } from "@solar-icons/react";')
        expect(existsSync(repoPath('packages/react/src/icons/styled.ts'))).toBe(true)
        const styled = readFileSync(repoPath('packages/react/src/icons/styled.ts'), 'utf8')
        expect(styled).toContain('ArrowUpBoldIcon')
    })

    it('vue per-file matches docs', () => {
        expect(importSnippet('heart', 'bold', 'vue')).toBe(
            'import { HeartIcon } from "@solar-icons/vue/bold/heart";'
        )
    })

    it('svelte per-file is default import without braces and no extension', () => {
        const snippet = importSnippet('heart', 'bold', 'svelte')
        expect(snippet).toBe('import HeartIcon from "@solar-icons/svelte/bold/heart";')
        expect(snippet).not.toContain('{')
        expect(existsSync(repoPath('packages/svelte/src/icons/bold/heart.svelte'))).toBe(true)
    })

    it('svelte root is named with style', () => {
        expect(rootImportSnippet('heart', 'bold', 'svelte')).toBe(
            'import { HeartBoldIcon } from "@solar-icons/svelte";'
        )
    })

    it('angular per-file is wrong — angular uses root style in name', () => {
        // angular has no per-file style path; canonical is root
        const snippet = importSnippet('arrow-up', 'linear', 'angular')
        expect(snippet).toContain('SolarArrowUpLinear')
        expect(snippet).toContain('@solar-icons/angular"')
        expect(snippet).not.toContain('arrow-up"')
    })

    it('perFileComponentName is generic (no style)', () => {
        expect(perFileComponentName('arrow-up')).toBe('ArrowUpIcon')
        expect(perFileComponentName('home')).toBe('HomeIcon')
    })

    it('rootComponentName includes style', () => {
        expect(rootComponentName('arrow-up', 'linear', 'react')).toBe('ArrowUpLinearIcon')
        expect(rootComponentName('home', 'bold', 'angular')).toBe('SolarHomeBold')
    })

    it('docs example HeartIcon from bold/heart exists', () => {
        // mirrors apps/docs/content/docs/v2/packages/react.mdx examples
        expect(importSnippet('heart', 'bold', 'react')).toBe(
            'import { HeartIcon } from "@solar-icons/react/bold/heart";'
        )
        expect(rootImportSnippet('heart', 'bold', 'react')).toBe(
            'import { HeartBoldIcon } from "@solar-icons/react";'
        )
    })
})
