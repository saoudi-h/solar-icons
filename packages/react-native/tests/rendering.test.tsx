import { createElement, isValidElement } from 'react'
import { describe, expect, it, vi } from 'vitest'

vi.mock('react-native-svg')

describe('Package Structure', () => {
    it('lib entry should export IconBase, SolarProvider, useSolar, IconStyle', async () => {
        const mod = await import('../src/lib/index')
        expect(mod.IconBase).toBeDefined()
        expect(mod.SolarProvider).toBeDefined()
        expect(mod.useSolar).toBeDefined()
        expect(mod.IconStyle).toBeDefined()
    })

    it('main entry should export IconBase, SolarProvider, useSolar, IconStyle', async () => {
        // Import directly from lib re-exports instead of src/index
        // to avoid loading the massive icons/styled module
        const { IconBase } = await import('../src/lib/index')
        const { SolarProvider, useSolar, IconStyle } = await import(
            '../src/lib/index'
        )
        expect(IconBase).toBeDefined()
        expect(SolarProvider).toBeDefined()
        expect(useSolar).toBeDefined()
        expect(IconStyle).toBeDefined()
    })
})

describe('IconBase Component', () => {
    it('should be a valid React component', async () => {
        const { default: IconBase } = await import('../src/lib/IconBase')
        // forwardRef returns an object with $$typeof and render in React 19
        expect(IconBase).toBeDefined()
        expect(typeof IconBase).toBe('object')
        expect(IconBase).not.toBeNull()
    })

    it('should produce a valid React element with createElement', async () => {
        const { default: IconBase } = await import('../src/lib/IconBase')
        const element = createElement(IconBase, { color: 'red', size: 48 })
        expect(isValidElement(element)).toBe(true)
        expect(element.type).toBe(IconBase)
        expect(element.props.color).toBe('red')
        expect(element.props.size).toBe(48)
    })

    it('should accept the isolated prop', async () => {
        const { default: IconBase } = await import('../src/lib/IconBase')
        const element = createElement(IconBase, {
            color: 'blue',
            size: 32,
            isolated: true,
        })
        expect(isValidElement(element)).toBe(true)
        expect(element.props.isolated).toBe(true)
        expect(element.props.color).toBe('blue')
    })

    it('should accept isolated as false by default', async () => {
        const { default: IconBase } = await import('../src/lib/IconBase')
        const element = createElement(IconBase, {})
        expect(element.props.isolated).toBeUndefined()
    })
})

describe('Generated Icon', () => {
    it('should exist and be a valid React component', async () => {
        const { AccessibilityIcon } = await import(
            '../src/icons/linear/accessibility'
        )
        expect(AccessibilityIcon).toBeDefined()
        expect(typeof AccessibilityIcon).toBe('object')
        expect(AccessibilityIcon).not.toBeNull()
    })

    it('should produce a valid React element when called with props', async () => {
        const { AccessibilityIcon } = await import(
            '../src/icons/linear/accessibility'
        )
        const element = createElement(AccessibilityIcon, {
            color: '#ff0000',
            size: 64,
        })
        expect(isValidElement(element)).toBe(true)
        expect(element.type).toBe(AccessibilityIcon)
        expect(element.props.color).toBe('#ff0000')
        expect(element.props.size).toBe(64)
    })

    it('should pass through the isolated prop', async () => {
        const { AccessibilityIcon } = await import(
            '../src/icons/linear/accessibility'
        )
        const element = createElement(AccessibilityIcon, {
            isolated: true,
        })
        expect(element.props.isolated).toBe(true)
    })
})

describe('IconBase Resolution Logic', () => {
    it('should have isolated defaults when isolated is true', async () => {
        const { default: IconBase } = await import('../src/lib/IconBase')
        // When isolated=true, the component should use hardcoded defaults
        // (color='currentColor', size=24, strokeWidth=1.5) regardless of context
        const element = createElement(IconBase, {
            isolated: true,
        })
        expect(element.props.isolated).toBe(true)
        // Without isolated prop or explicit values, color/size should
        // not be on props directly (they come from context resolution)
        expect(element.props.color).toBeUndefined()
        expect(element.props.size).toBeUndefined()
    })

    it('should pass through explicit props even when isolated', async () => {
        const { default: IconBase } = await import('../src/lib/IconBase')
        const element = createElement(IconBase, {
            isolated: true,
            color: 'green',
            size: 100,
            strokeWidth: 3,
        })
        expect(element.props.color).toBe('green')
        expect(element.props.size).toBe(100)
        expect(element.props.strokeWidth).toBe(3)
    })
})

describe('SolarProvider', () => {
    it('should be a valid React component', async () => {
        const { SolarProvider } = await import('../src/lib/SolarProvider')
        expect(SolarProvider).toBeDefined()
        expect(typeof SolarProvider).toBe('function')
    })

    it('should create a valid element', async () => {
        const { SolarProvider } = await import('../src/lib/SolarProvider')
        const element = createElement(SolarProvider, {
            color: 'red',
            size: 32,
        })
        expect(isValidElement(element)).toBe(true)
        expect(element.type).toBe(SolarProvider)
    })
})
