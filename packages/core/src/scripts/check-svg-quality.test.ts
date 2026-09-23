import { describe, expect, it } from 'vitest'

import { analyzeSvg, buildSvgQualityMarkdown } from './check-svg-quality'

const svg = (body: string): string =>
    '<svg width="24" height="24" viewBox="0 0 24 24" fill="none">' + body + '</svg>'

const rules = (markup: string, style: Parameters<typeof analyzeSvg>[1]): string[] =>
    analyzeSvg(svg(markup), style).map(issue => issue.rule)

describe('SVG visual contracts', () => {
    it('rejects visible fills in line styles', () => {
        expect(rules('<path d="M1 1L2 2" fill="currentColor"/>', 'Linear')).toContain(
            'line-style-fill'
        )
    })

    it('requires round caps on stroked line geometry', () => {
        expect(rules('<path d="M1 1L2 2" stroke="currentColor"/>', 'Broken')).toContain(
            'line-style-stroke-cap'
        )
        expect(
            rules('<path d="M1 1L2 2" stroke="currentColor" stroke-linecap="round"/>', 'Broken')
        ).not.toContain('line-style-stroke-cap')
    })

    it('warns when an SVG has fewer than the style minimum drawable elements', () => {
        const linearIssues = analyzeSvg(svg(''), 'Linear')
        expect(linearIssues).toEqual(
            expect.arrayContaining([
                expect.objectContaining({ rule: 'minimum-elements', severity: 'warning' }),
            ])
        )

        const duotoneIssues = analyzeSvg(
            svg('<path d="M1 1L2 2" stroke="currentColor" stroke-linecap="round"/>'),
            'LineDuotone'
        )
        expect(duotoneIssues).toEqual(
            expect.arrayContaining([
                expect.objectContaining({ rule: 'minimum-elements', severity: 'warning' }),
            ])
        )

        expect(rules('<path d="M1 1L2 2"/><path d="M2 2L3 3"/>', 'BoldDuotone')).not.toContain(
            'minimum-elements'
        )
    })

    it('allows omitted opacity as the opaque duotone tone', () => {
        expect(
            rules(
                '<path d="M1 1L2 2" stroke="currentColor" stroke-linecap="round"/><path opacity="0.5" d="M2 2L3 3" stroke="currentColor" stroke-linecap="round"/>',
                'LineDuotone'
            )
        ).not.toContain('duotone-missing-opaque')
    })

    it('requires exactly opaque and accent tones for duotone styles', () => {
        expect(
            rules(
                '<path d="M1 1L2 2" stroke="currentColor" stroke-linecap="round"/>',
                'LineDuotone'
            )
        ).toContain('duotone-missing-accent')
        expect(
            rules(
                '<path d="M1 1L2 2" stroke="currentColor" stroke-linecap="round"/><path opacity="0.25" d="M2 2L3 3" stroke="currentColor" stroke-linecap="round"/>',
                'LineDuotone'
            )
        ).toContain('duotone-opacity')
    })

    it('requires filled surfaces without strokes for bold styles', () => {
        expect(rules('<path d="M1 1L2 2" fill="#1C274C"/>', 'Bold')).toEqual([])
        expect(
            rules('<path d="M1 1L2 2" stroke="currentColor" stroke-width="2"/>', 'Bold')
        ).toContain('bold-style-paint')
    })

    it('requires Outline to use filled surfaces without strokes', () => {
        expect(
            rules(
                '<path d="M1 1L2 2" fill="#1C274C"/><path d="M2 2L3 3" fill="#1C274C"/>',
                'Outline'
            )
        ).toEqual([])
        expect(rules('<path d="M1 1L2 2" stroke="#1C274C"/>', 'Outline')).toContain(
            'outline-style-paint'
        )
        expect(rules('<path d="M1 1L2 2" fill="#1C274C"/>', 'Outline')).toEqual([])
    })

    it('allows only the canonical Solar color', () => {
        expect(rules('<path d="M1 1L2 2" fill="#1c274c"/>', 'Bold')).not.toContain(
            'color-not-allowed'
        )
        expect(rules('<path d="M1 1L2 2" fill="#ff0000"/>', 'Bold')).toContain('color-not-allowed')
        expect(
            rules(
                '<defs><clipPath id="crop"><rect width="24" height="24" fill="white"/></clipPath></defs><path d="M1 1L2 2" fill="#1C274C"/>',
                'Bold'
            )
        ).not.toContain('color-not-allowed')
    })

    it('resolves grouped opacity for duotone tones', () => {
        expect(
            rules(
                '<g opacity="0.5"><path d="M1 1L2 2" stroke="currentColor" stroke-linecap="round"/></g><path d="M2 2L3 3" stroke="currentColor" stroke-linecap="round"/>',
                'LineDuotone'
            )
        ).not.toContain('duotone-missing-accent')
    })

    it('builds a complete actionable Markdown report', () => {
        const report = {
            checkedFiles: 1,
            issueCount: 1,
            errorCount: 1,
            warningCount: 0,
            filesWithIssues: 1,
            ruleCounts: { 'color-not-allowed': 1 },
            issues: [
                {
                    file: 'devices/Linear/gamepad-old.svg',
                    issue: {
                        rule: 'color-not-allowed',
                        message: 'fill uses "white"; expected "#1C274C".',
                        element: '<rect>',
                        severity: 'error' as const,
                    },
                },
            ],
        }

        const markdown = buildSvgQualityMarkdown(report, '2026-01-01T00:00:00.000Z')
        expect(markdown).toContain('Status: FAILED')
        expect(markdown).toContain('devices/Linear/gamepad-old.svg')
        expect(markdown).toContain('Replace the reported visible color in Figma with #1C274C.')
    })
})
