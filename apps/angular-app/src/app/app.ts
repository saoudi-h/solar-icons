import { Component, signal, computed, inject, OnInit, Type } from '@angular/core';
import { FormsModule } from '@angular/forms';

import { ALL_ICONS, STYLES, IconStyle } from './icon-list';
import { provideSolarIcons, SolarDynamicIcon } from '@solar-icons/angular/lib'
import { IconBase } from '@solar-icons/angular/lib'
import { ArrowDownBold, ArrowLeftBold, ArrowUpBold } from '@solar-icons/angular/arrows';

/**
 * The demo app loads icons per-category using static imports.
 * Vite splits these into separate chunks (one per category),
 * so the browser only parses a fraction of the icon library at a time.
 */
const CATEGORY_LOADERS: Record<string, () => Promise<Record<string, Type<IconBase>>>> = {
    'arrows':           () => import('@solar-icons/angular/arrows') as any,
    'arrows-action':    () => import('@solar-icons/angular/icons/arrows-action') as any,
    'astronomy':        () => import('@solar-icons/angular/icons/astronomy') as any,
    'building':         () => import('@solar-icons/angular/icons/building') as any,
    'business':         () => import('@solar-icons/angular/icons/business') as any,
    'call':             () => import('@solar-icons/angular/icons/call') as any,
    'devices':          () => import('@solar-icons/angular/icons/devices') as any,
    'faces':            () => import('@solar-icons/angular/icons/faces') as any,
    'files':            () => import('@solar-icons/angular/icons/files') as any,
    'folders':          () => import('@solar-icons/angular/icons/folders') as any,
    'food':             () => import('@solar-icons/angular/icons/food') as any,
    'hands':            () => import('@solar-icons/angular/icons/hands') as any,
    'home':             () => import('@solar-icons/angular/icons/home') as any,
    'it':               () => import('@solar-icons/angular/icons/it') as any,
    'like':             () => import('@solar-icons/angular/icons/like') as any,
    'list':             () => import('@solar-icons/angular/icons/list') as any,
    'map':              () => import('@solar-icons/angular/icons/map') as any,
    'medicine':         () => import('@solar-icons/angular/icons/medicine') as any,
    'messages':         () => import('@solar-icons/angular/icons/messages') as any,
    'money':            () => import('@solar-icons/angular/icons/money') as any,
    'nature':           () => import('@solar-icons/angular/icons/nature') as any,
    'notes':            () => import('@solar-icons/angular/icons/notes') as any,
    'notifications':    () => import('@solar-icons/angular/icons/notifications') as any,
    'parts':            () => import('@solar-icons/angular/icons/parts') as any,
    'school':           () => import('@solar-icons/angular/icons/school') as any,
    'search':           () => import('@solar-icons/angular/icons/search') as any,
    'security':         () => import('@solar-icons/angular/icons/security') as any,
    'settings':         () => import('@solar-icons/angular/icons/settings') as any,
    'shopping':         () => import('@solar-icons/angular/icons/shopping') as any,
    'sports':           () => import('@solar-icons/angular/icons/sports') as any,
    'text-formatting':  () => import('@solar-icons/angular/icons/text-formatting') as any,
    'time':             () => import('@solar-icons/angular/icons/time') as any,
    'tools':            () => import('@solar-icons/angular/icons/tools') as any,
    'ui':               () => import('@solar-icons/angular/icons/ui') as any,
    'users':            () => import('@solar-icons/angular/icons/users') as any,
    'video':            () => import('@solar-icons/angular/icons/video') as any,
    'weather':          () => import('@solar-icons/angular/icons/weather') as any,
};

@Component({
    selector: 'app-root',
    standalone: true,
    imports: [FormsModule, SolarDynamicIcon],
    providers: [provideSolarIcons({ ArrowDownBold, ArrowLeftBold })],
    templateUrl: './app.html',
    styleUrl: './app.css',
})
export class App implements OnInit {
    protected readonly ArrowUpBold = ArrowUpBold
    private readonly iconMap = new Map<string, Type<IconBase>>();
    
    protected readonly styles = STYLES;
    protected readonly selectedStyle = signal<IconStyle>('Bold');
    protected readonly iconSize = signal(32);
    protected readonly iconColor = signal('#f59e0b');
    protected readonly searchQuery = signal('');
    protected readonly loadedCategories = signal(0);
    protected readonly totalCategories = Object.keys(CATEGORY_LOADERS).length;

    async ngOnInit(): Promise<void> {
        // Load one category at a time, yielding to the browser between each.
        // This keeps the main thread responsive and prevents Chrome from crashing.
        const categories = Object.entries(CATEGORY_LOADERS);
        for (const [, loader] of categories) {
            const module = await loader();
            for (const [key, value] of Object.entries(module)) {
                if (typeof value === 'function') {
                    this.iconMap.set(key, value as Type<IconBase>);
                }
            }
            // Yield to the main thread between each category
            await new Promise(r => setTimeout(r, 0));
            this.loadedCategories.update(n => n + 1);
        }
    }

    protected readonly filteredIcons = computed(() => {
        const query = this.searchQuery().toLowerCase();
        if (!query) return ALL_ICONS;
        return ALL_ICONS.filter((name) => name.toLowerCase().includes(query));
    });

    protected getIcon(name: string): Type<IconBase> | undefined {
        const style = this.selectedStyle();
        return this.iconMap.get(name + style);
    }

    protected trackByIconName(index: number, name: string): string {
        return name;
    }
}
