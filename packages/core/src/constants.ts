import metadata from './metadata.json' with { type: 'json' }
import type { Metadata } from './types'

const _meta = metadata as Metadata

export const STYLES = ['Broken', 'Outline', 'Linear', 'Bold', 'LineDuotone', 'BoldDuotone'] as const
export type Style = (typeof STYLES)[number]

export const CATEGORIES = Object.keys(_meta.categories) as (keyof Metadata['categories'])[]
export type Category = (typeof CATEGORIES)[number]
