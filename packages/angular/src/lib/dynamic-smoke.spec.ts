import { Component, signal } from '@angular/core'
import { type ComponentFixture, TestBed } from '@angular/core/testing'
import { SolarArrowUp } from '../dynamic/arrow-up'

@Component({
    standalone: true,
    imports: [SolarArrowUp],
    template: `<svg solarArrowUp [weight]="weight()" />`,
})
class DynamicHost {
    weight = signal<string | undefined>(undefined)
}

@Component({
    standalone: true,
    imports: [SolarArrowUp],
    template: `<svg solarArrowUp class="text-blue-500" />`,
})
class DynamicWithUserClass {}

function getClasses(el: Element): string[] {
    return (el.getAttribute('class') ?? '').split(/\s+/).filter(Boolean)
}

describe('Dynamic icon component (multi-style)', () => {
    let fixture: ComponentFixture<DynamicHost>
    let host: DynamicHost

    beforeEach(async () => {
        await TestBed.configureTestingModule({
            imports: [DynamicHost],
        }).compileComponents()
        fixture = TestBed.createComponent(DynamicHost)
        host = fixture.componentInstance
        fixture.detectChanges()
    })

    function getOuterSvg(): Element {
        return fixture.nativeElement.querySelector('svg[solarArrowUp]')!
    }

    function getInnerSvg(): Element {
        return fixture.nativeElement.querySelector('svg[solarArrowUp] svg')!
    }

    it('should render the default weight (linear) inner icon', () => {
        const innerSvg = getInnerSvg()
        expect(innerSvg).toBeTruthy()
        expect(getClasses(innerSvg)).toContain('solar')
        expect(getClasses(innerSvg)).toContain('solar-arrow-up-linear')
    })

    it('should switch inner icon when weight changes', () => {
        host.weight.set('Bold')
        fixture.detectChanges()

        const innerSvg = getInnerSvg()
        expect(getClasses(innerSvg)).toContain('solar-arrow-up-bold')
        expect(getClasses(innerSvg)).not.toContain('solar-arrow-up-linear')
    })

    it('should not set host.class on the outer svg', () => {
        const outerSvg = getOuterSvg()
        expect(getClasses(outerSvg)).not.toContain('solar')
    })

    it('should set host.class on the inner svg only', () => {
        host.weight.set('Outline')
        fixture.detectChanges()

        const innerSvg = getInnerSvg()
        expect(getClasses(innerSvg)).toContain('solar')
        expect(getClasses(innerSvg)).toContain('solar-arrow-up-outline')
    })
})

describe('Dynamic icon class merge (Angular-specific)', () => {
    let fixture: ComponentFixture<DynamicWithUserClass>

    beforeEach(async () => {
        await TestBed.configureTestingModule({
            imports: [DynamicWithUserClass],
        }).compileComponents()
        fixture = TestBed.createComponent(DynamicWithUserClass)
        fixture.detectChanges()
    })

    function getOuterSvg(): Element {
        return fixture.nativeElement.querySelector('svg[solarArrowUp]')!
    }

    function getInnerSvg(): Element {
        return fixture.nativeElement.querySelector('svg[solarArrowUp] svg')!
    }

    it('user class stays on the outer svg (dynamic wrapper)', () => {
        const outerSvg = getOuterSvg()
        expect(getClasses(outerSvg)).toContain('text-blue-500')
    })

    it('inner svg has solar class from the static child component', () => {
        const innerSvg = getInnerSvg()
        expect(innerSvg).toBeTruthy()
        expect(getClasses(innerSvg)).toContain('solar')
        expect(getClasses(innerSvg)).toContain('solar-arrow-up-linear')
    })

    it('user class does NOT leak into the inner svg', () => {
        const innerSvg = getInnerSvg()
        expect(getClasses(innerSvg)).not.toContain('text-blue-500')
    })
})
