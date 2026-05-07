import { Component, signal, computed, OnInit, Type, ChangeDetectionStrategy } from '@angular/core';
import { FormsModule } from '@angular/forms';

import { ALL_ICONS, STYLES, IconStyle } from './icon-list';
import { provideSolarIcons, SolarDynamicIcon } from '@solar-icons/angular'
import { MoonBold, SunBold } from '@solar-icons/angular'

const CATEGORY_LOADERS: Record<string, () => Promise<any>> = {
    'arrows':           () => import('@solar-icons/angular/arrows'),
    'arrows-action':    () => import('@solar-icons/angular/arrows-action'),
    'astronomy':        () => import('@solar-icons/angular/astronomy'),
    'building':         () => import('@solar-icons/angular/building'),
    'business':         () => import('@solar-icons/angular/business'),
    'call':             () => import('@solar-icons/angular/call'),
    'devices':          () => import('@solar-icons/angular/devices'),
    'faces':            () => import('@solar-icons/angular/faces'),
    'files':            () => import('@solar-icons/angular/files'),
    'folders':          () => import('@solar-icons/angular/folders'),
    'food':             () => import('@solar-icons/angular/food'),
    'hands':            () => import('@solar-icons/angular/hands'),
    'home':             () => import('@solar-icons/angular/home'),
    'it':               () => import('@solar-icons/angular/it'),
    'like':             () => import('@solar-icons/angular/like'),
    'list':             () => import('@solar-icons/angular/list'),
    'map':              () => import('@solar-icons/angular/map'),
    'medicine':         () => import('@solar-icons/angular/medicine'),
    'messages':         () => import('@solar-icons/angular/messages'),
    'money':            () => import('@solar-icons/angular/money'),
    'nature':           () => import('@solar-icons/angular/nature'),
    'notes':            () => import('@solar-icons/angular/notes'),
    'notifications':    () => import('@solar-icons/angular/notifications'),
    'parts':            () => import('@solar-icons/angular/parts'),
    'school':           () => import('@solar-icons/angular/school'),
    'search':           () => import('@solar-icons/angular/search'),
    'security':         () => import('@solar-icons/angular/security'),
    'settings':         () => import('@solar-icons/angular/settings'),
    'shopping':         () => import('@solar-icons/angular/shopping'),
    'sports':           () => import('@solar-icons/angular/sports'),
    'text-formatting':  () => import('@solar-icons/angular/text-formatting'),
    'time':             () => import('@solar-icons/angular/time'),
    'tools':            () => import('@solar-icons/angular/tools'),
    'ui':               () => import('@solar-icons/angular/ui'),
    'users':            () => import('@solar-icons/angular/users'),
    'video':            () => import('@solar-icons/angular/video'),
    'weather':          () => import('@solar-icons/angular/weather'),
};

@Component({
    selector: 'app-root',
    standalone: true,
    imports: [FormsModule, SolarDynamicIcon, SunBold],
    providers: [
        provideSolarIcons({ MoonBold })
    ],
    templateUrl: './app.html',
    styleUrl: './app.css',
    changeDetection: ChangeDetectionStrategy.OnPush
})
export class App implements OnInit {
    protected readonly icon = 'MoonBold';
    protected readonly icon2 = SunBold;
    
    protected readonly styles = STYLES;
    protected readonly selectedStyle = signal<IconStyle>('Bold');
    protected readonly iconSize = signal(32);
    protected readonly iconColor = signal('#f59e0b');
    protected readonly searchQuery = signal('');
    protected readonly loadedCategories = signal(0);
    protected readonly totalCategories = Object.keys(CATEGORY_LOADERS).length;
    
    private readonly iconMap = signal<Map<string, Type<any>>>(new Map());

    async ngOnInit(): Promise<void> {
        const categories = Object.entries(CATEGORY_LOADERS);
        const map = new Map<string, Type<any>>();
        
        for (const [, loader] of categories) {
            const module = await loader();
            for (const [key, value] of Object.entries(module)) {
                if (typeof value === 'function') {
                    map.set(key, value as Type<any>);
                }
            }
            // Batch update every few categories to reduce re-renders
            this.iconMap.set(new Map(map));
            this.loadedCategories.update(n => n + 1);
            await new Promise(r => setTimeout(r, 0));
        }
    }

    protected readonly displayIcons = computed(() => {
        const query = this.searchQuery().toLowerCase();
        const style = this.selectedStyle();
        const map = this.iconMap();
        
        const filteredNames = query 
            ? ALL_ICONS.filter(name => name.toLowerCase().includes(query))
            : ALL_ICONS;

        const result: { name: string; component: Type<any> }[] = [];
        for (const name of filteredNames) {
            const component = map.get(name + style);
            if (component) {
                result.push({ name, component });
            }
        }
        return result;
    });

    protected trackByIconName(index: number, item: { name: string }): string {
        return item.name;
    }
}
