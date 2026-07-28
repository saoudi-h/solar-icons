import { describe, expect, it } from 'vitest'

import { transformReactPerf } from '../src/transforms/react-perf.js'

describe('transformReactPerf', () => {
    it('migrates top-level imports and modernizes non-aliased local bindings', () => {
        const result = transformReactPerf(
            "import { HomeBold, SettingsLinear as Settings } from '@solar-icons/react-perf'\n\n<HomeBold /><Settings />"
        )

        expect(result.code).toBe(
            "import { HomeBoldIcon, SettingsLinearIcon as Settings } from '@solar-icons/react'\n\n<HomeBoldIcon /><Settings />"
        )
        expect(result.changed).toBe(true)
    })

    it('migrates style paths to kebab-case and drops the old style suffix', () => {
        const result = transformReactPerf(
            "import { Home, SettingsLinear } from '@solar-icons/react-perf/LineDuotone'"
        )

        expect(result.code).toBe(
            "import { HomeIcon, SettingsLinearIcon } from '@solar-icons/react/line-duotone'"
        )
    })

    it('removes an alias made redundant by the Icon suffix', () => {
        const result = transformReactPerf(
            "import { FullScreen as FullScreenIcon } from '@solar-icons/react-perf/Linear'\n\n<FullScreenIcon />"
        )

        expect(result.code).toBe(
            "import { FullScreenIcon } from '@solar-icons/react/linear'\n\n<FullScreenIcon />"
        )
    })

    it('does not rename a nested binding that shadows an imported icon', () => {
        const result = transformReactPerf(
            "import { ArrowUp } from '@solar-icons/react-perf/Linear'\n\nconst icon = ArrowUp\nconst wrap = (ArrowUp: string) => ArrowUp"
        )

        expect(result.code).toBe(
            "import { ArrowUpIcon } from '@solar-icons/react/linear'\n\nconst icon = ArrowUpIcon\nconst wrap = (ArrowUp: string) => ArrowUp"
        )
    })

    it('reports unsupported imports without modifying them', () => {
        const result = transformReactPerf(
            "import * as solar from '@solar-icons/react-perf/category'"
        )

        expect(result.changed).toBe(false)
        expect(result.diagnostics).toMatchObject([{ code: 'UNSUPPORTED_REACT_PERF_SUBPATH' }])
    })

    it('migrates supported type-only exports from the legacy internal path', () => {
        const result = transformReactPerf(
            "import type { Icon as IconType, IconProps } from '@solar-icons/react-perf/lib/types'"
        )

        expect(result.code).toBe(
            "import type { Icon as IconType, IconProps } from '@solar-icons/react/lib/index'"
        )
        expect(result.diagnostics).toEqual([])
    })

    it('reports unsupported exports from the legacy internal type path', () => {
        const result = transformReactPerf(
            "import type { IconBaseProps } from '@solar-icons/react-perf/lib/types'"
        )

        expect(result.changed).toBe(false)
        expect(result.diagnostics).toMatchObject([{ code: 'UNSUPPORTED_REACT_PERF_TYPE_EXPORT' }])
    })

    it('migrates an exact package reference in tooling configuration', () => {
        const result = transformReactPerf(
            "export default { optimizePackageImports: ['@solar-icons/react-perf'] }"
        )

        expect(result.code).toBe(
            "export default { optimizePackageImports: ['@solar-icons/react'] }"
        )
    })

    it('renames icons before restoring a react-perf root style suffix', () => {
        const result = transformReactPerf("import { WeigherBold } from '@solar-icons/react-perf'")

        expect(result.code).toBe("import { ScaleBoldIcon } from '@solar-icons/react'")
    })

    it('reports the removed mirrored prop at its source location', () => {
        const result = transformReactPerf(
            "import { ArrowRight } from '@solar-icons/react-perf/Bold'\n\nexport const App = () => <ArrowRight mirrored />",
            'App.tsx'
        )

        expect(result.diagnostics).toMatchObject([
            {
                code: 'REACT_MIRRORED_REQUIRES_MANUAL_MIGRATION',
                line: 3,
                column: 38,
            },
        ])
    })
})
