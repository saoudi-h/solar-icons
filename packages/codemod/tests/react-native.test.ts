import { describe, expect, it } from 'vitest'

import { transformReactNative } from '../src/transforms/react-native.js'

describe('transformReactNative', () => {
    it('migrates root imports and removed icon names', () => {
        expect(
            transformReactNative(
                "import { HouseBold, WeigherLinear } from '@solar-icons/react-native'"
            ).code
        ).toBe(
            "import { HouseBoldIcon as HouseBold, ScaleLinearIcon as WeigherLinear } from '@solar-icons/react-native'"
        )
    })

    it('migrates legacy style paths to kebab-case', () => {
        expect(
            transformReactNative(
                "import { House, Weigher } from '@solar-icons/react-native/BoldDuotone'"
            ).code
        ).toBe(
            "import { HouseIcon as House, ScaleIcon as Weigher } from '@solar-icons/react-native/bold-duotone'"
        )
    })

    it('turns a category import into per-icon style imports', () => {
        expect(
            transformReactNative(
                "import { House, Weigher } from '@solar-icons/react-native/category/buildings/Bold'"
            ).code
        ).toBe(
            "import { HouseIcon as House } from '@solar-icons/react-native/bold/house'\nimport { ScaleIcon as Weigher } from '@solar-icons/react-native/bold/scale'"
        )
    })
})
