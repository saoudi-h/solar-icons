import { describe, expect, it } from 'vitest'

import { transformVue } from '../src/transforms/vue.js'

describe('transformVue', () => {
    it('migrates a static root import and its template component', () => {
        const result = transformVue(`
<script setup lang="ts">
import { Heart, Weigher } from '@solar-icons/vue'
</script>

<template>
    <Heart weight="Bold" />
    <Weigher />
</template>
`)

        expect(result.code).toContain("import { HeartIcon } from '@solar-icons/vue/bold'")
        expect(result.code).toContain("import { ScaleIcon } from '@solar-icons/vue/linear'")
        expect(result.code).toContain('<HeartIcon />')
        expect(result.code).toContain('<ScaleIcon />')
    })

    it('uses dynamic imports for a bound weight and retains the binding', () => {
        const result = transformVue(`
<script setup>
import { Heart } from '@solar-icons/vue'
</script>

<template><Heart :weight="weight" /></template>
`)

        expect(result.code).toContain("import { HeartIcon } from '@solar-icons/vue/dynamic'")
        expect(result.code).toContain('<HeartIcon :weight="weight" />')
    })

    it('honors the explicit dynamic strategy for static weights', () => {
        const result = transformVue(
            `<script setup>\nimport { Heart } from '@solar-icons/vue'\n</script>\n<template><Heart weight="Bold" /></template>`,
            'App.vue',
            'dynamic'
        )

        expect(result.code).toContain("import { HeartIcon } from '@solar-icons/vue/dynamic'")
        expect(result.code).toContain('<HeartIcon weight="Bold" />')
    })

    it('reports category imports and the removed mirrored prop', () => {
        const result = transformVue(
            `
<script setup>
import { Arrows } from '@solar-icons/vue/category'
import { ArrowRight } from '@solar-icons/vue/Bold'
</script>

<template><ArrowRight mirrored /></template>
`,
            'App.vue'
        )

        expect(result.diagnostics).toMatchObject([
            { code: 'VUE_CATEGORY_IMPORT_REQUIRES_MANUAL_MIGRATION' },
            { code: 'VUE_MIRRORED_REQUIRES_MANUAL_MIGRATION', line: 7 },
        ])
        expect(result.code).toContain("import { ArrowRightIcon } from '@solar-icons/vue/bold'")
        expect(result.code).toContain('<ArrowRightIcon mirrored />')
    })
})
