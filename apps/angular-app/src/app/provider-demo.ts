import { Component, ChangeDetectionStrategy } from '@angular/core';
import { useSolar, SolarHomeBold, SolarStarBold, SolarHeartBold } from '@solar-icons/angular';

/**
 * Child-driven demo: component inside <solar-provider> uses
 * useSolar() to read/write icon settings directly.
 */
@Component({
    selector: 'app-provider-demo',
    standalone: true,
    imports: [SolarHomeBold, SolarStarBold, SolarHeartBold],
    template: `
        <h2 class="text-xl font-bold text-white mb-1">3. SolarProvider + useSolar()</h2>
        <p class="text-slate-400 text-sm mb-4">
            Child-driven: this component calls <code class="text-amber-400">useSolar()</code>
            to read/write the provider state directly.
        </p>

        <div class="flex items-center gap-4 mb-4 flex-wrap">
            <div class="space-y-1">
                <span class="text-xs text-slate-400">Color</span>
                <input type="color" [value]="solar.color()" (input)="solar.setColor(($any($event.target).value))"
                    class="w-10 h-10 rounded cursor-pointer border-0 bg-transparent block" />
            </div>
            <div class="space-y-1">
                <span class="text-xs text-slate-400">Size ({{ solar.size() }}px)</span>
                <input type="range" min="16" max="64" [value]="solar.size()"
                    (input)="solar.setSize(parseInt(($any($event.target).value)))"
                    class="w-32 accent-amber-500" />
            </div>
            <div class="space-y-1">
                <span class="text-xs text-slate-400">Stroke</span>
                <input type="range" min="0.5" max="3" step="0.1" [value]="solar.strokeWidth()"
                    (input)="solar.setStrokeWidth(parseFloat(($any($event.target).value)))"
                    class="w-32 accent-amber-500" />
            </div>
        </div>

        <div class="bg-slate-900 rounded-lg p-4">
            <div class="flex gap-4">
                <svg solarHomeBold></svg>
                <svg solarStarBold></svg>
                <svg solarHeartBold></svg>
            </div>
        </div>
    `,
    changeDetection: ChangeDetectionStrategy.OnPush,
})
export class ProviderDemoComponent {
    readonly solar = useSolar();

    constructor() {
        this.solar.setColor('#f59e0b');
        this.solar.setSize(36);
        this.solar.setStrokeWidth(1.5);
    }

    protected parseFloat(v: string): number { return Number.parseFloat(v); }
    protected parseInt(v: string): number { return Number.parseInt(v, 10); }
}
