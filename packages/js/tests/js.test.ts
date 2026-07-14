import { beforeEach, describe, expect, it, vi } from 'vitest'
import { createElement } from '../src/createElement'
import { createIcons } from '../src/createIcons'
import type { IconNode, Icons } from '../src/types'

// Mock icon AST (what the generator outputs)
const MockHeartBoldIcon: IconNode[] = [
    [
        'path',
        {
            d: 'M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z',
            fill: 'currentColor',
        },
    ],
]

const mockIcons: Icons = {
    HeartBoldIcon: MockHeartBoldIcon,
}

describe('@solar-icons/js', () => {
    describe('createElement', () => {
        it('creates an SVGElement with default attributes and children', () => {
            const svg = createElement(MockHeartBoldIcon)

            expect(svg.tagName.toLowerCase()).toBe('svg')
            expect(svg.getAttribute('xmlns')).toBe('http://www.w3.org/2000/svg')
            expect(svg.getAttribute('width')).toBe('24')
            expect(svg.getAttribute('height')).toBe('24')
            expect(svg.getAttribute('viewBox')).toBe('0 0 24 24')
            expect(svg.getAttribute('fill')).toBe('none')
            expect(svg.getAttribute('stroke-width')).toBe('1.5')

            // Children should be present
            expect(svg.children.length).toBe(1)
            expect(svg.children[0].tagName.toLowerCase()).toBe('path')
            expect(svg.children[0].getAttribute('fill')).toBe('currentColor')
        })

        it('merges custom attributes into the SVG wrapper', () => {
            const svg = createElement(MockHeartBoldIcon, { class: 'custom-class', width: '48' })
            expect(svg.getAttribute('class')).toBe('custom-class')
            expect(svg.getAttribute('width')).toBe('48') // Overrides default 24
        })
    })

    describe('createIcons', () => {
        beforeEach(() => {
            document.body.innerHTML = ''
        })

        it('throws an error if no icons object is provided', () => {
            expect(() => createIcons()).toThrow('Please provide an icons object')
        })

        it('replaces placeholder elements with generated SVGs', () => {
            document.body.innerHTML = `<i data-solar="heart-bold"></i>`

            createIcons({ icons: mockIcons })

            const iElements = document.querySelectorAll('i')
            const svgElements = document.querySelectorAll('svg')

            expect(iElements.length).toBe(0) // The placeholder was replaced
            expect(svgElements.length).toBe(1) // With an SVG
            expect(svgElements[0].getAttribute('data-solar')).toBe('heart-bold')
        })

        it('adds standard "solar" and "solar-{name}" classes to the SVG', () => {
            document.body.innerHTML = `<div data-solar="heart-bold" class="existing-class"></div>`

            createIcons({ icons: mockIcons })

            const svg = document.querySelector('svg')!
            const classList = Array.from(svg.classList)

            expect(classList).toContain('solar')
            expect(classList).toContain('solar-heart-bold')
            expect(classList).toContain('existing-class')
        })

        it('does nothing if the icon name is not found in the icons object', () => {
            document.body.innerHTML = `<i data-solar="non-existent"></i>`

            // Mock console.warn to keep output clean during tests
            const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})

            createIcons({ icons: mockIcons })

            expect(document.querySelectorAll('i').length).toBe(1)
            expect(document.querySelectorAll('svg').length).toBe(0)
            expect(warn).toHaveBeenCalled()

            warn.mockRestore()
        })

        it('respects a custom nameAttr', () => {
            document.body.innerHTML = `<span data-icon="heart-bold"></span>`

            createIcons({ icons: mockIcons, nameAttr: 'data-icon' })

            const svg = document.querySelector('svg')!
            expect(svg).not.toBeNull()
            expect(svg.getAttribute('data-icon')).toBe('heart-bold')
        })

        it('maps styling attributes (size, color, stroke-width) to inline styles', () => {
            document.body.innerHTML = `
                <i 
                    data-solar="heart-bold" 
                    size="48" 
                    color="red" 
                    secondary-color="blue" 
                    secondary-opacity="0.5" 
                    stroke-width="2"
                    style="display: block;"
                ></i>
            `

            createIcons({ icons: mockIcons })

            const svg = document.querySelector('svg')!
            const style = svg.getAttribute('style') || ''

            // Should preserve existing styles
            expect(style).toContain('display: block;')

            // Should map standard props
            expect(style).toContain('width: 48px; height: 48px')
            expect(style).toContain('color: red')
            expect(style).toContain('--solar-secondary-color: blue')
            expect(style).toContain('--solar-secondary-opacity: 0.5')
            expect(style).toContain('stroke-width: 2')

            // Original attributes should be stripped from the DOM since they are mapped to styles
            expect(svg.getAttribute('size')).toBeNull()
            expect(svg.getAttribute('color')).toBeNull()
            expect(svg.getAttribute('secondary-color')).toBeNull()
            expect(svg.getAttribute('secondary-opacity')).toBeNull()
        })

        it('handles unitless vs unit sizes correctly', () => {
            document.body.innerHTML = `
                <i data-solar="heart-bold" id="unitless" size="32"></i>
                <i data-solar="heart-bold" id="with-unit" size="2em"></i>
            `

            createIcons({ icons: mockIcons })

            const unitless = document.getElementById('unitless')!
            const withUnit = document.getElementById('with-unit')!

            expect(unitless.getAttribute('style')).toContain('width: 32px; height: 32px')
            expect(withUnit.getAttribute('style')).toContain('width: 2em; height: 2em')
        })

        it('merges global attrs passed to createIcons with element attrs', () => {
            document.body.innerHTML = `<i data-solar="heart-bold" class="local-class"></i>`

            createIcons({
                icons: mockIcons,
                attrs: {
                    class: 'global-class',
                    'aria-hidden': 'false',
                    'stroke-width': '2.5',
                },
            })

            const svg = document.querySelector('svg')!
            const classList = Array.from(svg.classList)

            expect(classList).toContain('solar')
            expect(classList).toContain('solar-heart-bold')
            expect(classList).toContain('local-class')
            expect(classList).toContain('global-class')

            expect(svg.getAttribute('aria-hidden')).toBe('false')
            expect(svg.getAttribute('style')).toContain('stroke-width: 2.5')
        })
    })
})
