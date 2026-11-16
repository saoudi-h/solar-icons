import { render, type JSX } from '@solidjs/web'
import { afterEach } from 'vitest'

const disposers: Array<() => void> = []

/** Renders `ui` into the document and returns the container. Cleaned up after each test. */
export function mount(ui: () => JSX.Element) {
    const container = document.createElement('div')
    document.body.appendChild(container)
    const dispose = render(ui, container)
    const cleanup = () => {
        dispose()
        container.remove()
    }
    disposers.push(cleanup)
    return {
        container,
        svg: () => container.querySelector('svg') as SVGSVGElement,
        dispose: cleanup,
    }
}

afterEach(() => {
    while (disposers.length) disposers.pop()!()
})
