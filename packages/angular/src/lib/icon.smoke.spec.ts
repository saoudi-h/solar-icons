/**
 * Smoke tests for generated icon components.
 */
import { type ComponentFixture, TestBed } from '@angular/core/testing'
import { ArrowLeftBold } from '../icons/arrows/Bold/ArrowLeftBold'
import { ArrowLeftBoldDuotone } from '../icons/arrows/BoldDuotone/ArrowLeftBoldDuotone'
import { ArrowLeftBroken } from '../icons/arrows/Broken/ArrowLeftBroken'
import { ArrowLeftLinear } from '../icons/arrows/Linear/ArrowLeftLinear'
import { ArrowLeftLineDuotone } from '../icons/arrows/LineDuotone/ArrowLeftLineDuotone'
import { ArrowLeftOutline } from '../icons/arrows/Outline/ArrowLeftOutline'

const REPRESENTATIVE_ICONS = [
    { name: 'ArrowLeftBold', cls: ArrowLeftBold },
    { name: 'ArrowLeftBoldDuotone', cls: ArrowLeftBoldDuotone },
    { name: 'ArrowLeftLinear', cls: ArrowLeftLinear },
    { name: 'ArrowLeftLineDuotone', cls: ArrowLeftLineDuotone },
    { name: 'ArrowLeftOutline', cls: ArrowLeftOutline },
    { name: 'ArrowLeftBroken', cls: ArrowLeftBroken },
] as const

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
                expect(fixture.nativeElement.classList.contains('solar-icon')).toBe(true)

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
            })
        })
    }
})
