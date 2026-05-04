import { Component, ViewEncapsulation } from '@angular/core'
import { ComponentFixture, TestBed } from '@angular/core/testing'
import { SolarTitleDirective } from './title.directive'

/**
 * Host component that uses the SolarTitleDirective via hostDirectives
 * (same pattern as IconBase)
 */
@Component({
    selector: 'svg[hostTest]',
    template: '',
    standalone: true,
    encapsulation: ViewEncapsulation.None,
    hostDirectives: [
        {
            directive: SolarTitleDirective,
            inputs: ['alt'],
        },
    ],
})
class HostTestComponent {}

describe('SolarTitleDirective', () => {
    let fixture: ComponentFixture<HostTestComponent>

    beforeEach(async () => {
        await TestBed.configureTestingModule({
            imports: [HostTestComponent],
        }).compileComponents()

        fixture = TestBed.createComponent(HostTestComponent)
    })

    it('should create', () => {
        fixture.detectChanges()
        expect(fixture.componentInstance).toBeTruthy()
    })

    it('should NOT render a <title> when alt is not provided', () => {
        fixture.detectChanges()
        const title = fixture.nativeElement.querySelector('title')
        expect(title).toBeNull()
    })

    it('should render a <title> when alt is provided', () => {
        fixture.componentRef.setInput('alt', 'Arrow Left')
        fixture.detectChanges()
        const title = fixture.nativeElement.querySelector('title')
        expect(title).toBeTruthy()
        expect(title.textContent).toBe('Arrow Left')
    })

    it('should update <title> text when alt changes', () => {
        fixture.componentRef.setInput('alt', 'First')
        fixture.detectChanges()
        expect(fixture.nativeElement.querySelector('title')?.textContent).toBe('First')

        fixture.componentRef.setInput('alt', 'Second')
        fixture.detectChanges()
        expect(fixture.nativeElement.querySelector('title')?.textContent).toBe('Second')
    })

    it('should remove <title> when alt is cleared', () => {
        fixture.componentRef.setInput('alt', 'Has Title')
        fixture.detectChanges()
        expect(fixture.nativeElement.querySelector('title')).toBeTruthy()

        fixture.componentRef.setInput('alt', null)
        fixture.detectChanges()
        expect(fixture.nativeElement.querySelector('title')).toBeNull()
    })

    it('should insert <title> as the first child', () => {
        fixture.componentRef.setInput('alt', 'First Child')
        fixture.detectChanges()
        const firstChild = fixture.nativeElement.firstElementChild
        expect(firstChild?.tagName.toLowerCase()).toBe('title')
    })
})
