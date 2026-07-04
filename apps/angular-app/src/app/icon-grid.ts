import {
    Component,
    signal,
    computed,
    ChangeDetectionStrategy,
    ViewEncapsulation,
} from '@angular/core';
import { SolarIcon, useSolar } from '@solar-icons/angular';
import * as icons from '@solar-icons/angular/dynamic';
import type { IconComponent } from '@solar-icons/angular';
import { STYLES, type IconStyle } from './icon-list';

const STYLE_KEBAB: Record<string, string> = {
    Bold: 'bold',
    BoldDuotone: 'bold-duotone',
    Broken: 'broken',
    Linear: 'linear',
    LineDuotone: 'line-duotone',
    Outline: 'outline',
};

function toKebabCase(pascal: string): string {
    return pascal
        .replace(/([a-z0-9])([A-Z])/g, '$1-$2')
        .replace(/([A-Z])([A-Z][a-z])/g, '$1-$2')
        .toLowerCase();
}

@Component({
    selector: 'app-icon-grid',
    standalone: true,
    imports: [SolarIcon],
    encapsulation: ViewEncapsulation.None,
    template: `
        <div class="text-center space-y-2">
            <h1 class="text-4xl font-bold text-white">Solar Icons - Angular</h1>
            <p class="text-slate-400">
                Displaying {{ totalIcons() }} icons in
                <span class="text-amber-400">{{ selectedStyle() }}</span> style
            </p>
        </div>

        <div class="bg-slate-800/50 rounded-2xl p-6 border border-slate-700/50 backdrop-blur-sm shadow-2xl">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-6">
                <div class="space-y-2">
                    <label class="text-sm font-medium text-slate-300">Style</label>
                    <div class="flex flex-wrap gap-2">
                        @for (style of styles; track style) {
                            <button
                                class="px-3 py-1.5 rounded-lg text-sm font-medium transition-all"
                                [class.bg-amber-500]="selectedStyle() === style"
                                [class.text-slate-900]="selectedStyle() === style"
                                [class.bg-slate-700]="selectedStyle() !== style"
                                [class.text-slate-300]="selectedStyle() !== style"
                                (click)="selectedStyle.set(style)"
                            >{{ style }}</button>
                        }
                    </div>
                </div>

                <div class="space-y-2">
                    <label class="text-sm font-medium text-slate-300">Color</label>
                    <div class="flex items-center gap-3">
                        <input type="color" [value]="solar.color()" (input)="solar.setColor(($any($event.target).value))"
                            class="w-10 h-10 rounded-lg cursor-pointer border-0 bg-transparent" />
                        <input type="text" [value]="solar.color()" (input)="solar.setColor(($any($event.target).value))"
                            class="flex-1 bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 text-sm font-mono focus:border-amber-500 outline-none" />
                    </div>
                </div>

                <div class="space-y-2">
                    <label class="text-sm font-medium text-slate-300">Size: <span class="text-amber-400">{{ solar.size() }}px</span></label>
                    <input type="range" min="16" max="64" [value]="solar.size()" (input)="solar.setSize(parseInt(($any($event.target).value)))" class="w-full accent-amber-500" />
                </div>

                <div class="space-y-2" [class.opacity-30]="!isLinearLike()">
                    <label class="text-sm font-medium text-slate-300">Stroke Width: <span class="text-amber-400">{{ solar.strokeWidth() }}</span></label>
                    <input type="range" min="0.5" max="4" step="0.1" [value]="solar.strokeWidth()" (input)="solar.setStrokeWidth(parseFloat(($any($event.target).value)))" [disabled]="!isLinearLike()" class="w-full accent-amber-500" />
                </div>

                <div class="space-y-2">
                    <label class="text-sm font-medium text-slate-300">Search</label>
                    <input type="text" placeholder="Filter icons..." [value]="searchQuery()" (input)="searchQuery.set(($any($event.target).value))"
                        class="w-full bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 placeholder-slate-500 focus:border-amber-500 outline-none" />
                </div>
            </div>

            @if (isDuotone()) {
                <div class="mt-6 pt-6 border-t border-slate-700/50">
                    <div class="flex items-center gap-2 mb-4">
                        <span class="text-sm font-semibold text-blue-400 uppercase tracking-wide">Duotone CSS-vars</span>
                        <span class="text-xs text-slate-500 bg-slate-700/50 px-2 py-0.5 rounded">--solar-duotone-color / --solar-duotone-opacity</span>
                    </div>
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">
                        <div class="space-y-2">
                            <label class="text-sm font-medium text-slate-300">Accent Color: <span class="text-blue-400 font-mono text-xs">{{ solar.secondaryColor() }}</span></label>
                            <div class="flex items-center gap-3">
                                <input type="color" [value]="solar.secondaryColor()" (input)="solar.setSecondaryColor(($any($event.target).value))" class="w-10 h-10 rounded-lg cursor-pointer border-0 bg-transparent" />
                                <input type="text" [value]="solar.secondaryColor()" (input)="solar.setSecondaryColor(($any($event.target).value))" class="flex-1 bg-slate-700 border border-slate-600 rounded-lg px-3 py-2 text-slate-200 text-sm font-mono focus:border-blue-400 outline-none" />
                                <button class="px-2 py-1.5 text-xs text-slate-400 hover:text-slate-200 bg-slate-700 rounded-lg border border-slate-600 transition-colors cursor-pointer" (click)="solar.setSecondaryColor('#60a5fa')">reset</button>
                            </div>
                        </div>
                        <div class="space-y-2">
                            <label class="text-sm font-medium text-slate-300">Accent Opacity: <span class="text-blue-400">{{ solar.secondaryOpacity() }}</span></label>
                            <input type="range" min="0" max="1" step="0.05" [value]="solar.secondaryOpacity()" (input)="solar.setSecondaryOpacity(parseFloat(($any($event.target).value)))" class="w-full accent-blue-400" />
                            <div class="flex justify-between text-xs text-slate-500"><span>0</span><span>0.5 (default)</span><span>1</span></div>
                        </div>
                    </div>
                </div>
            }
        </div>

        <div class="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-8 lg:grid-cols-10 xl:grid-cols-12 gap-4">
            @for (item of iconList(); track item.name) {
                <div class="group flex flex-col items-center justify-center gap-2 p-4 bg-slate-800/30 rounded-xl border border-slate-700/30 hover:bg-slate-700/50 hover:border-amber-500/30 transition-all cursor-pointer" [title]="item.name">
                    <div class="flex items-center justify-center" style="min-height: 48px">
                        <ng-container [solarIcon]="item.component" [weight]="selectedStyle()" [size]="solar.size()" [color]="solar.color()"
                            [strokeWidth]="isLinearLike() ? solar.strokeWidth() : undefined"
                            [secondaryColor]="isDuotone() ? solar.secondaryColor() : undefined"
                            [secondaryOpacity]="isDuotone() ? solar.secondaryOpacity() : undefined" />
                    </div>
                    <span class="text-[10px] text-slate-500 group-hover:text-slate-300 truncate w-full text-center transition-colors">{{ item.name }}</span>
                </div>
            }
        </div>

        @if (iconList().length === 0) {
            <div class="text-center py-20 text-slate-500 bg-slate-800/20 rounded-3xl border border-dashed border-slate-700">
                <p class="text-lg italic">No icons found matching "{{ searchQuery() }}"</p>
                <button (click)="searchQuery.set('')" class="mt-4 text-amber-500 hover:underline">Clear search</button>
            </div>
        }
    `,
    changeDetection: ChangeDetectionStrategy.OnPush,
})
export class IconGridComponent {
    readonly solar = useSolar();

    protected readonly styles = STYLES;
    protected readonly selectedStyle = signal<IconStyle>('Bold');
    protected readonly searchQuery = signal('');

    protected readonly isDuotone = computed(
        () => this.selectedStyle() === 'BoldDuotone' || this.selectedStyle() === 'LineDuotone'
    );

    protected readonly isLinearLike = computed(
        () =>
            this.selectedStyle() === 'Linear' ||
            this.selectedStyle() === 'LineDuotone' ||
            this.selectedStyle() === 'Broken'
    );

    protected readonly iconList = computed(() => {
        const entries = Object.entries(icons) as [string, IconComponent][];
        const query = this.searchQuery().toLowerCase();

        const result = entries
            .filter(([key]) => key.startsWith('Solar'))
            .map(([name, component]) => ({
                name: toKebabCase(name.replace(/^Solar/, '')),
                component,
            }))
            .sort((a, b) => a.name.localeCompare(b.name));

        if (!query) return result;
        return result.filter(item => item.name.includes(query));
    });

    protected readonly totalIcons = computed(() => this.iconList().length);

    constructor() {
        this.solar.setColor('#f59e0b');
        this.solar.setSize(32);
        this.solar.setStrokeWidth(1.5);
        this.solar.setSecondaryColor('#60a5fa');
        this.solar.setSecondaryOpacity(0.5);
    }

    protected parseFloat(v: string): number {
        return Number.parseFloat(v);
    }
    protected parseInt(v: string): number {
        return Number.parseInt(v, 10);
    }
}
