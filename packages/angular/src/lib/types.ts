import type { Type } from '@angular/core'
import type { SolarIconName } from './all-icons.types'
import type { IconBase } from './icon-base'

/**
 * Type representing a Solar Icon component class.
 */
export type IconComponent = Type<IconBase>

/**
 * Re-export the global icon name type for convenience.
 */
export type { SolarIconName }
