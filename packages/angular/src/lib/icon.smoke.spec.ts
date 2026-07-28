import { Component } from '@angular/core'
import { type ComponentFixture, TestBed } from '@angular/core/testing'
import { SolarArrowLeftBold } from '../icons/arrow-left-bold'
import { SolarArrowLeftBoldDuotone } from '../icons/arrow-left-bold-duotone'
import { SolarArrowLeftBroken } from '../icons/arrow-left-broken'
import { SolarArrowLeftLineDuotone } from '../icons/arrow-left-line-duotone'
import { SolarArrowLeftLinear } from '../icons/arrow-left-linear'
import { SolarArrowLeftOutline } from '../icons/arrow-left-outline'

const REPRESENTATIVE_ICONS = [
    { name: 'SolarArrowLeftBold', cls: SolarArrowLeftBold },
    { name: 'SolarArrowLeftBoldDuotone', cls: SolarArrowLeftBoldDuotone },
    { name: 'SolarArrowLeftLinear', cls: SolarArrowLeftLinear },
    { name: 'SolarArrowLeftLineDuotone', cls: SolarArrowLeftLineDuotone },
    { name: 'SolarArrowLeftOutline', cls: SolarArrowLeftOutline },
    { name: 'SolarArrowLeftBroken', cls: SolarArrowLeftBroken },
] as const

@Component({
    standalone: true,
    imports: [SolarArrowLeftBold],
    template: `<svg solarArrowLeftBold class="text-blue-500" />`,
})
class WrapperWithUserClass {}

describe('Generated Icon Components (smoke tests)', () => {
    for (const { name, cls } of REPRESENTATIVE_ICONS) {
        describe(name, () => {
            let fixture: ComponentFixture<any>

            beforeEach(async () => {
                await TestBed.configureTestingModule({
                    imports: [cls],
                }).compileComponents()
                fixture = TestBed.createComponent(cls)
            })

            it('should create and render basic SVG structure', () => {
                fixture.detectChanges()
                expect(fixture.componentInstance).toBeTruthy()
                expect(fixture.nativeElement.classList.contains('solar')).toBe(true)

                const paths = fixture.nativeElement.querySelectorAll(
                    'path, circle, rect, line, polyline, polygon'
                )
                expect(paths.length).toBeGreaterThan(0)
            })

            it('should have correct default SVG attributes', () => {
                fixture.detectChanges()
                expect(fixture.nativeElement.getAttribute('xmlns')).toBe(
                    'http://www.w3.org/2000/svg'
                )
                expect(fixture.nativeElement.getAttribute('viewBox')).toBe('0 0 24 24')
                expect(fixture.nativeElement.getAttribute('width')).toBe('1em')
                expect(fixture.nativeElement.style.getPropertyValue('font-size')).toBe(
                    'var(--solar-size, 24px)'
                )
            })
        })
    }
})

describe('Static icon class merge', () => {
    let fixture: ComponentFixture<WrapperWithUserClass>

    beforeEach(async () => {
        await TestBed.configureTestingModule({
            imports: [WrapperWithUserClass],
        }).compileComponents()
        fixture = TestBed.createComponent(WrapperWithUserClass)
        fixture.detectChanges()
    })

    it('should merge user class with host.class on the same element', () => {
        const svg = fixture.nativeElement.querySelector('svg')
        expect(svg).toBeTruthy()
        expect(svg.classList.contains('solar')).toBe(true)
        expect(svg.classList.contains('solar-arrow-left-bold')).toBe(true)
        expect(svg.classList.contains('text-blue-500')).toBe(true)
    })
})
