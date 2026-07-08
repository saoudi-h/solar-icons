import { Component, ChangeDetectionStrategy, signal, ViewEncapsulation } from '@angular/core';
import {
    SolarProvider,
    SolarHomeBold,
    SolarSettingsBold,
    SolarUserBold,
    SolarHeartBold,
    SolarStarBold,
    SolarBellBold,
    SolarInfoCircleBold,
} from '@solar-icons/angular';
import { IconGridComponent } from './icon-grid';
import { ProviderDemoComponent } from './provider-demo';

@Component({
    selector: 'app-root',
    standalone: true,
    imports: [
        IconGridComponent,
        ProviderDemoComponent,
    SolarProvider,
        SolarHomeBold,
        SolarSettingsBold,
        SolarUserBold,
        SolarHeartBold,
        SolarStarBold,
        SolarBellBold,
        SolarInfoCircleBold,
    ],
    styleUrl: './app.css',
    encapsulation: ViewEncapsulation.None,
    template: `
        <div class="min-h-screen bg-slate-900 text-slate-200 p-8">
            <div class="max-w-7xl mx-auto space-y-8">

                <!-- ===== 1. Icon Grid ===== -->
                <solar-provider>
                    <app-icon-grid />
                </solar-provider>

                <!-- ===== 2. CSS Custom Properties ===== -->
                <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
                    <h2 class="text-xl font-bold text-white mb-1">2. CSS Custom Properties</h2>
                    <p class="text-slate-400 text-sm mb-4">Control icons via CSS custom properties on parent elements.</p>
                    <div class="flex items-center gap-4 mb-4">
                        <div class="space-y-1">
                            <span class="text-xs text-slate-400">Color</span>
                            <input type="color" [value]="cssColor()" (input)="cssColor.set(($any($event.target).value))"
                                class="w-10 h-10 rounded cursor-pointer border-0 bg-transparent" />
                        </div>
                        <div class="space-y-1">
                            <span class="text-xs text-slate-400">Size ({{ cssSize() }}px)</span>
                            <input type="range" min="16" max="64" [value]="cssSize()" (input)="cssSize.set(parseInt(($any($event.target).value)))"
                                class="w-32 accent-amber-500" />
                        </div>
                    </div>
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div class="space-y-2">
                            <code class="text-xs text-slate-500 block">style="--solar-color: \u2026; --solar-size: \u2026;"</code>
                            <div class="bg-slate-900 rounded-lg p-4 flex gap-4"
                                [style.--solar-color]="cssColor()" [style.--solar-size.px]="cssSize()">
                                <svg solarHomeBold></svg>
                                <svg solarSettingsBold></svg>
                                <svg solarUserBold></svg>
                            </div>
                        </div>
                        <div class="space-y-2">
                            <code class="text-xs text-slate-500 block">Tailwind [style.--solar-color="..."]</code>
                            <div class="bg-slate-900 rounded-lg p-4 flex gap-4"
                                [style.--solar-color]="cssColor()" [style.--solar-size.px]="cssSize()">
                                <svg solarHeartBold></svg>
                                <svg solarStarBold></svg>
                                <svg solarBellBold></svg>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- ===== 3. SolarProvider + useSolar ===== -->
                <solar-provider>
                    <app-provider-demo />
                </solar-provider>

                <!-- ===== 4. CSS Class Styling ===== -->
                <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
                    <h2 class="text-xl font-bold text-white mb-1">4. CSS Class Styling</h2>
                    <p class="text-slate-400 text-sm mb-4">Each icon is targetable via CSS class selectors.</p>
                    <div class="bg-slate-900 rounded-lg p-4 flex gap-4">
                        <svg solarHomeBold></svg>
                        <svg solarStarBold style="color: #60a5fa"></svg>
                        <svg solarHeartBold></svg>
                    </div>
                </div>

                <!-- ===== 5. Accessibility ===== -->
                <div class="bg-slate-800/30 rounded-2xl p-6 border border-slate-700/50">
                    <h2 class="text-xl font-bold text-white mb-1">5. Accessibility</h2>
                    <p class="text-slate-400 text-sm mb-4">Icons have aria-hidden="true" by default. Pass alt, aria-label, or title to make them accessible.</p>
                    <div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
                        <div class="bg-slate-900 rounded-lg p-4 space-y-2">
                            <code class="text-xs text-green-400 block">Default (aria-hidden)</code>
                            <svg solarInfoCircleBold></svg>
                        </div>
                        <div class="bg-slate-900 rounded-lg p-4 space-y-2">
                            <code class="text-xs text-green-400 block">alt="Information"</code>
                            <svg solarInfoCircleBold alt="Information"></svg>
                        </div>
                        <div class="bg-slate-900 rounded-lg p-4 space-y-2">
                            <code class="text-xs text-green-400 block">aria-label</code>
                            <svg solarInfoCircleBold aria-label="Information about this icon"></svg>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    `,
    changeDetection: ChangeDetectionStrategy.OnPush,
})
export class App {
    readonly cssColor = signal('#f59e0b');
    readonly cssSize = signal(40);

    protected parseInt(v: string): number { return Number.parseInt(v, 10); }
}
