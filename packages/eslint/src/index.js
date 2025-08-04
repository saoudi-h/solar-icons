export { defineConfig } from './utils.js'

export const configs = {
    get base() {
        return import('./configs/base.js').then(m => m.base)
    },
    get playwright() {
        return import('./configs/playwright.js').then(m => m.playwright)
    },
    get react() {
        return import('./configs/react.js').then(m => m.react)
    },
    get next() {
        return import('./configs/next.js').then(m => m.next)
    },
    get storybook() {
        return import('./configs/storybook.js').then(m => m.storybook)
    },
    get tailwind() {
        return import('./configs/tailwind.js').then(m => m.tailwind)
    },
}
