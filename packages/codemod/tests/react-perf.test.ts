import { describe, expect, it } from 'vitest'

import { transformReactPerf } from '../src/transforms/react-perf.js'

describe('transformReactPerf', () => {
    it('migrates top-level imports while preserving local bindings', () => {
        const result = transformReactPerf(
            "import { HomeBold, SettingsLinear as Settings } from '@solar-icons/react-perf'\n\n<HomeBold /><Settings />"
        )

        expect(result.code).toBe(
            "import { HomeBoldIcon as HomeBold, SettingsLinearIcon as Settings } from '@solar-icons/react'\n\n<HomeBold /><Settings />"
        )
        expect(result.changed).toBe(true)
    })

    it('migrates style paths to kebab-case and drops the old style suffix', () => {
        const result = transformReactPerf(
            "import { Home, SettingsLinear } from '@solar-icons/react-perf/LineDuotone'"
        )

        expect(result.code).toBe(
            "import { HomeIcon as Home, SettingsLinearIcon as SettingsLinear } from '@solar-icons/react/line-duotone'"
        )
    })

    it('reports unsupported imports without modifying them', () => {
        const result = transformReactPerf(
            "import * as solar from '@solar-icons/react-perf/category'"
        )

        expect(result.changed).toBe(false)
        expect(result.diagnostics).toMatchObject([{ code: 'UNSUPPORTED_REACT_PERF_SUBPATH' }])
    })

    it('renames icons before restoring a react-perf root style suffix', () => {
        const result = transformReactPerf("import { WeigherBold } from '@solar-icons/react-perf'")

        expect(result.code).toBe(
            "import { ScaleBoldIcon as WeigherBold } from '@solar-icons/react'"
        )
    })
})
