import { Injectable, Type } from '@angular/core';

/**
 * Simple registry for icon components.
 * It just stores and retrieves component classes.
 */
@Injectable({ providedIn: 'root' })
export class IconRegistryService {
    private cache = new Map<string, Type<unknown>>();

    get(globalName: string): Type<unknown> | undefined {
        return this.cache.get(globalName);
    }

    /**
     * Registers a set of icons (e.g. from a category import).
     */
    register(icons: Record<string, any>): void {
        for (const [key, value] of Object.entries(icons)) {
            if (typeof value === 'function') {
                this.cache.set(key, value as Type<unknown>);
            }
        }
    }
}
