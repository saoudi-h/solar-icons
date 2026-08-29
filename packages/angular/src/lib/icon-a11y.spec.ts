import { Component, signal } from '@angular/core'
import { type ComponentFixture, TestBed } from '@angular/core/testing'

import { SolarAddCircle } from '../dynamic/add-circle'
import { SolarAddCircleBold } from '../icons/add-circle-bold'

@Component({
    standalone: true,
    imports: [SolarAddCircleBold],
    template: `
        <svg solarAddCircleBold [ariaLabel]="ariaLabel()" [titleAttr]="titleAttr()" [alt]="alt()" />
    `,
})
class StaticA11yHost {
    ariaLabel = signal<string | undefined>(undefined)
    titleAttr = signal<string | undefined>(undefined)
    alt = signal<string | undefined>(undefined)
}

@Component({
    standalone: true,
    imports: [SolarAddCircle],
    template: `
        <svg solarAddCircle [ariaLabel]="ariaLabel()" [titleAttr]="titleAttr()" [alt]="alt()" />
    `,
})
class DynamicA11yHost {
    ariaLabel = signal<string | undefined>(undefined)
    titleAttr = signal<string | undefined>(undefined)
    alt = signal<string | undefined>(undefined)
}

function titlesOf(el: Element): string[] {
    return Array.from(el.querySelectorAll('title')).map(t => t.textContent || '')
}

describe('Icon accessibility (static icon)', () => {
    let fixture: ComponentFixture<StaticA11yHost>
    let host: StaticA11yHost

    beforeEach(async () => {
        await TestBed.configureTestingModule({
            imports: [StaticA11yHost],
        }).compileComponents()
        fixture = TestBed.createComponent(StaticA11yHost)
        host = fixture.componentInstance
        fixture.detectChanges()
    })

    it('is aria-hidden by default', () => {
        const svg = fixture.nativeElement.querySelector('svg[solarAddCircleBold]')!
        expect(svg.getAttribute('aria-hidden')).toBe('true')
        expect(svg.getAttribute('aria-label')).toBeNull()
        expect(titlesOf(svg)).toEqual([])
    })

    it('binds ariaLabel to the aria-label attribute and removes aria-hidden', () => {
        host.ariaLabel.set('Add a circle')
        fixture.detectChanges()

        const svg = fixture.nativeElement.querySelector('svg[solarAddCircleBold]')!
        expect(svg.getAttribute('aria-label')).toBe('Add a circle')
        expect(svg.getAttribute('aria-hidden')).toBeNull()
    })

    it('renders titleAttr as a <title> child and removes aria-hidden', () => {
        host.titleAttr.set('Add a circle')
        fixture.detectChanges()

        const svg = fixture.nativeElement.querySelector('svg[solarAddCircleBold]')!
        expect(titlesOf(svg)).toEqual(['Add a circle'])
        expect(svg.getAttribute('aria-hidden')).toBeNull()
    })

    it('renders alt as a <title> child', () => {
        host.alt.set('Add a circle')
        fixture.detectChanges()

        const svg = fixture.nativeElement.querySelector('svg[solarAddCircleBold]')!
        expect(titlesOf(svg)).toEqual(['Add a circle'])
        expect(svg.getAttribute('aria-hidden')).toBeNull()
    })

    it('prefers titleAttr over alt for the <title> child', () => {
        host.titleAttr.set('Explicit title')
        host.alt.set('Alt label')
        fixture.detectChanges()

        const svg = fixture.nativeElement.querySelector('svg[solarAddCircleBold]')!
        expect(titlesOf(svg)).toEqual(['Explicit title'])
    })
})

describe('Icon accessibility (dynamic icon)', () => {
    let fixture: ComponentFixture<DynamicA11yHost>
    let host: DynamicA11yHost

    beforeEach(async () => {
        await TestBed.configureTestingModule({
            imports: [DynamicA11yHost],
        }).compileComponents()
        fixture = TestBed.createComponent(DynamicA11yHost)
        host = fixture.componentInstance
        fixture.detectChanges()
    })

    it('forwards ariaLabel, titleAttr and alt to the inner static icon', () => {
        host.ariaLabel.set('Add a circle')
        host.titleAttr.set('Explicit title')
        host.alt.set('Alt label')
        fixture.detectChanges()

        const innerSvg = fixture.nativeElement.querySelector('svg[solarAddCircle] svg')!
        expect(innerSvg.getAttribute('aria-label')).toBe('Add a circle')
        expect(titlesOf(innerSvg)).toEqual(['Explicit title'])
    })
})
