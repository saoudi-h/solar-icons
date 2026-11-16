import { afterEach, beforeEach, expect, vi } from 'vitest'

/**
 * Solid 2 reports reactivity mistakes (untracked reads, writes inside owned
 * scopes, missing owners) through the console in its development build. The
 * suite must stay silent: any warning or error fails the test that caused it.
 */
let warn: ReturnType<typeof vi.spyOn>
let error: ReturnType<typeof vi.spyOn>

beforeEach(() => {
    warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    error = vi.spyOn(console, 'error').mockImplementation(() => {})
})

afterEach(() => {
    const warnings = warn.mock.calls.map((call: unknown[]) => call.map(String).join(' '))
    const errors = error.mock.calls.map((call: unknown[]) => call.map(String).join(' '))
    warn.mockRestore()
    error.mockRestore()
    expect(warnings, 'console.warn output').toEqual([])
    expect(errors, 'console.error output').toEqual([])
})
