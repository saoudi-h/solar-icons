import { render } from '@solidjs/testing-library'
import { describe, expect, it } from 'vitest'
import { SolarProvider } from '../src/lib/context'
import { SolarIcon } from '../src/lib/SolarIcon'

describe('SolarIcon', () => {
    it('renders svg with default attributes', () => {
        const { container } = render(() => (
            <SolarProvider>
                <SolarIcon iconNodes={[]} />
            </SolarProvider>
        ))
        const svg = container.querySelector('svg')
        expect(svg).toBeTruthy()
        expect(svg?.getAttribute('width')).toBe('1em')
        expect(svg?.getAttribute('height')).toBe('1em')
        expect(svg?.getAttribute('color')).toBe('currentColor')
        expect(svg?.getAttribute('fill')).toBe('none')
        expect(svg?.getAttribute('viewBox')).toBe('0 0 24 24')
    })

    it('overrides context with props', () => {
        const { container } = render(() => (
            <SolarProvider color="green" size="16">
                <SolarIcon color="red" size="32" iconNodes={[]} />
            </SolarProvider>
        ))
        const svg = container.querySelector('svg')
        expect(svg?.getAttribute('width')).toBe('32')
        expect(svg?.getAttribute('height')).toBe('32')
        expect(svg?.getAttribute('color')).toBe('red')
    })

    it('renders alt as title element', () => {
        const { container } = render(() => (
            <SolarProvider>
                <SolarIcon alt="Test Icon" iconNodes={[]} />
            </SolarProvider>
        ))
        const title = container.querySelector('title')
        expect(title).toBeTruthy()
        expect(title?.textContent).toBe('Test Icon')
    })

    it('renders iconNodes correctly', () => {
        const { container } = render(() => (
            <SolarProvider>
                <SolarIcon
                    iconNodes={[
                        ['path', { d: 'M12 2L2 22h20L12 2z', fill: 'currentColor' }],
                    ]}
                />
            </SolarProvider>
        ))
        const path = container.querySelector('path')
        expect(path).toBeTruthy()
        expect(path?.getAttribute('d')).toBe('M12 2L2 22h20L12 2z')
    })
})
