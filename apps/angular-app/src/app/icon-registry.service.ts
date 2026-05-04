import { Injectable, Type } from '@angular/core';

/**
 * Lazily resolves Solar icon component classes by global name (e.g. "ArrowLeftBold").
 *
 * Using a dynamic `import()` instead of a barrel `import * as solar` avoids the
 * NG0200 circular-dependency error that arises when the full icon barrel is
 * statically imported into the root application component.
 */
@Injectable({ providedIn: 'root' })
export class IconRegistryService {
    private cache = new Map<string, Type<unknown>>();

    /**
     * Synchronously returns an icon component class if it has already been loaded,
     * or `undefined` if the module hasn't been fetched yet.
     *
     * Call `preload()` once at startup to populate the cache.
     */
    get(globalName: string): Type<unknown> | undefined {
        return this.cache.get(globalName);
    }

    /**
     * Eagerly fetches the full Solar icon barrel and populates the cache.
     * Call this once from your root component's `ngOnInit`.
     */
    async preload(): Promise<void> {
        const solar = await import('@solar-icons/angular');
        for (const [key, value] of Object.entries(solar)) {
            if (typeof value === 'function') {
                this.cache.set(key, value as Type<unknown>);
            }
        }
    }
}
