/**
 * Smoke tests for generated icon components.
 *
 * Rather than testing every icon (1700+), we validate the contract that every
 * generated icon must satisfy:
 *
 *  1. It is a valid Angular standalone component.
 *  2. Its selector follows the pattern `svg[solar<GlobalName>]`.
 *  3. It renders SVG path content inside the host element.
 *  4. It inherits all IconBase inputs (size, color, mirrored, alt).
 *  5. It has the `solar-icon` CSS class applied to the host.
 */
import { ComponentFixture, TestBed } from '@angular/core/testing'
// One representative icon per style — covers all 6 Solar icon styles
import { ArrowLeftBold } from '../icons/arrows/Bold/ArrowLeftBold'
import { ArrowLeftBoldDuotone } from '../icons/arrows/BoldDuotone/ArrowLeftBoldDuotone'
import { ArrowLeftBroken } from '../icons/arrows/Broken/ArrowLeftBroken'
import { ArrowLeftLinear } from '../icons/arrows/Linear/ArrowLeftLinear'
import { ArrowLeftLineDuotone } from '../icons/arrows/LineDuotone/ArrowLeftLineDuotone'
import { ArrowLeftOutline } from '../icons/arrows/Outline/ArrowLeftOutline'

const REPRESENTATIVE_ICONS = [
    { name: 'ArrowLeftBold', cls: ArrowLeftBold, attrSelector: 'solarArrowLeftBold' },
    {
        name: 'ArrowLeftBoldDuotone',
        cls: ArrowLeftBoldDuotone,
        attrSelector: 'solarArrowLeftBoldDuotone',
    },
    { name: 'ArrowLeftLinear', cls: ArrowLeftLinear, attrSelector: 'solarArrowLeftLinear' },
    {
        name: 'ArrowLeftLineDuotone',
        cls: ArrowLeftLineDuotone,
        attrSelector: 'solarArrowLeftLineDuotone',
    },
    { name: 'ArrowLeftOutline', cls: ArrowLeftOutline, attrSelector: 'solarArrowLeftOutline' },
    { name: 'ArrowLeftBroken', cls: ArrowLeftBroken, attrSelector: 'solarArrowLeftBroken' },
] as const

describe('Generated Icon Components (smoke tests)', () => {
    for (const { name, cls, attrSelector } of REPRESENTATIVE_ICONS) {
        describe(name, () => {
            let fixture: ComponentFixture<
                typeof cls extends new (...a: never[]) => infer I ? I : never
            >

            beforeEach(async () => {
                await TestBed.configureTestingModule({
                    imports: [cls],
                }).compileComponents()
                // @ts-expect-error – dynamic class
                fixture = TestBed.createComponent(cls)
            })

            afterEach(() => TestBed.resetTestingModule())

            it('should be a standalone Angular component', () => {
                expect(fixture.componentInstance).toBeTruthy()
            })

            it('should have solar-icon class on host', () => {
                fixture.detectChanges()
                expect(fixture.nativeElement.classList.contains('solar-icon')).toBe(true)
            })

            it('should render SVG path content', () => {
                fixture.detectChanges()
                const paths = fixture.nativeElement.querySelectorAll(
                    'path, circle, rect, line, polyline, polygon'
                )
                expect(paths.length).toBeGreaterThan(0)
            })

            it('should default size to 1em', () => {
                fixture.detectChanges()
                expect(fixture.nativeElement.getAttribute('width')).toBe('1em')
                expect(fixture.nativeElement.getAttribute('height')).toBe('1em')
            })

            it('should apply custom size', () => {
                fixture.componentRef.setInput('size', 32)
                fixture.detectChanges()
                expect(fixture.nativeElement.getAttribute('width')).toBe('32')
            })

            it('should default color to currentColor', () => {
                fixture.detectChanges()
                expect(fixture.nativeElement.getAttribute('color')).toBe('currentColor')
            })

            it('should apply custom color', () => {
                fixture.componentRef.setInput('color', '#ff6b6b')
                fixture.detectChanges()
                expect(fixture.nativeElement.getAttribute('color')).toBe('#ff6b6b')
            })

            it('should be hidden from screen readers by default', () => {
                fixture.detectChanges()
                expect(fixture.nativeElement.getAttribute('aria-hidden')).toBe('true')
            })

            it('should add alt title and expose to screen readers', () => {
                fixture.componentRef.setInput('alt', `${name} icon`)
                fixture.detectChanges()
                expect(fixture.nativeElement.getAttribute('aria-hidden')).toBe('false')
                const title = fixture.nativeElement.querySelector('title')
                expect(title?.textContent).toBe(`${name} icon`)
            })

            it('should apply scale transform when mirrored', () => {
                fixture.componentRef.setInput('mirrored', true)
                fixture.detectChanges()
                expect(fixture.nativeElement.getAttribute('transform')).toBe('scale(-1, 1)')
            })

            it('should use the global name as its attribute selector', () => {
                // The selector must follow the pattern `svg[solar<GlobalName>]`.
                // We derive the expected camelCase attribute from the class name.
                // e.g. ArrowLeftBold → solarArrowLeftBold
                const expectedAttr = 'solar' + name // `name` is already the global PascalCase class name
                // Read the selector from the component's own decorator-generated metadata.
                // Angular compiles it into the `selectors` array as nested arrays:
                //   [['svg','solarFoo', '', ...], ...]
                // We join everything flat to avoid being coupled to the exact nested structure.
                const selectorsMeta = (cls as { ɵcmp?: { selectors?: unknown } }).ɵcmp?.selectors
                const flat = JSON.stringify(selectorsMeta ?? '')
                expect(flat).toContain(expectedAttr)
            })
        })
    }
})
