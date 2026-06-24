import { type ComponentFixture, TestBed } from '@angular/core/testing'
import { ArrowLeftBoldDuotoneIcon } from '../icons/bold-duotone/arrow-left-bold-duotone'
import { ArrowLeftBoldIcon } from '../icons/bold/arrow-left-bold'
import { ArrowLeftBrokenIcon } from '../icons/broken/arrow-left-broken'
import { ArrowLeftLineDuotoneIcon } from '../icons/line-duotone/arrow-left-line-duotone'
import { ArrowLeftLinearIcon } from '../icons/linear/arrow-left-linear'
import { ArrowLeftOutlineIcon } from '../icons/outline/arrow-left-outline'

const REPRESENTATIVE_ICONS = [
    { name: 'ArrowLeftBold', cls: ArrowLeftBoldIcon },
    { name: 'ArrowLeftBoldDuotone', cls: ArrowLeftBoldDuotoneIcon },
    { name: 'ArrowLeftLinear', cls: ArrowLeftLinearIcon },
    { name: 'ArrowLeftLineDuotone', cls: ArrowLeftLineDuotoneIcon },
    { name: 'ArrowLeftOutline', cls: ArrowLeftOutlineIcon },
    { name: 'ArrowLeftBroken', cls: ArrowLeftBrokenIcon },
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
                expect(fixture.nativeElement.style.width).toBe('var(--solar-icon-size, 24px)')
            })
        })
    }
})
