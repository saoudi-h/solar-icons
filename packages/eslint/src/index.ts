import { base } from './configs/base'
import { next } from './configs/next'
import { react } from './configs/react'
import { storybook } from './configs/storybook'
import { tailwind } from './configs/tailwind'

import type { Config } from '@eslint/config-helpers'

export { base, next, react, storybook, tailwind }

const config = {
    base,
    react,
    next,
    storybook,
    tailwind,
} as {
    base: Config
    react: Config
    next: Config
    storybook: Config
    tailwind: Config
}

export type { Config }

export default config
