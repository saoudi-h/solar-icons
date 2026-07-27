import { describe, expect, it } from 'vitest'

import { transformSolid } from '../src/transforms/solid.js'

describe('transformSolid', () => {
    it('migrates style imports, aliases, and removed icon names', () => {
        const result = transformSolid(
            "import { House, Weigher as Scale } from '@solar-icons/solid/Bold'\n\nexport const App = () => <><House /><Scale /></>"
        )

        expect(result.code).toContain("import { HouseIcon } from '@solar-icons/solid/bold'")
        expect(result.code).toContain(
            "import { ScaleIcon as Scale } from '@solar-icons/solid/bold'"
        )
        expect(result.code).toContain('<HouseIcon />')
    })

    it('migrates a direct category import to a single icon path', () => {
        const result = transformSolid(
            "import { Weigher } from '@solar-icons/solid/category/building/Bold'\n\nexport const App = () => <Weigher />"
        )

        expect(result.code).toContain(
            "import { ScaleIcon as Weigher } from '@solar-icons/solid/bold/scale'"
        )
    })

    it('turns category namespace members into individual icon imports', () => {
        const result = transformSolid(
            "import { Bold, Linear } from '@solar-icons/solid/category/arrows'\n\nexport const App = () => <><Bold.ArrowUp /><Linear.ArrowDown></Linear.ArrowDown></>"
        )

        expect(result.code).toContain(
            "import { ArrowUpIcon } from '@solar-icons/solid/bold/arrow-up'"
        )
        expect(result.code).toContain(
            "import { ArrowDownIcon } from '@solar-icons/solid/linear/arrow-down'"
        )
        expect(result.code).toContain('<ArrowUpIcon />')
        expect(result.code).toContain('<ArrowDownIcon></ArrowDownIcon>')
    })
})
