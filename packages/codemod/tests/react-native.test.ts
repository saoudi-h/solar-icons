import { describe, expect, it } from 'vitest'

import { transformReactNative } from '../src/transforms/react-native.js'

describe('transformReactNative', () => {
    it('migrates root imports and removed icon names', () => {
        expect(
            transformReactNative(
                "import { HouseBold, WeigherLinear } from '@solar-icons/react-native'\n\nexport const App = () => <><HouseBold /><WeigherLinear /></>"
            ).code
        ).toBe(
            "import { HouseBoldIcon, ScaleLinearIcon } from '@solar-icons/react-native'\n\nexport const App = () => <><HouseBoldIcon /><ScaleLinearIcon /></>"
        )
    })

    it('migrates legacy style paths to kebab-case', () => {
        expect(
            transformReactNative(
                "import { House, Weigher } from '@solar-icons/react-native/BoldDuotone'\n\nexport const App = () => <><House /><Weigher /></>"
            ).code
        ).toBe(
            "import { HouseIcon, ScaleIcon } from '@solar-icons/react-native/bold-duotone'\n\nexport const App = () => <><HouseIcon /><ScaleIcon /></>"
        )
    })

    it('turns a category import into per-icon style imports', () => {
        expect(
            transformReactNative(
                "import { House, Weigher } from '@solar-icons/react-native/category/buildings/Bold'\n\nexport const App = () => <><House /><Weigher /></>"
            ).code
        ).toBe(
            "import { HouseIcon } from '@solar-icons/react-native/bold/house'\nimport { ScaleIcon } from '@solar-icons/react-native/bold/scale'\n\nexport const App = () => <><HouseIcon /><ScaleIcon /></>"
        )
    })

    it('converts numeric sizes and reports the removed mirrored prop', () => {
        const result = transformReactNative(
            'import { House } from \'@solar-icons/react-native/Bold\'\n\nexport const App = () => <House size="32" mirrored />',
            'App.tsx'
        )

        expect(result.code).toContain('<HouseIcon size={32} mirrored />')
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

    it('uses canonical exports and bindings for renamed file and chat icons', () => {
        const result = transformReactNative(
            "import { CodeFile, ChatDots } from '@solar-icons/react-native/Linear'\n\nexport const App = () => <><CodeFile /><ChatDots /></>"
        )

        expect(result.code).toBe(
            "import { FileCodeIcon, ChatSquareDotsIcon } from '@solar-icons/react-native/linear'\n\nexport const App = () => <><FileCodeIcon /><ChatSquareDotsIcon /></>"
        )
    })

    it('preserves explicit local aliases while canonicalizing the imported export', () => {
        const result = transformReactNative(
            "import { CodeFile as FileForCard } from '@solar-icons/react-native/Linear'\n\nexport const App = () => <FileForCard />"
        )

        expect(result.code).toBe(
            "import { FileCodeIcon as FileForCard } from '@solar-icons/react-native/linear'\n\nexport const App = () => <FileForCard />"
        )
    })
})
