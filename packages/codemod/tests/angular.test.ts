import { describe, expect, it } from 'vitest'

import {
    collectAngularSelectorRenames,
    transformAngular,
    transformAngularTemplate,
} from '../src/transforms/angular.js'

describe('transformAngular', () => {
    it('renames icon imports, TypeScript references, and inline selectors', () => {
        const result = transformAngular(`
import { Component } from '@angular/core'
import { HeartBold, WeigherLinear } from '@solar-icons/angular'

@Component({
    standalone: true,
    imports: [HeartBold, WeigherLinear],
    template: '<svg solarHeartBold></svg><svg solarWeigherLinear></svg>',
})
export class AppComponent {}
`)

        expect(result.code).toContain(
            "import { SolarHeartBold, SolarScaleLinear } from '@solar-icons/angular'"
        )
        expect(result.code).toContain('imports: [SolarHeartBold, SolarScaleLinear]')
        expect(result.code).toContain('solarHeartBold')
        expect(result.code).toContain('solarScaleLinear')
    })

    it('migrates the legacy dynamic component export', () => {
        const result = transformAngular(
            "import { SolarDynamicIcon } from '@solar-icons/angular'\nconst component = SolarDynamicIcon"
        )

        expect(result.code).toContain('import { SolarIcon }')
        expect(result.code).toContain('const component = SolarIcon')
    })

    it('reports external templates and removed mirrored inputs', () => {
        const result = transformAngular(
            `
@Component({
    templateUrl: './app.html',
    template: '<svg solarHeartBold mirrored></svg>',
})
export class AppComponent {}
`,
            'app.component.ts'
        )

        expect(result.diagnostics).toMatchObject([
            { code: 'ANGULAR_EXTERNAL_TEMPLATE_REQUIRES_MANUAL_MIGRATION', line: 3 },
            { code: 'ANGULAR_MIRRORED_REQUIRES_MANUAL_MIGRATION', line: 4 },
        ])
    })

    it('migrates selectors in an external template when it is part of the project', () => {
        const componentSource =
            "import { WeigherBold } from '@solar-icons/angular'\n@Component({ templateUrl: './app.html' })"
        const templateSource = '<svg solarWeigherBold></svg>'
        const componentPath = '/project/src/app.component.ts'
        const templatePath = '/project/src/app.html'
        const selectorRenames = collectAngularSelectorRenames(componentSource, componentPath)

        const component = transformAngular(
            componentSource,
            componentPath,
            new Set([componentPath, templatePath])
        )
        const template = transformAngularTemplate(templateSource, selectorRenames)

        expect(component.diagnostics).toEqual([])
        expect(template.code).toBe('<svg solarScaleBold></svg>')
    })
})
