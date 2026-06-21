import { Component, signal } from '@angular/core'
import { type ComponentFixture, TestBed } from '@angular/core/testing'
import { By } from '@angular/platform-browser'
import { IconBase, SolarDynamicIcon, provideSolarIcons } from './index'

// Mock Icon component using the real base logic
@Component({
    selector: 'svg[solarTestIcon]',
    standalone: true,
    template: `@if (alt(); as title) {
            <title>{{ title }}</title>
        }
        <svg:path d="M0 0h24v24" />`,
})
class TestIcon extends IconBase {}

@Component({
    standalone: true,
    imports: [SolarDynamicIcon],
    template: ` <ng-container [solarIcon]="iconName()" [size]="size()" [color]="color()" /> `,
})
class TestHost {
    iconName = signal<any>('TestIcon')
    size = signal<number | string>(24)
    color = signal<string>('red')
}

describe('SolarDynamicIcon', () => {
    let fixture: ComponentFixture<TestHost>
    let host: TestHost

    beforeEach(async () => {
        await TestBed.configureTestingModule({
            imports: [TestHost, TestIcon],
            providers: [provideSolarIcons({ TestIcon })],
        }).compileComponents()

        fixture = TestBed.createComponent(TestHost)
        host = fixture.componentInstance
        fixture.detectChanges()
    })

    it('should render an icon by name from registry', () => {
        const svg = fixture.debugElement.query(By.css('svg'))
        expect(svg).toBeTruthy()
    })

    it('should update icon when name changes', async () => {
        expect(fixture.debugElement.query(By.css('svg'))).toBeTruthy()

        host.iconName.set('Unknown')
        fixture.detectChanges()

        expect(fixture.debugElement.query(By.css('svg'))).toBeFalsy()
    })

    it('should apply size and color to the dynamic component via host bindings', () => {
        const svg = fixture.debugElement.query(By.css('svg')).nativeElement

        expect(svg.style.width).toBe('24px')
        expect(svg.style.color).toBe('red')

        host.size.set(48)
        host.color.set('blue')
        fixture.detectChanges()

        expect(svg.style.width).toBe('48px')
        expect(svg.style.color).toBe('blue')
    })

    it('should work with direct component class input', () => {
        host.iconName.set(TestIcon)
        fixture.detectChanges()

        const svg = fixture.debugElement.query(By.css('svg'))
        expect(svg).toBeTruthy()
    })
})
