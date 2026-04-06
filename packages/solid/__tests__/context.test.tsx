import { render } from '@solidjs/testing-library'
import { describe, expect, it } from 'vitest'
import { createSolarIcons, DEFAULT_SOLAR, SolarProvider, useSolar } from '../src/lib/context'

describe('context utilities', () => {
    it('createSolarIcons merges defaults with partial and exposes setters', () => {
        const ctx = createSolarIcons({ color: 'red', size: '32' })
        expect(ctx.config.color).toBe('red')
        expect(ctx.config.size).toBe('32')
        expect(ctx.config.weight).toBe(DEFAULT_SOLAR.weight)

        ctx.setColor('blue')
        expect(ctx.config.color).toBe('blue')

        ctx.setSize('48')
        expect(ctx.config.size).toBe('48')

        ctx.setWeight('Bold')
        expect(ctx.config.weight).toBe('Bold')

        ctx.setConfig({ color: 'green', mirrored: true })
        expect(ctx.config.color).toBe('green')
        expect(ctx.config.mirrored).toBe(true)
    })

    it('SolarProvider shares context to descendants via useSolar', () => {
        let capturedColor: string | undefined

        function Consumer() {
            const { config } = useSolar()
            capturedColor = config.color
            return <div data-testid="color">{config.color}</div>
        }

        render(() => (
            <SolarProvider color="purple">
                <Consumer />
            </SolarProvider>
        ))

        expect(capturedColor).toBe('purple')
    })
})
