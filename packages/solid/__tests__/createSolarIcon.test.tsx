import { render } from '@solidjs/testing-library'
import { describe, expect, it } from 'vitest'
import { SolarProvider } from '../src/lib/context'
import { createSolarIcon } from '../src/lib/createSolarIcon'

describe('createSolarIcon', () => {
    it('creates a functional icon component', () => {
        const TestIcon = createSolarIcon('test-icon', {
            Linear: [['path', { d: 'M12 2v20', stroke: 'currentColor' }]],
            Bold: [['path', { d: 'M12 2v20', fill: 'currentColor' }]],
        })

        const { container } = render(() => (
            <SolarProvider>
                <TestIcon />
            </SolarProvider>
        ))
        const svg = container.querySelector('svg')
        expect(svg).toBeTruthy()
        const path = container.querySelector('path')
        expect(path).toBeTruthy()
    })

    it('switches weight based on props', () => {
        const TestIcon = createSolarIcon('test-icon', {
            Linear: [['path', { d: 'M-linear', stroke: 'currentColor' }]],
            Bold: [['path', { d: 'M-bold', fill: 'currentColor' }]],
        })

        const { container } = render(() => (
            <SolarProvider>
                <TestIcon weight="Bold" />
            </SolarProvider>
        ))
        const path = container.querySelector('path')
        expect(path?.getAttribute('d')).toBe('M-bold')
    })

    it('passes size and color props through', () => {
        const TestIcon = createSolarIcon('test-icon', {
            Linear: [['circle', { cx: '12', cy: '12', r: '10' }]],
        })

        const { container } = render(() => (
            <SolarProvider>
                <TestIcon size={48} color="red" />
            </SolarProvider>
        ))
        const svg = container.querySelector('svg')
        expect(svg?.getAttribute('width')).toBe('48')
        expect(svg?.getAttribute('color')).toBe('red')
    })
})
