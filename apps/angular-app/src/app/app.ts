import { Component, signal, computed, Type } from '@angular/core';
import { FormsModule } from '@angular/forms';

import { ALL_ICONS, STYLES, IconStyle } from './icon-list';
import { DynamicIconComponent } from './dynamic-icon.component';



// Import all styled icons from the main package
// Icons are exported with global names: IconName + Style (e.g., ArrowLeftBold, ArrowLeftLinear)
import * as solar from '@solar-icons/angular';

// Type for icon component
type IconComponentType = Type<unknown>;

// Get icon component by name and style
function getIconComponent(name: string, style: IconStyle): IconComponentType | undefined {
    // Icons are exported with global names: IconName + Style (e.g., ArrowLeftBold)
    const globalName = name + style;
    return (solar as Record<string, unknown>)[globalName] as IconComponentType | undefined;
}

@Component({
    selector: 'app-root',
    standalone: true,
    imports: [FormsModule, DynamicIconComponent],
    templateUrl: './app.html',
    styleUrl: './app.css',
})
export class App {
    protected readonly styles = STYLES;
    protected readonly selectedStyle = signal<IconStyle>('Bold');
    protected readonly iconSize = signal(32);
    protected readonly iconColor = signal('#f59e0b'); // amber-500
    protected readonly searchQuery = signal('');

    // Filtered icons based on search
    protected readonly filteredIcons = computed(() => {
        const query = this.searchQuery().toLowerCase();
        if (!query) return ALL_ICONS;
        return ALL_ICONS.filter((name) => name.toLowerCase().includes(query));
    });

    // Get icon component by name for current style
    protected getIcon(name: string): IconComponentType | undefined {
        return getIconComponent(name, this.selectedStyle());
    }

    // Track icons by name + style for proper re-rendering
    protected trackByIconName(index: number, name: string): string {
        return name + this.selectedStyle();
    }
}
