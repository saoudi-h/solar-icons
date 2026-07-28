import { describe, expect, it } from 'vitest'

import { transformSvelte } from '../src/transforms/svelte.js'

describe('transformSvelte', () => {
    it('migrates style imports, aliases, and removed icon names', () => {
        const result = transformSvelte(`
<script lang="ts">
    import { House, Weigher as Scale } from '@solar-icons/svelte/Bold'
</script>

<House size={24} />
<Scale />
`)

        expect(result.code).toContain("import { HouseIcon } from '@solar-icons/svelte/bold'")
        expect(result.code).toContain(
            "import { ScaleIcon as Scale } from '@solar-icons/svelte/bold'"
        )
        expect(result.code).toContain('<HouseIcon size={24} />')
    })

    it('migrates a direct category component import', () => {
        const result = transformSvelte(`
<script>
    import Weigher from '@solar-icons/svelte/category/buildings/Bold/Weigher.svelte'
</script>

<Weigher />
`)

        expect(result.code).toContain("import ScaleIcon from '@solar-icons/svelte/bold/scale'")
        expect(result.code).toContain('<ScaleIcon />')
    })

    it('reports category barrels and removed mirrored props', () => {
        const result = transformSvelte(`
<script>
    import { Bold } from '@solar-icons/svelte/category/arrows'
    import { ArrowRight } from '@solar-icons/svelte/Linear'
</script>

<ArrowRight mirrored />
`)

        expect(result.diagnostics).toMatchObject([
            { code: 'SVELTE_CATEGORY_IMPORT_REQUIRES_MANUAL_MIGRATION', line: 3 },
            { code: 'SVELTE_MIRRORED_REQUIRES_MANUAL_MIGRATION', line: 7 },
        ])
        expect(result.code).toContain("import { ArrowRightIcon } from '@solar-icons/svelte/linear'")
    })

    it('reports a legacy namespace category even when Svelte 5 cannot parse its tag syntax', () => {
        const result = transformSvelte(`
<script>
    import { Bold } from '@solar-icons/svelte/category/arrows'
</script>

<Bold.ArrowUp size={24} />
`)

        expect(result.diagnostics).toMatchObject([
            { code: 'SVELTE_CATEGORY_IMPORT_REQUIRES_MANUAL_MIGRATION', line: 3 },
        ])
        expect(result.diagnostics).not.toMatchObject([{ code: 'SVELTE_PARSE_ERROR' }])
    })
})
