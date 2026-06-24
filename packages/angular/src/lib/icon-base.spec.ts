import { ChangeDetectionStrategy, Component, ViewEncapsulation } from '@angular/core'
import { type ComponentFixture, TestBed } from '@angular/core/testing'
import { IconBase } from './icon-base'

@Component({
    selector: 'svg[testIcon]',
    template: '<svg:path d="M0 0h24v24H0z" fill="none"/>',
    standalone: true,
    encapsulation: ViewEncapsulation.None,
    changeDetection: ChangeDetectionStrategy.OnPush,
    host: {
        class: 'solar-icon solar-test-icon',
    },
})
class TestIcon extends IconBase {}

describe('IconBase', () => {
    let fixture: ComponentFixture<TestIcon>

    beforeEach(async () => {
        await TestBed.configureTestingModule({
            imports: [TestIcon],
        }).compileComponents()

        fixture = TestBed.createComponent(TestIcon)
    })

    const getSvgAttribute = (attr: string) => fixture.nativeElement.getAttribute(attr)
    const getSvgStyle = (prop: string) => fixture.nativeElement.style.getPropertyValue(prop)

    describe('default attributes', () => {
        it('should have default SVG attributes', () => {
            fixture.detectChanges()
            expect(getSvgAttribute('xmlns')).toBe('http://www.w3.org/2000/svg')
            expect(getSvgAttribute('viewBox')).toBe('0 0 24 24')
            expect(getSvgAttribute('fill')).toBe('none')
        })

        it('should have default class', () => {
            fixture.detectChanges()
            expect(fixture.nativeElement.classList.contains('solar-icon')).toBe(true)
            expect(fixture.nativeElement.classList.contains('solar-test-icon')).toBe(true)
        })
    })

    describe('size input', () => {
        it('should default to CSS var fallback', () => {
            fixture.detectChanges()
            expect(getSvgStyle('width')).toBe('var(--solar-icon-size, 24px)')
        })
    })

    describe('color input', () => {
        it('should default to CSS var fallback', () => {
            fixture.detectChanges()
            expect(getSvgStyle('color')).toBe('var(--solar-icon-color, currentColor)')
        })
    })

    describe('accessibility (alt input)', () => {
        it('should be aria-hidden by default', () => {
            fixture.detectChanges()
            expect(getSvgAttribute('aria-hidden')).toBe('true')
        })
    })
})
