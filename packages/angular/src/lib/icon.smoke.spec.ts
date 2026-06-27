import { type ComponentFixture, TestBed } from '@angular/core/testing'
import { ArrowLeftBoldDuotone } from '../icons/bold-duotone/arrow-left-bold-duotone'
import { ArrowLeftBold } from '../icons/bold/arrow-left-bold'
import { ArrowLeftBroken } from '../icons/broken/arrow-left-broken'
import { ArrowLeftLineDuotone } from '../icons/line-duotone/arrow-left-line-duotone'
import { ArrowLeftLinear } from '../icons/linear/arrow-left-linear'
import { ArrowLeftOutline } from '../icons/outline/arrow-left-outline'

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
                expect(fixture.nativeElement.getAttribute('width')).toBe('var(--solar-size, 24px)')
            })
        })
    }
})
