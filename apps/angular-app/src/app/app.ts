import { Component, signal, computed, inject, OnInit, Type } from '@angular/core';
import { FormsModule } from '@angular/forms';

import { ALL_ICONS, STYLES, IconStyle } from './icon-list';
import { SolarDynamicIcon } from '@solar-icons/angular/lib'
import { IconBase } from '@solar-icons/angular/lib'

const CATEGORY_LOADERS: Record<string, () => Promise<Record<string, Type<IconBase>>>> = {
    'arrows':           () => import('@solar-icons/angular/arrows') as any,
    'arrows-action':    () => import('@solar-icons/angular/arrows-action') as any,
    'astronomy':        () => import('@solar-icons/angular/astronomy') as any,
    'building':         () => import('@solar-icons/angular/building') as any,
    'business':         () => import('@solar-icons/angular/business') as any,
    'call':             () => import('@solar-icons/angular/call') as any,
    'devices':          () => import('@solar-icons/angular/devices') as any,
    'faces':            () => import('@solar-icons/angular/faces') as any,
    'files':            () => import('@solar-icons/angular/files') as any,
    'folders':          () => import('@solar-icons/angular/folders') as any,
    'food':             () => import('@solar-icons/angular/food') as any,
    'hands':            () => import('@solar-icons/angular/hands') as any,
    'home':             () => import('@solar-icons/angular/home') as any,
    'it':               () => import('@solar-icons/angular/it') as any,
    'like':             () => import('@solar-icons/angular/like') as any,
    'list':             () => import('@solar-icons/angular/list') as any,
    'map':              () => import('@solar-icons/angular/map') as any,
    'medicine':         () => import('@solar-icons/angular/medicine') as any,
    'messages':         () => import('@solar-icons/angular/messages') as any,
    'money':            () => import('@solar-icons/angular/money') as any,
    'nature':           () => import('@solar-icons/angular/nature') as any,
    'notes':            () => import('@solar-icons/angular/notes') as any,
    'notifications':    () => import('@solar-icons/angular/notifications') as any,
    'parts':            () => import('@solar-icons/angular/parts') as any,
    'school':           () => import('@solar-icons/angular/school') as any,
    'search':           () => import('@solar-icons/angular/search') as any,
    'security':         () => import('@solar-icons/angular/security') as any,
    'settings':         () => import('@solar-icons/angular/settings') as any,
    'shopping':         () => import('@solar-icons/angular/shopping') as any,
    'sports':           () => import('@solar-icons/angular/sports') as any,
    'text-formatting':  () => import('@solar-icons/angular/text-formatting') as any,
    'time':             () => import('@solar-icons/angular/time') as any,
    'tools':            () => import('@solar-icons/angular/tools') as any,
    'ui':               () => import('@solar-icons/angular/ui') as any,
    'users':            () => import('@solar-icons/angular/users') as any,
    'video':            () => import('@solar-icons/angular/video') as any,
    'weather':          () => import('@solar-icons/angular/weather') as any,
};

@Component({
    selector: 'app-root',
    standalone: true,
    imports: [FormsModule, SolarDynamicIcon],
    templateUrl: './app.html',
    styleUrl: './app.css',
})
export class App implements OnInit {
    private readonly iconMap = new Map<string, Type<IconBase>>();
    
    protected readonly styles = STYLES;
    protected readonly selectedStyle = signal<IconStyle>('Bold');
    protected readonly iconSize = signal(32);
    protected readonly iconColor = signal('#f59e0b');
    protected readonly searchQuery = signal('');
    protected readonly loadedCategories = signal(0);
    protected readonly totalCategories = Object.keys(CATEGORY_LOADERS).length;

    async ngOnInit(): Promise<void> {
        const categories = Object.entries(CATEGORY_LOADERS);
        for (const [, loader] of categories) {
            const module = await loader();
            for (const [key, value] of Object.entries(module)) {
                if (typeof value === 'function') {
                    this.iconMap.set(key, value as Type<IconBase>);
                }
            }
            // Yield to browser
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
