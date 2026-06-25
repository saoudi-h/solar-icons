import {
    Component,
    signal,
    computed,
    ChangeDetectionStrategy,
    effect,
    type Type,
} from '@angular/core';
import { FormsModule } from '@angular/forms';

import { ALL_ICONS, STYLES, type IconStyle } from './icon-list';
import {
    SolarDynamicIcon,
    SolarProviderComponent,
    useSolar,
    type IconBase,
} from '@solar-icons/angular';
import { ProviderDemoComponent } from './provider-demo';

/**
 * Lazy imports of the per-style icon barrels. Replaces the V2
 * `CATEGORY_LOADERS` (37 categories) with the V3 flat structure (6 styles).
 * Each barrel re-exports 1246 icon components for that style.
 */
const STYLE_BARRELS: Record<IconStyle, () => Promise<Record<string, unknown>>> = {
    Bold: () => import('@solar-icons/angular/style/bold'),
    BoldDuotone: () => import('@solar-icons/angular/style/bold-duotone'),
    Broken: () => import('@solar-icons/angular/style/broken'),
    Linear: () => import('@solar-icons/angular/style/linear'),
    LineDuotone: () => import('@solar-icons/angular/style/line-duotone'),
    Outline: () => import('@solar-icons/angular/style/outline'),
};

@Component({
    selector: 'app-root',
    standalone: true,
    imports: [
        FormsModule,
        SolarDynamicIcon,
        SolarProviderComponent,
        ProviderDemoComponent,
    ],
    templateUrl: './app.html',
    styleUrl: './app.css',
    changeDetection: ChangeDetectionStrategy.OnPush,
})
export class App {
    protected readonly styles = STYLES;
    protected readonly selectedStyle = signal<IconStyle>('Bold');
    protected readonly iconSize = signal(32);
    protected readonly iconColor = signal('#f59e0b');
    protected readonly searchQuery = signal('');
    protected readonly duotoneColor = signal('#60a5fa');
    protected readonly duotoneOpacity = signal(0.5);
    protected readonly strokeWidth = signal(1.5);

    /**
     * Map of `name + style` -> Component class. Lazy loaded per style.
     * Cleared and re-populated when the user changes `selectedStyle`.
     */
    protected readonly iconMap = signal<Map<string, Type<IconBase>>>(new Map());
    protected readonly isStyleLoading = signal(false);

    // CSS vars demo
    protected readonly cssColor = signal('#f59e0b');
    protected readonly cssSize = signal(40);

    // Provider demo
    protected readonly providerColor = signal('#f59e0b');
    protected readonly providerSize = signal(36);
    protected readonly providerStroke = signal(1.5);

    protected readonly isDuotone = computed(
        () => this.selectedStyle() === 'BoldDuotone' || this.selectedStyle() === 'LineDuotone'
    );

    protected readonly isLinearLike = computed(
        () =>
            this.selectedStyle() === 'Linear' ||
            this.selectedStyle() === 'LineDuotone' ||
            this.selectedStyle() === 'Broken'
    );

    constructor() {
        // Lazy-load the icon barrel for the currently selected style.
        effect(() => {
            const style = this.selectedStyle();
            this.isStyleLoading.set(true);
            this.iconMap.set(new Map());
            STYLE_BARRELS[style]().then((module) => {
                const map = new Map<string, Type<IconBase>>();
                for (const [name, component] of Object.entries(module)) {
                    if (typeof component === 'function') {
                        map.set(name + style, component as Type<IconBase>);
                    }
                }
                this.iconMap.set(map);
                this.isStyleLoading.set(false);
            });
        });
    }

    protected readonly displayIcons = computed(() => {
        const query = this.searchQuery().toLowerCase();
        const style = this.selectedStyle();
        const map = this.iconMap();

        const filteredNames = query
            ? ALL_ICONS.filter((name) => name.toLowerCase().includes(query))
            : ALL_ICONS;

        const result: { name: string; component: Type<IconBase> }[] = [];
        for (const name of filteredNames) {
            const component = map.get(name + style);
            if (component) {
                result.push({ name, component });
            }
        }
        return result;
    });

    protected trackByIconName(_index: number, item: { name: string }): string {
        return item.name;
    }
}
