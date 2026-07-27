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

    it('converts numeric sizes and reports the removed mirrored prop', () => {
        const result = transformReactNative(
            'import { House } from \'@solar-icons/react-native/Bold\'\n\nexport const App = () => <House size="32" mirrored />',
            'App.tsx'
        )

        expect(result.code).toContain('<House size={32} mirrored />')
        expect(result.diagnostics).toMatchObject([
            {
                code: 'REACT_NATIVE_MIRRORED_REQUIRES_MANUAL_MIGRATION',
                line: 3,
                column: 43,
            },
        ])
    })

    it('reports imports and paths it cannot safely migrate', () => {
        const result = transformReactNative(
            "import * as solar from '@solar-icons/react-native/category'",
            'App.tsx'
        )

        expect(result.changed).toBe(false)
        expect(result.diagnostics).toMatchObject([
            { code: 'UNSUPPORTED_REACT_NATIVE_IMPORT', line: 1, column: 24 },
        ])
    })
})
