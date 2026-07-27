import { describe, expect, it } from 'vitest'

import { transformReact } from '../src/transforms/react.js'

describe('transformReact', () => {
    it('uses a style import and removes a static weight', () => {
        const result = transformReact(
            'import { Heart } from \'@solar-icons/react\'\n\nexport const App = () => <Heart weight="Bold" />'
        )

        expect(result.code).toBe(
            "import { HeartIcon } from '@solar-icons/react/bold'\n\nexport const App = () => <HeartIcon />"
        )
    })

    it('does not leave a duplicate space when removing weight', () => {
        const result = transformReact(
            'import { Heart } from \'@solar-icons/react\'\n\nexport const App = () => <Heart weight="Bold" />'
        )

        expect(result.code).not.toContain('<HeartIcon  />')
    })

    it('uses the v2 dynamic import when a weight is dynamic', () => {
        const result = transformReact(
            "import { Heart } from '@solar-icons/react'\n\nexport const App = ({ weight }) => <Heart weight={weight} />"
        )
        expect(result.diagnostics).toMatchObject([
            { code: 'REACT_DYNAMIC_WEIGHT_FALLBACK', line: 3, severity: 'warning' },
        ])

        expect(result.code).toBe(
            "import { HeartIcon } from '@solar-icons/react/dynamic'\n\nexport const App = ({ weight }) => <HeartIcon weight={weight} />"
        )
    })

    it('uses Linear when v1 omitted the weight prop', () => {
        const result = transformReact(
            "import { Heart } from '@solar-icons/react'\n\nexport const App = () => <Heart />"
        )

        expect(result.code).toContain("from '@solar-icons/react/linear'")
    })

    it('migrates the removed SSR entry point', () => {
        const result = transformReact(
            "import { Heart } from '@solar-icons/react/ssr'\n\nexport const App = () => <Heart />"
        )

        expect(result.code).toContain("from '@solar-icons/react/linear'")
    })

    it('reports namespace imports for manual migration', () => {
        const result = transformReact(
            "import solar from '@solar-icons/react'\n\nexport const App = () => <solar.Heart />"
        )

        expect(result.changed).toBe(false)
        expect(result.diagnostics).toMatchObject([{ code: 'UNSUPPORTED_REACT_IMPORT' }])
    })

    it('does not reprocess a v2 import emitted by another transform', () => {
        const source =
            "import { HomeBoldIcon as HomeBold } from '@solar-icons/react'\n\nexport const App = () => <HomeBold />"

        expect(transformReact(source)).toMatchObject({ changed: false, code: source })
    })

    it('removes an alias that already equals the required Icon suffix', () => {
        const result = transformReact(
            "import { ArrowUp as ArrowUpIcon } from '@solar-icons/react'\n\nexport const App = () => <ArrowUpIcon />"
        )

        expect(result.code).toContain("import { ArrowUpIcon } from '@solar-icons/react/linear'")
    })

    it('uses the explicit icon rename map', () => {
        const result = transformReact(
            "import { Weigher } from '@solar-icons/react'\n\nexport const App = () => <Weigher />"
        )

        expect(result.code).toContain("import { ScaleIcon } from '@solar-icons/react/linear'")
        expect(result.code).toContain('<ScaleIcon />')
    })

    it('reports legacy providers and category imports for manual migration', () => {
        const source = [
            "import { SolarProvider, Home } from '@solar-icons/react'",
            "import { Arrows } from '@solar-icons/react/category'",
        ].join('\n')

        expect(transformReact(source).diagnostics).toMatchObject([
            { code: 'REACT_PROVIDER_REQUIRES_MANUAL_MIGRATION' },
            { code: 'REACT_CATEGORY_IMPORT_REQUIRES_MANUAL_MIGRATION' },
        ])
    })
})
