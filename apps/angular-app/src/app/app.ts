import { Component, signal, computed, Type, inject, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';

import { ALL_ICONS, STYLES, IconStyle } from './icon-list';
import { DynamicIconComponent } from './dynamic-icon.component';
import { IconRegistryService } from './icon-registry.service';

@Component({
    selector: 'app-root',
    standalone: true,
    imports: [FormsModule, DynamicIconComponent],
    templateUrl: './app.html',
    styleUrl: './app.css',
})
export class App implements OnInit {
    private readonly registry = inject(IconRegistryService);

    protected readonly styles = STYLES;
    protected readonly selectedStyle = signal<IconStyle>('Bold');
    protected readonly iconSize = signal(32);
    protected readonly iconColor = signal('#f59e0b'); // amber-500
    protected readonly searchQuery = signal('');
    protected readonly loaded = signal(false);

    async ngOnInit(): Promise<void> {
        await this.registry.preload();
        this.loaded.set(true);
    }

    // Filtered icons based on search
    protected readonly filteredIcons = computed(() => {
        const query = this.searchQuery().toLowerCase();
        if (!query) return ALL_ICONS;
        return ALL_ICONS.filter((name) => name.toLowerCase().includes(query));
    });

    // Get icon component by name for current style
    protected getIcon(name: string): Type<unknown> | undefined {
        return this.registry.get(name + this.selectedStyle());
    }

    // Track icons by name + style for proper re-rendering
    protected trackByIconName(index: number, name: string): string {
        return name + this.selectedStyle();
    }
}
