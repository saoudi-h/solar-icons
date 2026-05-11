import { InjectionToken, type Provider, type Type } from '@angular/core'
import type { IconBase } from './icon-base'

/**
 * A record of registered icon components.
 */
export type SolarIconRegistry = Record<string, Type<IconBase> | undefined>

/**
 * Injection token for the icon registry.
 */
export const SOLAR_ICON_REGISTRY = new InjectionToken<SolarIconRegistry>('SOLAR_ICON_REGISTRY')

/**
 * Helper to provide a set of icons for name-based lookup.
 *
 * @example
 * providers: [
 *   provideSolarIcons({ HeartBold, StarBold })
 * ]
 */
export function provideSolarIcons(registry: Record<string, Type<IconBase>>): Provider {
    return {
        provide: SOLAR_ICON_REGISTRY,
        useValue: registry,
    }
}
