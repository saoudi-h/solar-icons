import { ChangeDetectionStrategy, Component, ViewEncapsulation } from '@angular/core'
import { ComponentFixture, TestBed } from '@angular/core/testing'
import { IconBase } from './icon-base'

@Component({
    selector: 'svg[testIcon]',
    template: '<svg:path d="M0 0h24v24H0z" fill="none"/>',
    standalone: true,
    encapsulation: ViewEncapsulation.None,
    changeDetection: ChangeDetectionStrategy.OnPush,
})
class TestIcon extends IconBase {}

describe('IconBase', () => {
    let component: TestIcon
    let fixture: ComponentFixture<TestIcon>

    beforeEach(async () => {
        await TestBed.configureTestingModule({
            imports: [TestIcon],
        }).compileComponents()

        fixture = TestBed.createComponent(TestIcon)
        component = fixture.componentInstance
    })

    const getSvgAttribute = (attr: string) => fixture.nativeElement.getAttribute(attr)

    it('should create', () => {
        fixture.detectChanges()
        expect(component).toBeTruthy()
    })

    it('should apply default class', () => {
        fixture.detectChanges()
        expect(fixture.nativeElement.classList.contains('solar-icon')).toBeTruthy()
    })

    describe('size input', () => {
        it('should default to 1em', () => {
            fixture.detectChanges()
            expect(getSvgAttribute('width')).toBe('1em')
            expect(getSvgAttribute('height')).toBe('1em')
        })

        it('should apply size', () => {
            fixture.componentRef.setInput('size', '24px')
            fixture.detectChanges()
            expect(getSvgAttribute('width')).toBe('24px')
            expect(getSvgAttribute('height')).toBe('24px')
        })

        it('should allow numeric size', () => {
            fixture.componentRef.setInput('size', 48)
            fixture.detectChanges()
            expect(getSvgAttribute('width')).toBe('48')
            expect(getSvgAttribute('height')).toBe('48')
        })
    })

    describe('color input', () => {
        it('should default to currentColor', () => {
            fixture.detectChanges()
            expect(getSvgAttribute('color')).toBe('currentColor')
        })

        it('should apply color', () => {
            fixture.componentRef.setInput('color', 'red')
            fixture.detectChanges()
            expect(getSvgAttribute('color')).toBe('red')
        })
    })

    describe('mirrored input', () => {
        it('should default to false', () => {
            fixture.detectChanges()
            expect(getSvgAttribute('transform')).toBeNull()
        })

        it('should apply scale(-1, 1) when mirrored', () => {
            fixture.componentRef.setInput('mirrored', true)
            fixture.detectChanges()
            expect(getSvgAttribute('transform')).toBe('scale(-1, 1)')
        })
    })

    describe('alt / accessibility', () => {
        it('should hide icon from screen readers if no alt provided', () => {
            fixture.detectChanges()
            expect(getSvgAttribute('aria-hidden')).toBe('true')
        })

        it('should expose icon and render title if alt provided', () => {
            fixture.componentRef.setInput('alt', 'Test Label')
            fixture.detectChanges()
            expect(getSvgAttribute('aria-hidden')).toBe('false')

            // The <title> is injected directly into the SVG DOM by SolarTitleDirective
            // (via createElementNS + prepend), so we query nativeElement directly.
            const titleEl = fixture.nativeElement.querySelector('title')
            expect(titleEl).toBeTruthy()
            expect(titleEl.textContent).toBe('Test Label')
        })
    })
})
