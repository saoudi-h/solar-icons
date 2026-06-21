import { Component, ChangeDetectionStrategy } from '@angular/core';
import { useSolar, HomeBold, StarBold, HeartBold } from '@solar-icons/angular';

@Component({
    selector: 'app-provider-demo',
    imports: [HomeBold, StarBold, HeartBold],
    template: `
        <div class="provider-demo">
            <div class="provider-buttons">
                <button class="btn-red" (click)="setRed()">Red</button>
                <button class="btn-blue" (click)="setBlue()">Blue</button>
                <button class="btn-green" (click)="setGreen()">Green</button>
                <button class="btn-gray" (click)="setBig()">48px</button>
                <button class="btn-gray" (click)="setSmall()">24px</button>
            </div>
            <div class="provider-icons">
                <svg solarHomeBold></svg>
                <svg solarStarBold [style.color]="'#ef4444'"></svg>
                <svg solarHeartBold></svg>
            </div>
        </div>
    `,
    styles: [`
        .provider-demo { display: flex; flex-wrap: wrap; gap: 1rem; align-items: center; }
        .provider-buttons { display: flex; gap: 0.5rem; }
        .provider-buttons button { padding: 0.375rem 0.75rem; border-radius: 0.5rem; font-size: 0.875rem; font-weight: 500; border: none; cursor: pointer; }
        .btn-red { background: #ef4444; color: white; }
        .btn-blue { background: #3b82f6; color: white; }
        .btn-green { background: #22c55e; color: white; }
        .btn-gray { background: #475569; color: white; }
        .provider-icons { display: flex; gap: 1rem; margin-left: auto; }
    `],
    standalone: true,
    changeDetection: ChangeDetectionStrategy.OnPush,
})
export class ProviderDemoComponent {
    private readonly solar = useSolar();

    setRed() { this.solar.setColor('#ef4444'); }
    setBlue() { this.solar.setColor('#3b82f6'); }
    setGreen() { this.solar.setColor('#22c55e'); }
    setBig() { this.solar.setSize(48); }
    setSmall() { this.solar.setSize(24); }
}
