import type { Type } from '@angular/core';
import type { IconBase } from './icon-base';
import type { SolarIconName } from './all-icons.types';

/**
 * Type representing a Solar Icon component class.
 */
export type IconComponent = Type<IconBase>;

/**
 * Re-export the global icon name type for convenience.
 */
export type { SolarIconName };
