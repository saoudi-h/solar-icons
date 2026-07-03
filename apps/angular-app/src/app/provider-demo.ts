import { Component, ChangeDetectionStrategy, inject, Optional, signal } from '@angular/core';
import { FormsModule } from '@angular/forms';
import {
    SolarService,
    SolarProviderComponent,
    SolarStarBold,
    SolarHeartBold,
    SolarHomeLineDuotone,
} from '@solar-icons/angular';

@Component({
    selector: 'app-provider-demo',
    standalone: true,
    imports: [FormsModule, SolarProviderComponent, SolarHomeLineDuotone, SolarStarBold, SolarHeartBold],
    template: `
        <h2 class="text-xl font-bold text-white mb-1">3. SolarProvider + useSolar</h2>
        <p class="text-slate-400 text-sm mb-4">
            Wrap icons in a provider to control them via CSS custom properties.
            The service lets you mutate those properties from a child component.
        </p>

        <div class="flex items-center gap-4 mb-4 flex-wrap">
            <div class="space-y-1">
                <span class="text-xs text-slate-400">Color</span>
                <input type="color" [value]="demoColor()" (input)="demoColor.set(($any($event.target).value))"
                    class="w-10 h-10 rounded cursor-pointer border-0 bg-transparent block" />
            </div>
            <div class="space-y-1">
                <span class="text-xs text-slate-400">Size ({{ demoSize() }}px)</span>
                <input type="range" min="16" max="64" [value]="demoSize()" (input)="demoSize.set(parseInt(($any($event.target).value)))"
                    class="w-32 accent-amber-500" />
            </div>
            <div class="space-y-1">
                <span class="text-xs text-slate-400">Stroke</span>
                <input type="range" min="0.5" max="3" step="0.1" [value]="demoStroke()" (input)="demoStroke.set(parseFloat(($any($event.target).value)))"
                    class="w-32 accent-amber-500" />
            </div>
        </div>

        <solar-provider [color]="demoColor()" [size]="demoSize()" [strokeWidth]="demoStroke()">
            <div class="bg-slate-900 rounded-lg p-4">
                <div class="flex items-center gap-4 flex-wrap">
                    <div class="flex gap-2">
                        <button class="px-3 py-1.5 rounded-lg text-sm font-medium bg-red-500 text-white border-none cursor-pointer" (click)="setRed()">Red</button>
                        <button class="px-3 py-1.5 rounded-lg text-sm font-medium bg-blue-500 text-white border-none cursor-pointer" (click)="setBlue()">Blue</button>
                        <button class="px-3 py-1.5 rounded-lg text-sm font-medium bg-green-500 text-white border-none cursor-pointer" (click)="setGreen()">Green</button>
                        <button class="px-3 py-1.5 rounded-lg text-sm font-medium bg-slate-600 text-white border-none cursor-pointer" (click)="setBig()">48px</button>
                        <button class="px-3 py-1.5 rounded-lg text-sm font-medium bg-slate-600 text-white border-none cursor-pointer" (click)="setSmall()">24px</button>
                    </div>
                    <div class="flex gap-4 ml-auto">
                        <svg solarHomeLineDuotone></svg>
                        <svg solarStarBold style="color: #ef4444"></svg>
                        <svg solarHeartBold></svg>
                    </div>
                </div>
            </div>
        </solar-provider>
    `,
    changeDetection: ChangeDetectionStrategy.OnPush,
})
export class ProviderDemoComponent {
    private readonly solar = inject(SolarService, { optional: true });

    readonly demoColor = signal('#f59e0b');
    readonly demoSize = signal(36);
    readonly demoStroke = signal(1.5);

    setRed() { this.solar?.setColor('#ef4444'); }
    setBlue() { this.solar?.setColor('#3b82f6'); }
    setGreen() { this.solar?.setColor('#22c55e'); }
    setBig() { this.solar?.setSize(48); }
    setSmall() { this.solar?.setSize(24); }

    protected parseFloat(v: string): number { return Number.parseFloat(v); }
    protected parseInt(v: string): number { return Number.parseInt(v, 10); }
}
